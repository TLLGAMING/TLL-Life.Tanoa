/*
    File: fn_mauer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_target"];
_target = "TargetP_Inf3_Acc2_F" createVehicle [0,0,0];
_target attachTo[player,[0,5.5,0.2]];
_target setDir 90;
_target setVariable["item","targetDeployed",true];

life_action_targetDeploy = player addAction["<t color='#00FF00'>Place Target</t>",{if(!isNull life_target) then {detach life_target; life_target = ObjNull;}; player removeAction life_action_targetDeploy; life_action_targetDeploy = nil;},"",999,false,false,"",'!isNull life_target'];
life_target = _target;
waitUntil {isNull life_target};
if(!isNil "life_action_targetDeploy") then {player removeAction life_action_targetDeploy;};
if(isNull _target) exitWith {life_target = ObjNull;};
_target setPos [(getPos _target select 0),(getPos _target select 1),0];
_target allowDamage false;