/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "You can not rob this camp!" };
if(_robber distance _shop > 5) exitWith { hint "You need to be within 5m of the target to rob him!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Robbery already in progress!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };
if (_kassa == 0) exitWith { hint "There is no cash to rob!" };

_rip = true;
_kassa = 66000 + round(random 52000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then { hint "The rebels hit the silent alarm, other rebel factions have been alerted!"; [[1,format["ALARM! - CSAT Rebelairport: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
[[2,"<> South CSAT rebel HQ is being robbed<>!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (3m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.005;
 
if(_rip) then
{
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Robbery in Progress, stay close (3m) (%1%2)...",round(_cP * 100),"%"];

if(_cP >= 1) exitWith {};
if(_robber distance _shop > 3.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 3.5) exitWith { _shop switchMove ""; hint "You need to stay within 3m to Rob the rebels! - Now the registry is locked."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, now get away before others arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash + _kassa;
[[1,format["CSAT Rebelairport: %1 was just robbed by %2 for a total of $%3", _shop, _robber, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[1,format["NEWS: The CSAT Rebels airport: %1 was just robbed for a total of $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
_action = _shop addAction["Rob the store",life_fnc_robShops];
_shop switchMove "";