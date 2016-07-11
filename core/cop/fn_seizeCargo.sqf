/*
    File: fn_sellCargo.sqf
    Author: Matthias Bun

    Description:
    seizes the Cargo
*/
private["_cargo","_price"];
	_cargo = nearestObjects[getPos player,["Land_Cargo20_brick_red_F"],8] select 0;
	_price= 1000000;
	
if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_CargoBox_V1_F"],8] select 0;
	_price= 300000;
};

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_MetalBarrel_F"],8] select 0;
	_price= 50000;
};

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_BarrelSand_F"],8] select 0;
	_price= 50000;
};
if(isNil "_cargo") exitWith {};

	life_cash = life_cash + _price;
    titleText["Du hast den container Verkauft","PLAIN"];
    deleteVehicle _cargo;