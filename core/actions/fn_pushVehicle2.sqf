/*
	File: push the vehicle brahs

*/

_vehicle = cursortarget; 
_vehicle allowdamage false;
_vel = velocity _vehicle;  
_dir = direction player; 
_speed = 5;
_vehicle setVelocity [   (_vel select 0) + (sin _dir * _speed),    (_vel select 1) + (cos _dir * _speed),    (_vel select 2)  ];
sleep 1;
_vehicle allowdamage true;