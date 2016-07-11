/*
    File: fn_sellCargo.sqf
    Author: Matthias Bun

    Description:
    Sells and delets the cargo
*/
private["_cargo","_price"];
	_cargo = nearestObjects[getPos player,["A3L_MoneyPile"],8] select 0;
	_price= 10000;

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["A3L_cannabis"],8] select 0;
	_price= 10000;
};
if(isNil "_cargo") exitWith {};

	life_cash = life_cash + _price;
    titleText["You have sold the cargo","PLAIN"];
    deleteVehicle _cargo;