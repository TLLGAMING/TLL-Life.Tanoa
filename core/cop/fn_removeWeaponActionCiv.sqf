/*
	Author Scotty from Realmenofgenius
	11/01/2015

*/
private["_hgItems","_holder","_items","_pwItems","_safeItems","_swItems","_weps"];

_safeItems = ["FirstAidKit","ItemRadio","ItemMap","ItemCompass","ItemGPS","ItemWatch","NVGoggles","Rangefinder","Binocular"];

player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";
[[player,"amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon"],"life_fnc_animSync",true,false] spawn bis_fnc_mp;


0 cutText["Removing Weapons.","PLAIN"];

//--Get weapons, attachments and magazines of player
_weps = [];

_pwItems = primaryWeaponItems cursortarget;
_swItems = secondaryWeaponItems cursortarget;
_hgitems = handGunItems cursortarget;

_mags = magazinesAmmoFull cursortarget;

//--Now remove stuff

{cursortarget removeMagazine _x} foreach (magazines cursortarget);

if(primaryWeapon cursortarget != "") then
{
	_weps pushBack (primaryWeapon cursortarget);
	cursortarget removeWeapon (primaryWeapon cursortarget);

};
		
if(secondaryWeapon cursortarget != "") then
{
	_weps pushBack (secondaryWeapon cursortarget);
	cursortarget removeWeapon (secondaryWeapon cursortarget);

};
		
if(handgunWeapon cursortarget != "") then
{
	_weps pushBack (handgunWeapon cursortarget);
	cursortarget removeWeapon (handgunWeapon cursortarget);
};

{
	_items = _x;
	{
		cursortarget unassignItem _x;
		cursortarget removeItem _x;
	}forEach _items;
	
}forEach [_hgItems, _pwItems, _swItems];

//--Anything in backpack, vest etc we forgot? Make sure we don't include rangefinders etc. 

{
	if (!(_x in _safeItems)) then
	{
		cursortarget removeItem _x;
		_weps pushBack _x;
	};

}forEach (weapons cursortarget);


//-- Create holder and add everything to it.
 _holder = createVehicle [ "GroundWeaponHolder", getPosATL cursortarget, [], 0, "CAN_COLLIDE" ];
 
{
	_holder addWeaponCargoGlobal [_x,1];
}forEach _weps;

{
	_holder addMagazineCargoGlobal [_x select 0,1];
}forEach _mags;

{
	_items = _x;
	{
		_holder addItemCargoGlobal [_x,1];
	}forEach _items;
}forEach [_hgItems, _pwItems, _swItems];

cursortarget say3D "Patdown";
//--Save the player's updated gear.

[3] spawn SOCK_fnc_updatePartial;