/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_mauer"];
_mauer = nearestObjects[getPos player,["Land_CncWall1_F"],8] select 0;
if(isNil "_mauer") exitWith {};

if(([true,"mauer",1] call life_fnc_handleInv)) then
{
    titleText["You've removed the wall.","PLAIN"];
    player removeAction life_action_mauerPickup;
    life_action_mauerPickup = nil;
    deleteVehicle _mauer;
};