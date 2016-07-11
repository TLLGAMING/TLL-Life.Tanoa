/*
	File: fn_robgasStation.sqf
	Author: RIB
	
*/
private["_robber","_timer","_funds"];

_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = 40000 + round(random 100000);

if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "You were to stay within 10m of the target!"};

_timer = time + (20 * 60); //Default timer is 20 minutes to rob.
titleText["Robbing the rebels...","PLAIN"];
[[2,"<> A REBEL RAID IS ON GOING STAY AWAY OR BE SHOT<>!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
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
		hint "You went to far from the pole, the robbery has failed!";
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
		hint format["You have successfully raided the rebel base!\n\nTo avoid the rebels tracing you, your bank card will not work for 8 minutes",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 480;
			life_use_atm = true;
		};		
		_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?
if(isNil "life_session_station") then {life_session_station = false;};
if(life_session_station) exitWith {hint "You have already raided the rebels wait 20 minutes.";};


life_cash = life_cash + _funds; //Self explanatory
sleep (30 + random(180));
};//Close the if statement
	
	};	
};