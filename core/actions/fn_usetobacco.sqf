/*	File: fn_usetobacco.sqf	Author: jakesmithey	Description:	An effect for smoking a cigarette.*/

cutText ["You open a packet of cigarettes and grab one..","PLAIN",2];
sleep 3;
cutText ["Mmmm... I'll enjoy this smooth, refreshing cigarette.","PLAIN",2];
_smoke = "SmokeShell" createVehicle position player;

if (vehicle player != player) then
    {
    _smoke attachTo [vehicle player, [-0.6,-1,0]];
    }
        else
    {
     _smoke attachTo [player, [0,-0.1,1.5]];

};