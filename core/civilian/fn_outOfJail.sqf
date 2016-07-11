/*   Author:  Panda  Profile: http://steamcommunity.com/profiles/76561198145366418/  File: fn_outOfJail.sqf  Description: Sets old uniform when released.*/

private["_releaseMarker"];
_releaseMarker = getMarkerPos "jail_release";
removeUniform player;
if(player distance (_releaseMarker) < 10) then
{
	player addUniform life_pandaPrison_uniform;	player addBackpack life_pandaPrison_backpack;
	player addHeadgear life_pandaPrison_headgear;	player addVest life_pandaPrison_vest;
	["Reset",100] call fnc_battery;
	hint "You have been released, have a nice day."
};