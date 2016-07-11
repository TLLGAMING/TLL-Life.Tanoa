/*
    File: fn_weed.sqf
    Author: Kuchiha

    Description:
    Marijuana effects. XXXXXXXXXX$420$XXXXXXXXXX
*/

//Close inventory
closeDialog 0;


//Smoke
_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then {
    _smoke attachTo [vehicle player, [-0.6,-1,0]];
} else {
    _smoke attachTo [player, [0,-0.1,1.5]];
};


//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;