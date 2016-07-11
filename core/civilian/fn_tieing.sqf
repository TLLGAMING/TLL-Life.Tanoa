/*

	Description:
	tieing
*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (6 * 90)};
		
		if(!(player getVariable["tied",FALSE])) exitWith {};
		if(!([independent,getPos player,30] call life_fnc_nearUnits) && (player getVariable["tied",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];
			player setVariable["Escorting",FALSE,TRUE];
			player setVariable["transporting",false,true];
			player setVariable["tied",FALSE,TRUE];

			detach player;
			titleText["You managed to wriggle free.","PLAIN"];
		};
	};
};

titleText[format["%1 tied you up.",name _civ],"PLAIN"];
if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; };	

player switchMove "";

while {player getVariable "tied"} do
{

	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "tied") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["restrained",false,true];
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		player setVariable ["tied",false,true];
		detach _player;
	};

	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player setVariable ["restrained",false,true];
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	player setVariable ["tied",false,true];;
	detach player;
};