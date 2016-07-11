/*
    File: fn_packupbarrier.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed cone.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_long"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"barrier",1] call life_fnc_handleInv)) then
{
    titleText["You've removed the barrier.","PLAIN"];
    player removeAction life_action_barrierPickup;
    life_action_barrierPickup = nil;
    deleteVehicle _barrier;
};