/*

    Edited By: RIB    
    
*/
private["_test","_obj"];
if(!license_civ_diystore) exitWith {hint "You need the license"};
if(_obj distance cursorTarget > 40) exitWith {};
[[0,format["The DIY Store isopen for business"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 1;
[[0,format["%1 Says come and grab some deals!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

