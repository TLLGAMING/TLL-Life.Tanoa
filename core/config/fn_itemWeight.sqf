/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "coke": {6};
	case "cokep": {4};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "battery": {1};
	case "barrier": {3};
	case "mauer": {5};
	case "vehiclecharge": {3};
	case "zipties": {5};
	case "pizza": {1};
	case "bandage": {1};
	case "target": {1};
	case "bottledwhiskey": {5};
	case "beer": {5};
	case "stretcher": {5};
	case "frogs": {3};
	case "lsd": {2};
	case "mdma": {3};
	case "ecstasy": {2};
	case "bigmac": {1};
	case "fries": {1};
	case "blindfold": {3};
	case "scissors": {1};
	case "spraypaintcamo": {1};
	case "spraypaintfunky": {1};
	case "spraypaintpink": {1};
	case "nos": {1};
	case "spraypaintzebra": {1};
	case "spraypaintcamo2": {1};
	case "turbo": {1};
	case "turbo": {2};
	case "autorepairkit": {1};
	case "speedbomb": {1};
	case "defibrillator": {1};
	case "bullettcamera": {1};
	case "jailpass": {1};
	case "kidney": {15};
	case "masterkey": {1};
	case "morphine": {1};
	case "epipen": {1};
	case "antifreeze": {1};
	case "jailblueprint": {1};
	case "keycard": {1};
	default {1};
};
