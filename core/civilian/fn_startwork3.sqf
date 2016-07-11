/*
	File: fn_startwork.sqf
	Author: RIB
	
*/
private["_robber","_timer","_funds"];

_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = 4000 + round(random 11000);

if(player distance _vault > 20) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "You were to stay within 20m of the target!"};

_timer = time + (12 * 60); //Default timer is 20 minutes to rob.
titleText["RIBS Tuning open for business...","PLAIN"];
[[2,"<> RIBS Tuning is now open"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = [(_timer - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
	hintSilent format["You need to stay within 20m!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 20) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	sleep 0.1;
};

switch(true) do
{
	case (_toFar):
	{
		hint "You went to far from the register";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "Because you died the people wont get there food.";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "You were tazed, you have now been fired";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["You have successfully completed your shift at RIBS Tuning\n\nEnjoy the rest of your day",[_funds] call life_fnc_numberText];
	];

	_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?
if(isNil "life_session_station") then {life_session_station = false;};
if(life_session_station) exitWith {hint "You have already finished your shift wait 20 minutes.";};

life_cash = life_cash + _funds; //Self explanatory
sleep (30 + random(180));
};//Close the if statement
	
	};	
};