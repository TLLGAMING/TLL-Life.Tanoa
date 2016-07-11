/*
	File: fn_civpulloutAction.sqf

	Pulls all players from a vehicle
*/
private["_crew"];
_crew = crew cursorTarget;

_randycunt = 3;
_num = 1;
_myposy = getPos player;
while {_randycunt > _num} do {
_randycunt = _randycunt - 1;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 0.5;
};
if( _unit distance _myposy > 7 ) then { 
		titleText["Target to far away!.","PLAIN"];
} else {
	if(side _x == independent || side _x == west || side _x == civilian) then
	{
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	};
} foreach _crew;