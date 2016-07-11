/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	// Everyone can use the bicycle shop
	case "bicycle_shop": {_ret = true;};

	case "med_shop": {_ret = true;};
	case "dezzie_car": {_ret = license_civ_driver;};
	case "kart_shop": {_ret = license_civ_driver;};
	case "medic_air_hs": {_ret = license_med_air;};
	case "civ_car": {_ret = license_civ_driver;};
	case "ford_car": {_ret = license_civ_driver;};
	case "chev_car": {_ret = license_civ_driver;};
	case "dodge_car": {_ret = license_civ_driver;};
	case "exo_car": {_ret = license_civ_driver;};
	case "ems_ship": {_ret = license_civ_boat;};
	case "super_shop": {_ret = license_civ_driver;};
	case "ferrari_shop": {_ret = license_civ_driver;};
	case "lambo_shop": {_ret = license_civ_driver;};
	case "second_shop": {_ret = license_civ_driver;};
	case "elite_car": {_ret = license_civ_Elite;};
	case "cargo_s": {_ret = license_civ_driver;};
	case "cargo_i": {_ret = license_civ_driver;};
	case "cargo_a": {_ret = license_civ_driver;};
	case "cargo_w": {_ret = license_civ_driver;};
	case "cargo_tr": {_ret = license_civ_driver;};
	
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;