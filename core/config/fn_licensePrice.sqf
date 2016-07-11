/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {50000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {3000}; //Oil processing license cost
	case "cair": {150}; //Cop Pilot License cost
	case "swat": {350}; //Swat License cost
	case "cg": {800}; //Coast guard license cost
	case "heroin": {10000}; //Heroin processing license cost
	case "marijuana": {5000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {90000}; //Rebel license cost
	case "truck": {3000}; //Truck license cost
	case "diamond": {10000};
	case "salt": {1000};
	case "cokep": {10000};
	case "sand": {2000};
	case "iron": {5000};
	case "copper": {5000};
	case "cement": {1000};
	case "mair": {1500};
	case "home": {100000};
	case "insurance": {5000};
	case "Taxi": {5000};
	case "Bus": {15000};
	case "Lawyer": {5000};
	case "lsd": {10000};
	case "ecstasy": {10000};
	case "diystore": {300000};
	case "gundealer": {500000};
};