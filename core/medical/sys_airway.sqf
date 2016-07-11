// EXAMPLE FOR ADDING AN OPTION
private ["_unit"];
_unit = _this select 0;

_airwayStatus = _unit getvariable ["example_airway_status",100];

if (_airwayStatus < 50) then {
	
	// conditions check to see whatever or not someone should die
	if (_airwayStatus < 25 || (_airwayStatus < 50 && random(100) <1)) then {
		_unit call cms_fnc_setDead;
	};
} else {
	
};