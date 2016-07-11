/*
	Author: Jason_000
	filename: fn_radar.sqf
	Description: Allows the position of players to be shown for a small time.
*/
if (life_cash > 99999) then
{
	life_cash = life_cash - 100000;
	hint "100,000 has been removed to hack the police";
	sleep 2;


//Sets up the Progress Bar
_curTar = cursorTarget;
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2...  (1%1)","%",(localize "STR_pAct_Hack")];
_progress progressSetPosition 0.01;
_cP = 0.01;

	while{true} do {
		if (_cP >= 1) exitWith {};
		if (_unit distance player > 5) exitWith {hint "You ran too far away!";};
		sleep 0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3...  (%2%1)","%",round(_cP * 100),(localize "STR_pAct_Hack")];
	};
	5 cutText ["","PLAIN"];

hint "You wont have long before the police notice you have hacked their mainframe!";
_time = 0;

life_markers = !life_markers;
if(life_markers) then {
	PlayerMarkers = [];
	FinishedLoop = false;
	hint "You have hacked the po po";
	while{life_markers} do {
	_time = _time + 1;
		{
			if !(_x in allUnits) then {
				deleteMarkerLocal str _x;
			};
		} forEach PlayerMarkers;
		PlayerMarkers = [];
		{
			if(alive _x && isplayer _x) then {
				deleteMarkerLocal str _x;
				_pSee = createMarkerLocal [str _x,getPos _x];
				_pSee setMarkerTypeLocal "mil_triangle";
				_pSee setMarkerPosLocal getPos _x;
				_pSee setMarkerSizeLocal [1,1];
				_pSee setMarkerTextLocal format['%1',_x getVariable["realname",name _x]];
				_pSee setMarkerColorLocal ("ColorRed");
				PlayerMarkers = PlayerMarkers + [_x];
		};
	} forEach allUnits;
		
		if (_time == 50) then {life_markers = false; //50 = 10 seconds
			FinishedLoop = true;
			waitUntil{FinishedLoop};
			{
				deleteMarkerLocal str _x;
				hint "The police have shut off the connection!";
			} forEach PlayerMarkers;
		};
		
		
	sleep 0.2;
		};
	};
}
else
{
	hint "You do not have 100,000 for this!"
};