private ["_treatingPerson","_injuredPerson","_selectionName","_removeItem"];
_treatingPerson = _this select 0;
_injuredPerson = _this select 1;
_selectionName = _this select 2;
_removeItem = _this select 3;


if (!([_treatingPerson,_removeItem] call cms_fnc_hasCMSItem)) exitwith {
	[_treatingPerson,format["You have no %1 ",_removeItem]] call cms_fnc_sendHintTo;
};	

_part =	switch (_selectionName) do
	{
		case "Hands": 
		{2};
		case "Head": 
		{0};
		case "Body": 
		{1};
		case "Legs": 
		{3};
		default 
		{0};
	};
	
	if (_part != 1) exitwith {
		[_treatingPerson,"You have to select the torso to be able to perform this treatment"] call cms_fnc_sendHintTo;
	};
	if (vehicle _treatingPerson == _treatingPerson && (vehicle _injuredPerson == _injuredPerson)) then {
		["cms_broadcastAnim", [_treatingPerson,"AinvPknlMstpSlayWrflDnon_medic"]] call CBA_fnc_globalEvent;
	};
	
	_name = _injuredPerson getvariable ["cms_nameUnit", (name _injuredPerson)];
	
	[_injuredPerson,((name _treatingPerson) + " is treating your airway")] call cms_fnc_sendHintTo;
	_messageSend = format ["You start treating the airway from %1", _name];
	[_treatingPerson,_messageSend] call cms_fnc_sendHintTo;

	_injuredPerson setvariable ["example_airway_status",100];

	["cms_useCMSItemLocal", [_treatingPerson, _removeItem]] call CBA_fnc_whereLocalEvent;
	[_treatingPerson,"Treatment Completed"] call cms_fnc_sendHintTo;
	
	
	