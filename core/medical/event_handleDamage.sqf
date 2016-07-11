private ["_unit","_selectionName","_amountOfDamage","_sourceOfDamage","_typeOfProjectile","_airway"];
_unit = _this select 0;
_selectionName = _this select 1;
_amountOfDamage = _this select 2;
_sourceOfDamage = _this select 3;
_typeOfProjectile = _this select 4;

if (_selectionName == "Torso") then {
	_airway = _unit getvariable ["example_airway_status",100];
	_airway = _airway - random(_amountOfDamage*100);
	[_unit,"example_airway_status",_airway] call cms_fnc_setVariable;
};