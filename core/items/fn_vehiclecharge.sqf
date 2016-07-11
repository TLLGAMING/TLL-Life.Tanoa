/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_handle","_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad object
if(_vehicle getVariable["chargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
if(_vehicle getVariable["safe_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
if(!([false,"vehiclecharge",1] call life_fnc_handleInv)) exitWith {}; //Error?

_vehicle setVariable["chargeplaced",true,true];
[[1,localize "STR_ISTR_Blast_Placed"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
hint localize "STR_ISTR_Blast_KeepOff";
_handle = [] spawn life_fnc_demoChargeTimer;
[[],"life_fnc_demoChargeTimer",west,false] spawn life_fnc_MP;

waitUntil {scriptDone _handle};
sleep 3.9;
if(!(_vehicle getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed"};

_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL _vehicle select 0, getPosATL _vehicle select 1, (getPosATL _vehicle select 2)+0.5];
_vehicle setVariable["chargeplaced",false,true];
_vehicle setVariable["safe_open",true,true];

hint localize "STR_ISTR_Blast_Opened";