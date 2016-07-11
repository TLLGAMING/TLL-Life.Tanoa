/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Apply Blindfold",life_fnc_blindfold,cursorTarget,9999999,false,false,"",' cursorTarget getVariable ["restrained",false] && !(cursorTarget getVariable ["blindfolded",false]) && life_inv_blindfold > 0 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];		
		life_actions = life_actions + [player addAction["Remove Blindfold",life_fnc_blindfoldRemove,cursorTarget,9999999,false,false,"",' cursorTarget getVariable ["blindfolded",false] && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["Remove Own Blindfold",life_fnc_blindfoldRemove,player,9999999,false,false,"",' player getVariable ["blindfolded",false] && !(player getVariable ["restrained",false]) && alive player ']];
		//earplugs
		life_actions = [player addAction["<t color='#ADFF2F'>Earplugs On/Off</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.4;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
		// Suicide Bomb
        life_actions = life_actions + [player addAction["Active explosive vest",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Throw in car
		life_actions = life_actions + [player addAction["<t color = '#6baf41'>Throw in car</t>",life_fnc_throwcar,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "restrained") ']];	
		//Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Move Person</t>",life_fnc_civescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "escorting")  && (!life_action_inUse) ']];	
		//Stop Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Stop Escort</t>",life_fnc_civstopescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "restrained") && (cursorTarget getVariable["Escorting",false]) ']];
		// take them organs
		life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Untie person
		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Untie Person</t>",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "restrained") && (!life_action_inUse) ']];
	};
	case west: 
	{
		//earplugs
		life_actions = [player addAction["<t color='#ADFF2F'>Earplugs On/Off</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.4;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
		//pack barrier
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel barrier</t>",life_fnc_packupbarrier,"",0,false,false,"",' _barrier = nearestObjects[getPos player,["RoadBarrier_long"],8] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}']];
		//pack mauer
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Mauer aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["Land_Concrete_SmallWall_4m_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//pack target
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel Target</t>",life_fnc_packuptarget,"",0,false,false,"",' _target = nearestObjects[getPos player,["TargetP_Inf3_Acc2_F"],8] select 0; !isNil "_target" && !isNil {(_target getVariable "item")}']];
		life_actions pushBack (player addAction["Seize Items",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']);
	};
};