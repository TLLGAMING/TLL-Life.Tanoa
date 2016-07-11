/*
    booooom!
    Created By: TAW_Tonic
    Edited By: RIB    
    
*/
private["_test","_obj","_boom3"];
if((west countSide playableUnits) < 4) exitWith {hint "There needs to be 4 or more cops online"};
if(life_inv_jailblueprint < 1) exitWith { hint "You need the jail blue prints to know where to trigger";};
if(_obj distance cursorTarget > 40) exitWith {};
[[0,format["Prison security breached"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 1;
[[0,format["%1 is breaking into the prison!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getMarkerPos "_boom3");
_test setVelocity [100,0,0];
