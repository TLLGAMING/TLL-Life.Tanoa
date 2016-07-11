/*
	File: fn_speedBomb.sqf
	Author: Fuzz
	
	Description:
	Attaches a speed bomb to a vehicle.
*/
private["_unit"];
_unit = cursorTarget;
 
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "You cannot add a turbo to this."};
if(player distance _unit > 7) exitWith {hint "You need to be within 7 feet!"};
if(!([false,"turbo",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
 
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["You are not in range!","PLAIN"];};
 
titleText["You have attached a turbo to this vehicle.","PLAIN"];
life_experience = life_experience + 25; 
 
[_unit] spawn
{
	_veh = _this select 0;
	waitUntil {(speed _veh) > 90};
	hint "turbo has been made active!";
	{ [[2,"Turbo kicks in around 90kph!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	waitUntil {(speed _veh) < 110};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	playsound "turbo";
	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle; 
	_speed = 20;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	
};