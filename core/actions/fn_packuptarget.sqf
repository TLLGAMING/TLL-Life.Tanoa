/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_target"];
_target = nearestObjects[getPos player,["TargetP_Inf3_Acc2_F"],8] select 0;
if(isNil "_target") exitWith {};

if(([true,"target",1] call life_fnc_handleInv)) then
{
    titleText["You've removed the target.","PLAIN"];
    player removeAction life_action_targetPickup;
    life_action_targetPickup = nil;
    deleteVehicle _target;
};