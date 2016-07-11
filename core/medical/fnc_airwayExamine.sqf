private ["_caller","_unit"];
_caller = _this select 0;
_unit = _this select 1;

hintsilent "You check this persons airway";
sleep (2 + round(random(5)));	
	_output = "This person is not breathing!";
	_airway = [_unit,"example_airway_status"] call cms_fnc_getvariable;
	if (_airway >= 50) then {
		_output = "This person's breathing is normal.";
	};
hintsilent format["%1",_output];