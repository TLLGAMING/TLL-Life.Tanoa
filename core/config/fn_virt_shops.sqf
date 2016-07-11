/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
playSound "purchase";
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storagesmall","storagebig","battery","pizza","bandage","bigmac","fries","donuts","mp3player","coffee"]]};
	case "rebel": {["Rebel Market",["boltcutter","blastingcharge","spikeStrip","blindfold","scissors","zipties","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","battery","pizza","bandage","bigmac","fries","donuts","coffee","jailblueprint"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cokep","heroinp","marijuana","lsd","ecstasy","mdma"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","battery","barrier","mauer","target","masterkey","pickaxe","keycard"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "bar": {["The Lounge",["bottledwhiskey","beer"]]};
	case "rescue": {["rescue",["stretcher","water","rabbit","apple","redgull","tbacon","masterkey","morphine","scissors","epipen","antifreeze","kidney"]]};
	case "paintshop": {["paintshop",["spraypaintcamo","spraypaintfunky","spraypaintpink","spraypaintzebra","spraypaintcamo2"]]};
	case "ribstuning": {["ribstuning",["nos","turbo","autorepairkit"]]};
	case "bountyshop": {["bountyshop",["jailpass","bullettcamera","boltcutter","lockpick","zipties"]]};
	case "organ": {["Organ Dealer",["kidney"]]};
};