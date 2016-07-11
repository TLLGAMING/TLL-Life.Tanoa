/*

    Edited By: RIB    
    
*/
private["_test","_obj"];
if(!license_civ_gundealer) exitWith {hint "You need the license"};
if(_obj distance cursorTarget > 40) exitWith {};
[[0,format["AMMO 24 is open for business"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 1;
[[0,format["%1has just opened Ammo24!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

