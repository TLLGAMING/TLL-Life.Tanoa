/*
	File: fn_robgasStation.sqf
	Author: RIB
	
*/
if((west countSide playableUnits) < 4) exitWith {hint "There needs to be 4 or more cops online to use the Laptop."};
private["_robber","_timer","_funds"];

_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = 30000 + round(random 70000);

if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "You were to stay within 10m of the target!"};

_timer = time + (7 * 60); //Default timer is 20 minutes to rob.
titleText["HACKING THE BANK...","PLAIN"];
[[2,"<> LAKESIDE BANK IS BEING ROBBED<>!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
//[[_vault],"life_fnc_bankalarmsound",nil,true] spawn life_fnc_MP; Custom line, delete or keep commented out.

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = [(_timer - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
	hintSilent format["You need to stay within 25m!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 25) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	sleep 0.1;
};

switch(true) do
{
	case (_toFar):
	{
		hint "You went to far from the laptop, the robbery has failed!";
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
		hint format["You have successfully hacked the bank!\n\nTo avoid the cops and rebels tracing you, your bank card will not work for 8 minutes",[_funds] call life_fnc_numberText];
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
		hint format["The Lakeside Bank was hacked and money was stolen $%1",_funds]; //Give them a nice message		
};//Close the if statement
	
	};	
};