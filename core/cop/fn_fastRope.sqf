/*
	File: fn_fastRope.sqf

	Description:
	Handles the action of fastroping from helicopters.
*/

player action ["Eject", vehicle player];
[] spawn
{
	while {(getpos player) select 2 > 1} do
	{
		player setvelocity [0,0,-6];
	};
};