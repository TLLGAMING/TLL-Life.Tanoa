/*	File: fn_unziptie.sqf by Tom "Nitelite" Springfield */

private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["ziptied",FALSE])) exitWith {};
if(life_inv_scissors < 1) exitWith { hint "You do not have any scissors!";};

if(life_inv_zipties > 0) then {
    life_inv_zipties = life_inv_zipties + 1;
    } else {
    [true,"zipties",1] call life_fnc_handleInv;
};

_unit setVariable["ziptied",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
[[0,"STR_NOTF_Unrestrain",true,[_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;