_player = _this select 0;
_weap = currentWeapon _player;
_ammo = _player ammo _weap;

if (_weap == "Taser_26") then {
if (_ammo > 0) then {
_player setAmmo ["Taser_26",0];
};
};