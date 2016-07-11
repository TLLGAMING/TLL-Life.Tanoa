/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	nos RIB
*/
playSound "nos";
_vehicle = vehicle player; //your vehicle
_vel = velocity _vehicle; //current velocity of car1
_dir = direction _vehicle; //current direction of car1
_speed = 20; //how much you want to add speed for the vehicle
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];