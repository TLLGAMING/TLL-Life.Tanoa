/*   Author:  Panda  Profile: http://steamcommunity.com/profiles/76561198145366418/  File: fn_inJail.sqf  Description: Sets Custom Loadout when in Jail.*/

//Lets Save His Clothing for Later. (These are our Life Variables for old clothing)
life_pandaPrison_backpack = backpack player;
life_pandaPrison_uniform = uniform player;
life_pandaPrison_headgear = headgear player;
life_pandaPrison_vest = vest player;sleep 1;

//Now strip him.
removeUniform player;
removeBackpack player;
removeHeadgear player;
removeVest player;

//Add our Prison Uniform.
player addUniform "A3L_Prisoner_Outfit";

//Remove phone battery.
["Reset",0] call fnc_battery;

//Add food and drink Also check if he dosent have food and drink already to stop Multiple donuts + coffee been given out.
if(life_inv_donuts < 3) then
{
	life_inv_donuts = life_inv_donuts + 5;
};
if(life_inv_coffee < 3) then
{
	life_inv_coffee = life_inv_coffee + 5;
};

[] call life_fnc_customTextures;