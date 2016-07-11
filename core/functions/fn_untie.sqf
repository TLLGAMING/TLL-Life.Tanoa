/*
	File: fn_untie.sqf
*/
private["_unit"];
_unit = cursorTarget;
if((life_action_inUse) || (player getVariable "restrained") || (player getVariable "restrained")) exitWith { 
titleText["You can not do that.","PLAIN"];
titleFadeOut 5;
}; 
if(isNull _unit || !(_unit getVariable "restrained")) exitWith {};

_unit setVariable["restrained",false,true];
//[[0,format["%1 was released by %2.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;