#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_drink = 0;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_barrier = ObjNull;
life_mauer = ObjNull;
life_target = ObjNull;
life_respawn_timer = 3; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_requested_backup = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,2250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,4); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,275000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,100000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_battery = 80;
life_hack = false;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,550);
__CONST__(life_impound_boat,550);
__CONST__(life_impound_air,1050);
life_istazed = false;
life_my_gang = ObjNull;
life_nlrtimer_stop = false;
life_nlrtimer_running = false;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 60000; //Starting Bank Money
		life_paycheck = 550; //Paycheck Amount
	};
	
	case independent: 
	{
		life_atmcash = 165000;
		life_paycheck = 1000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_vehiclecharge",
	"life_inv_zipties",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_battery",
	"life_inv_mp3player",
	"life_inv_barrier",
	"life_inv_mauer",
	"life_inv_pizza",
	"life_inv_bandage",
	"life_inv_target",
	"life_inv_whiskey",
	"life_inv_beer",
	"life_inv_bottledwhiskey",
	"life_inv_stretcher",
	"life_inv_lsd",
	"life_inv_frogs",
	"life_inv_bigmac",
	"life_inv_fries",
	"life_inv_blindfold",
	"life_inv_scissors",
	"life_inv_spraypaintcamo",
	"life_inv_spraypaintfunky",
	"life_inv_spraypaintpink",
	"life_inv_nos",
	"life_inv_spraypaintzebra",
	"life_inv_spraypaintcamo2",
	"life_inv_turbo",
	"life_inv_autorepairkit",
	"life_inv_speedbomb",
	"life_inv_defibrillator",
	"life_inv_bullettcamera",
	"life_inv_jailpass",
	"life_inv_kidney",
	"life_inv_mdma",
	"life_inv_ecstasy",
	"life_inv_masterkey",
	"life_inv_epipen",
	"life_inv_antifreeze",
	"life_inv_morphine",
	"life_inv_jailblueprint",
	"life_inv_keycard"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_insurance","civ"],
	["license_civ_Taxi","civ"],
	["license_civ_Bus","civ"],
	["license_civ_Lawyer","civ"],
	["license_civ_Elite","civ"],
	["license_civ_lsd","civ"],
	["license_civ_bountyhunter","civ"],
	["license_civ_ecstasy","civ"],
	["license_civ_riflemen","civ"],
	["license_civ_diystore","civ"],
	["license_civ_gundealer","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinp",1500],["cokep",1500],["marijuana",1500],["turtle",1000],["blastingcharge",10000],["zipties",1000],["vehiclecharge",10000],["boltcutter",500],["lsd",500],["speedbomb",500],["scissors",500],["blindfold",500],["kidney",5000],["mdma",1000],["ecstasy",1000],["jailblueprint",1000],["keycard",1000]];

/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1150],
	["heroinp",2250],
	["salema",245],
	["ornate",240],
	["mackerel",175],
	["tuna",500],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",1000],
	["turtle",2000],
	["water",5],
	["coffee",5],
	["turtlesoup",1500],
	["donuts",60],
	["marijuana",1650],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["diamond",850],
	["diamondc",1700],
	["iron_r",1000],
	["copper_r",800],
	["salt_r",800],
	["glass",900],
	["fuelF",100],
	["spikeStrip",200],
	["cement",950],
	["goldbar",45000],
	["lsd",1700],
	["scissors",1000],
	["kidney",8000],
	["cokep",2000],
	["ecstasy",1500]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",265],
	["rabbit",725],
	["salema",255],
	["ornate",250],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1100],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",75000],
	["vehiclecharge",550000],
	["zipties",250],
	["boltcutter",7500],
	["defusekit",250],
	["storagesmall",75000],
	["storagebig",150000],
    ["battery",500],
	["barrier",500],
	["mauer",500],
	["pizza",500],
	["target",50],
	["bottledwhiskey",8000], 
	["beer",8000],
	["stretcher",80],
	["bigmac",180],
	["fries",80],
	["blindfold",1080],
	["scissors",8000],
	["spraypaintcamo",8000],
	["spraypaintfunky",8000],
	["spraypaintpink",8000],
	["nos",18000],
	["spraypaintzebra",8000],
	["spraypaintcamo2",8000],
	["turbo",4000],	
	["speedbomb",150000],
	["defibrillator",15000],
	["bullettcamera",50000],
	["jailpass",5000],
	["kidney",9000],
	["mp3player",5000],
	["masterkey",1000],
	["morphine",500],
	["epipen",500],
	["antifreeze",500],
	["jailblueprint",100000],
	["keycard",100]	
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",150],
	["C_Offroad_01_F",250],
	["B_G_Offroad_01_F",350],
	["C_SUV_01_F",320],
	["C_Van_01_transport_F",780],
	["C_Hatchback_01_sport_F",230],
	["C_Van_01_fuel_F",450],
	["I_Heli_Transport_02_F",1000],
	["C_Van_01_box_F",900],
	["I_Truck_02_transport_F",1200],
	["I_Truck_02_covered_F",1400],
	["B_Truck_01_transport_F",250],
	["B_Truck_01_box_F",350],
	["O_MRAP_02_F",400],
	["B_Heli_Light_01_F",200],
	["O_Heli_Light_02_unarmed_F",100],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",400],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",350],
	["B_Boat_Armed_01_minigun_F",1650],
	["B_SDV_01_F",2500],
	["B_MRAP_01_F",750]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
];
__CONST__(life_garage_sell,life_garage_sell);