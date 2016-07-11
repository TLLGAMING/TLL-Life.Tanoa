/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_handle","_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (currentWeapon player == "") exitWith { hint "you need a extinguisher" };
if(!([false,"hose",1] call life_fnc_handleInv))  exitWith {};
if(isNull _vehicle) exitWith {};
if(_vehicle isKindOf "Man") exitWith {};

_vehicle setVariable["chargeplaced",true,true];
playSound "fire";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
[[2,"Lakeside Fire Brigade to the rescue!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
deleteVehicle cursorTarget;