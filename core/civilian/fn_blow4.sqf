/*
    booooom!
    Created By: TAW_Tonic
    Edited By: RIB    
    
*/
private["_test","_obj","_boom4"];
if(_obj distance cursorTarget > 40) exitWith {};
[[0,format["The Police have sent a vehicle to the crusher"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 1;
[[0,format["%1 has just blown up a vehicle!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getMarkerPos "_boom4");
_test setVelocity [100,0,0];
