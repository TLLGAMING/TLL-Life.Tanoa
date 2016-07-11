/*
	File: fn_robgasStation.sqf
	Author: RIB
	
*/
private["_robber","_timer","_funds"];

_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = 5000 + round(random 100000);

if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "You were to stay within 10m of the target!"};
if((west countSide playableUnits) < 3) exitWith {hint "There needs to be 3 or more cops online to rob the reserve."};
_timer = time + (20 * 60); //Default timer is 20 minutes to rob.
titleText["ROBBING THE RESERVE...","PLAIN"];
[[2,"<> LAKESIDE FEDERAL IS BEING ROBBED<>!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
//[[_vault],"life_fnc_bankalarmsound",nil,true] spawn life_fnc_MP; Custom line, delete or keep commented out.

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = [(_timer - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
	hintSilent format["You need to stay within 10m!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 10) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	sleep 0.1;
};

switch(true) do
{
	case (_toFar):
	{
		hint "You went to far from the VAULT, the robbery has failed!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "Because you died the robbery over failed.";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "You were tazed, the robbery has failed!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["You have successfully robbed the reserve!\n\nTo avoid the cops and rebels tracing you, your bank card will not work for 8 minutes",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 480;
			life_use_atm = true;
		};		
		_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?
if(isNil "life_session_station") then {life_session_station = false;};
if(life_session_station) exitWith {hint "You have already robbed the bank wait 20 minutes.";};

life_cash = life_cash + _funds; //Self explanatory
		hint format["Lakeside reserve was robbed and money was stolen $%1",_funds]; //Give them a nice message		
};//Close the if statement
	
	};	
};