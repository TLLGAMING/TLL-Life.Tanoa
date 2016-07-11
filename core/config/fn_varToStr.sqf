/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_blastingcharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_battery": {(localize "STR_Item_battery")};
	case "life_inv_barrier": {(localize "STR_Item_barrier")};
	case "life_inv_mauer": {(localize "STR_Item_mauer")};
	case "life_inv_vehiclecharge": {(localize "STR_Item_vehiclecharge")};
	case "life_inv_zipties": {(localize "STR_Item_zipties")};
	case "life_inv_pizza": {(localize "STR_Item_pizza")};
	case "life_inv_bandage": {(localize "STR_Item_bandage")};
	case "life_inv_target": {(localize "STR_Item_target")};
	case "life_inv_bottledwhiskey": {(localize "STR_Item_bottledwhiskey")};
	case "life_inv_beer": {(localize "STR_Item_beer")};
	case "life_inv_stretcher": {(localize "STR_Item_stretcher")};
	case "life_inv_frogs": {(localize "STR_Item_frogs")};
	case "life_inv_lsd": {(localize "STR_Item_lsd")};
	case "life_inv_bigmac": {(localize "STR_Item_bigmac")};
	case "life_inv_fries": {(localize "STR_Item_fries")};
	case "life_inv_blindfold": {(localize "STR_Item_blindfold")};
	case "life_inv_scissors": {(localize "STR_Item_scissors")};
	case "life_inv_spraypaintcamo": {(localize "STR_Item_spraypaintcamo")};
	case "life_inv_spraypaintfunky": {(localize "STR_Item_spraypaintfunky")};
	case "life_inv_spraypaintpink": {(localize "STR_Item_spraypaintpink")};
	case "life_inv_nos": {(localize "STR_Item_nos")};
	case "life_inv_spraypaintzebra": {(localize "STR_Item_spraypaintzebra")};
	case "life_inv_spraypaintcamo2": {(localize "STR_Item_spraypaintcamo2")};
	case "life_inv_turbo": {(localize "STR_Item_turbo")};
	case "life_inv_mp3player": {(localize "STR_Item_mp3player")};
	case "life_inv_autorepairkit": {(localize "STR_Item_autorepairkit")};
	case "life_inv_speedbomb": {(localize "STR_Item_speedbomb")};
	case "life_inv_defibrillator": {(localize "STR_Item_defibrillator")};
	case "life_inv_bullettcamera": {(localize "STR_Item_bullettcamera")};
	case "life_inv_jailpass": {(localize "STR_Item_jailpass")};
	case "life_inv_kidney": {"Black Market Kidney"};
	case "life_inv_mdma": {(localize "STR_Item_mdma")};
	case "life_inv_ecstasy": {(localize "STR_Item_ecstasy")};
	case "life_inv_masterkey": {(localize "STR_Item_masterkey")};
	case "life_inv_morphine": {(localize "STR_Item_morphine")};
	case "life_inv_epipen": {(localize "STR_Item_epipen")};
	case "life_inv_antifreeze": {(localize "STR_Item_antifreeze")};
	case "life_inv_jailblueprint": {(localize "STR_Item_jailblueprint")};
	case "life_inv_keycard": {(localize "STR_Item_keycard")};

	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_insurance": {(localize "STR_License_insurance")};
	case "license_civ_Taxi": {(localize "STR_License_Taxi")};
	case "license_civ_Bus": {(localize "STR_License_Bus")};
	case "license_civ_Lawyer": {(localize "STR_License_Lawyer")};
	case "license_civ_Marksmen": {(localize "STR_License_Marksmen")};
	case "license_civ_Elite": {(localize "STR_License_Elite")};
	case "license_civ_lsd": {(localize "STR_License_lsd")};
	case "license_civ_bountyhunter": {(localize "STR_License_bountyhunter")};
	case "license_civ_ecstasy": {(localize "STR_License_ecstasy")};
	case "license_civ_riflemen": {(localize "STR_License_riflemen")};
	case "license_civ_diystore": {(localize "STR_License_diystore")};
	case "license_civ_gundealer": {(localize "STR_License_gundealer")};

};
