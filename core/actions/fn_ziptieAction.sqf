/*	File: fn_ziptieAction.sqf	Author: Tom "Niteltie" Springfield		Description:	Retrains the target with zipties.*/

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if((_unit getVariable "ziptied")) exitWith {};
if(playerSide == west && side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if(life_inv_zipties < 1) then {
    hint "You have no zipties";
    } else {
    life_inv_handcuffs = life_inv_handcuffs - 1;
    _unit say3D "zipties";
    _unit setVariable["ziptied",true,true];
    hint "The target is now ziptied";
    [[player], "life_fnc_ziptie", _unit, false] spawn life_fnc_MP;
    [[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;};