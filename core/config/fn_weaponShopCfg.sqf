#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
playSound "purchase";
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
												["Medikit",nil,50],
												["FirstAidKit",nil,25]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
												["A3L_Extinguisher",nil,100],
												["RyanZombiesAntiVirusTemporary_Item",nil,100],
												["RyanZombiesAntiVirusCure_Item",nil,105],
												["Binocular",nil,10],
												["ItemMap",nil,25],
												["ItemCompass",nil,5],
												["tf_anprc152",nil,10],
												["ItemGPS",nil,10],
												["Medikit",nil,15],
												["ToolKit",nil,15],
												["FirstAidKit",nil,15],
												["Chemlight_green",nil,10],
												["Chemlight_red",nil,10],
												["Chemlight_yellow",nil,10],
												["Chemlight_blue",nil,10],
												["pmc_earpiece","Earpiece",15]
                                        ]
                                ];
                        };
                };
        };
	
		
       case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not a Patrol Officer!"};
						default
                        {
                                ["Cadet Shop",
										[
												["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
		case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Patrol Officer!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not a Patrol Officer!"};
                        default
                        {
                                ["Patrol Officer",
                                        [
												["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152",nil,100]														
                                        ]
                                ];
                        };
                };
        };
		case "cop_senior":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Senior Patrol Officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Senior Patrol Officer!"};
                        default
                        {
                                ["Senior Patrol Officer ",
                                        [
												["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["hlc_smg_mp5a3",nil,10000],
												["hlc_smg_mp5a4",nil,10000],
												["hlc_30Rnd_9x19_GD_MP5",nil,250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]																		
                                        ]
                                ];
                        };
                };
        };
        case "cop_Corporal":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Corporal!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a Corporal rank!"};
                        default
                        {
                                ["Corporal Shop",
                                        [
												["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["hlc_smg_mp5a3",nil,10000],
												["hlc_smg_mp5a4",nil,10000],
												["hlc_30Rnd_9x19_GD_MP5",nil,250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]																								
                                        ]
                                ];
                        };
                };
        };

        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a sergeant!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911","1911 .45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["hlc_smg_mp5a3",nil,10000],
												["hlc_smg_mp5a4",nil,10000],
												["hlc_30Rnd_9x19_GD_MP5",nil,250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["RH_m4","Police M4",5000],
												["RH_30Rnd_556x45_M855A1","M4 556 Magazine",250],
												["CUP_arifle_G36C","HK G36C",5000],
												["CUP_30Rnd_556x45_G36","HK G36C Magazine",250],
												["CUP_arifle_M16A2","Colt M16A2",5000],
												["CUP_30Rnd_556x45_Stanag","Colt M16A2 Magazine",250],
												["RH_barska_rds","Barska Red Dot",500],
												["RH_cmore","C-More Red Dot",500],
												["RH_compM2","Comp M2 Red Dot",500],
												["CUP_optic_HoloBlack","Eotech Black Holo Sight",500],
												["CUP_optic_CompM4","Aimpoint CCO",500],
												["CUP_optic_TrijiconRx01_black","Trijicon Red Dot",500],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_liu":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Lieutenant!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not at a Lieutenant rank!"};
                        default
                        {
                                ["Lieutenant Shop",
                                        [
                                                ["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["hlc_smg_mp5a3",nil,10000],
												["hlc_smg_mp5a4",nil,10000],
												["hlc_30Rnd_9x19_GD_MP5",nil,250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["RH_m4","Police M4",5000],
												["RH_M4_ris","Police M4-RIS",7000],
												["CUP_arifle_G36C","HK G36C",5000],
												["CUP_30Rnd_556x45_G36","HK G36C Magazine",250],
												["RH_30Rnd_556x45_M855A1","M4 556 Magazine",250],
												["CUP_arifle_M16A2","Colt M16A2",5000],
												["CUP_30Rnd_556x45_Stanag","Colt M16A2 Magazine",250],
												["CUP_arifle_CZ805_A2","CZ 805A2",5000],
												["CUP_30Rnd_556x45_Stanag","CZ 805A2 Magazine",250],
												["RH_barska_rds","Barska Red Dot",500],
												["RH_cmore","C-More Red Dot",500],
												["RH_compM2","Comp M2 Red Dot",500],
												["CUP_optic_HoloBlack","Eotech Black Holo Sight",500],
												["CUP_optic_CompM4","Aimpoint CCO",500],
												["CUP_optic_TrijiconRx01_black","Trijicon Red Dot",500],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_chief":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Police chief!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not at a Command Rank!"};
                        default
                        {
                                ["High Command Shop",
                                        [
												["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["A3L_MP5","MP5",4000],
												["A3L_MP5Mag","MP5 Magazine",250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["A3L_RedDot","MP5 Red Dot",500],
												["RH_m4","Police M4",5000],
												["CUP_arifle_G36C","HK G36C",5000],
												["CUP_30Rnd_556x45_G36","HK G36C Magazine",250],
												["RH_M4_ris","Police M4-RIS",7000],
												["RH_30Rnd_556x45_M855A1","M4 556 Magazine",250],
												["CUP_arifle_M16A2","Colt M16A2",5000],
												["CUP_30Rnd_556x45_Stanag","Colt M16A2 Magazine",250],
												["CUP_arifle_CZ805_A2","CZ 805A2",5000],
												["CUP_30Rnd_556x45_Stanag","CZ 805A2 Magazine",250],
												["CUP_arifle_CZ805_B","CZ 805B",5000],
												["CUP_20Rnd_762x51_CZ805B","CZ 805B Magazine",250],
												["RH_M4A6","Police M4-A6",10000],
												["RH_30Rnd_68x43_FMJ","M4-A6 Magazine",250],
												["RH_barska_rds","Barska Red Dot",500],
												["RH_cmore","C-More Red Dot",500],
												["CUP_optic_HoloBlack","Eotech Black Holo Sight",500],
												["CUP_optic_CompM4","Aimpoint CCO",500],
												["CUP_optic_TrijiconRx01_black","Trijicon Red Dot",500],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not at a SERT rank!"};
                        default
                        {
                                ["SERT Shop",
                                        [
                                                ["Taser_26","Taser",100],
												["26_cartridge","Tazer Cartridge",50],
												["CUP_hgun_Glock17","Glock 17",1000],
												["CUP_17Rnd_9x19_glock17","Glock Magazine",100],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Colt1911",".45 ACP",3250],
												["CUP_7Rnd_45ACP_1911","45 ACP Magazine",150],
												["CUP_CZ_75_SP_01_PHANTOM","CZ SP-01 Phantom",3800],
												["CUP_18Rnd_9x19_Phantom","CZ SP-01 Phantom Magazine",150],
												["A3L_MP5","MP5",4000],
												["A3L_MP5Mag","MP5 Magazine",250],
												["RH_sbr9","SBR-9",4500],
												["RH_32Rnd_9mm_M822","SBR-9 Magazine",250],
												["A3L_RedDot","MP5 Red Dot",500],
												["RH_m4","Police M4",5000],
												["RH_M4_ris","Police M4-RIS",7000],
												["RH_30Rnd_556x45_M855A1","M4 556 Magazine",250],
												["CUP_arifle_G36C","HK G36C",5000],
												["CUP_30Rnd_556x45_G36","HK G36C Magazine",250],
												["RH_M4A6","Police M4-A6",10000],
												["RH_30Rnd_68x43_FMJ","M4-A6 Magazine",250],
												["RH_Hk416s","HK416 D10RS",12000],
												["RH_30Rnd_556x45_M855A1","HK416 D10RS Magazine",250],
												["RH_M4sbr_b","Vitor SBR 556",12000],
												["RH_30Rnd_556x45_M855A1","Vitor Magazine",250],
												["CUP_arifle_M16A2","Colt M16A2",5000],
												["CUP_30Rnd_556x45_Stanag","Colt M16A2 Magazine",250],
												["RH_barska_rds","Barska Red Dot",500],
												["RH_cmore","C-More Red Dot",500],
												["RH_compM2","Comp M2 Red Dot",500],
												["CUP_optic_HoloBlack","Eotech Black Holo Sight",500],
												["CUP_optic_CompM4","Aimpoint CCO",500],
												["CUP_optic_TrijiconRx01_black","Trijicon Red Dot",500],
												["FirstAidKit",nil,25],
												["Chemlight_red",nil,100],
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["pmc_earpiece","Earpiece",500],
												["tf_anprc152","Radio",100]
                                        ]
                                ];
                        };
                };
        };
      
      
        case "ems_flares":
        {
                switch(true) do
                {
                        case (playerSide != independent): {"You are not an EMS!"};
                        default
                        {
                                ["Flare Shop",
                                        [
												["hgun_Pistol_Signal_F",nil,5000],
												["6Rnd_GreenSignal_F",nil,1000],
												["6Rnd_RedSignal_F",nil,1000]
                                        ]
                                ];
                        };
                };
        };
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Black Market",
                                        [
												["RH_m9c",nil,7000],
												["RH_15Rnd_9x19_M9",nil,250],
												["RH_vp70",nil,15000],
												["RH_18Rnd_9x19_VP",nil,250],
												["RH_g18",nil,16000],
												["RH_33Rnd_9x19_g18",nil,250],
												["RH_tt33",nil,15000],
												["RH_8Rnd_762_tt33",nil,250],
												["CUP_hgun_Colt1911",nil,15000],
												["CUP_7Rnd_45ACP_1911",nil,250],
												["RH_m1911",nil,15000],
												["RH_kimber",nil,19000],
												["RH_kimber_nw",nil,19000],
												["RH_7Rnd_45cal_m1911",nil,250],
												["RH_tec9",nil,35000],
												["RH_32Rnd_9x19_tec",nil,250],
												["RH_muzi",nil,35000],
												["RH_30Rnd_9x19_UZI",nil,250],
												["CUP_hgun_SA61",nil,35000],
												["CUP_20Rnd_B_765x17_Ball_M",nil,250],
												["hgun_PDW2000_F",nil,39000],
												["30Rnd_9x21_Mag",nil,250],
												["RH_fn57",nil,85000],
												["RH_fn57_g",nil,85000],
												["RH_fn57_t",nil,85000],
												["RH_20Rnd_57x28_FN",nil,1000],
												["RH_sbr9_wdl",nil,140000],
												["RH_sbr9_tg",nil,140000],
												["RH_sbr9_des",nil,140000],
												["RH_32Rnd_9mm_M822",nil,250],
												["SMG_01_F",nil,140000],
												["30Rnd_45ACP_Mag_SMG_01",nil,250],
												["A3L_AK47",nil,175500],
												["A3L_AK47mag",nil,500],
												["CUP_arifle_AKS74U",nil,172000],
												["CUP_arifle_AK74",nil,179500],
												["CUP_arifle_AK74M",nil,182500],
												["CUP_arifle_AK107",nil,182500],
												["CUP_arifle_AKS74",nil,182500],
												["CUP_30Rnd_545x39_AK_M",nil,500],
												["CUP_optic_Kobra",nil,10000],
												["optic_Aco",nil,10000],
												["CUP_optic_MRad",nil,10000],
												["CUP_arifle_Sa58RIS1",nil,225000],
												["CUP_arifle_Sa58RIS1_des",nil,225000],
												["CUP_arifle_Sa58RIS2",nil,225000],
												["CUP_arifle_Sa58RIS2_camo",nil,225000],
												["CUP_arifle_Sa58P",nil,225000],
												["CUP_arifle_Sa58P_des",nil,225000],
												["CUP_arifle_Sa58V",nil,225000],
												["CUP_arifle_Sa58V_camo",nil,225000],
												["CUP_30Rnd_Sa58_M",nil,250],
												["CUP_arifle_AK47","AK-47 7.62",255000],
												["CUP_arifle_AKM",nil,255000],
												["CUP_30Rnd_762x39_AK47_M",nil,500],
												["A3L_AK47s","AK-47s 7.62",295000],
												["A3L_AK47sgold",nil,395500],
												["A3L_AK47smag",nil,500],
												["RH_ar10",AR10,320750],
												["RH_20Rnd_762x51_AR10",nil,1000],
												["A3L_RedDot",nil,10000],
												["CUP_optic_Kobra",nil,10000],
												["optic_Aco",nil,10000],
												["CUP_optic_MRad",nil,10000],
												["RH_Delft",nil,15000]
					]
                                ];
                        };
                };
        };
       
		case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_fcl): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Hayden Mac's Firearms",
                                        [
                                                ["CUP_hgun_Makarov",nil,15000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["CUP_hgun_PB6P9",nil,16000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["hgun_P07_F",nil,16000],
												["16Rnd_9x21_Mag",nil,250],
												["hgun_Rook40_F",nil,16000],
												["16Rnd_9x21_Mag",nil,250],
												["RH_sw659",nil,16000],
												["RH_14Rnd_9x19_sw",nil,250],
												["CUP_hgun_Glock17",nil,16000],
												["CUP_17Rnd_9x19_glock17",nil,250],
												["RH_g19",nil,16000],
												["RH_g19t",nil,16000],
												["RH_17Rnd_9x19_g17",nil,250],
												["RH_m9",nil,17000],
												["RH_15Rnd_9x19_M9",nil,250],
												["CUP_hgun_M9","M9 Beretta",12000],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Compact",nil,16000],
												["CUP_10Rnd_9x19_Compact",nil,250],
												["CUP_hgun_Duty",nil,18000],
												["16Rnd_9x21_Mag",nil,250],
												["CUP_hgun_Phantom",nil,25000],
												["CUP_18Rnd_9x19_Phantom",nil,250],
												["RH_p226",nil,25000],
												["RH_p226s",nil,25000],
												["RH_15Rnd_9x19_SIG",nil,250],
												["RH_mk2",nil,25000],
												["RH_10Rnd_22LR_mk2",nil,250],
												["RH_gsh18",nil,35000],
												["RH_18Rnd_9x19_gsh",nil,250]
                                        ]
                                ];
                        };
                };
        };
		
		case "gundealer":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gundealer): {"You don't have a gun dealers license!"};
                        default
                        {
                                ["Firearms",
                                        [
                                                ["CUP_hgun_Makarov",nil,8000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["CUP_hgun_PB6P9",nil,8000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["hgun_P07_F",nil,8000],
												["16Rnd_9x21_Mag",nil,250],
												["hgun_Rook40_F",nil,8000],
												["16Rnd_9x21_Mag",nil,250],
												["RH_sw659",nil,8000],
												["RH_14Rnd_9x19_sw",nil,250],
												["CUP_hgun_Glock17",nil,8000],
												["CUP_17Rnd_9x19_glock17",nil,250],
												["RH_g19",nil,8000],
												["RH_g19t",nil,8000],
												["RH_17Rnd_9x19_g17",nil,250],
												["RH_m9",nil,8000],
												["RH_15Rnd_9x19_M9",nil,250],
												["CUP_hgun_M9","M9 Beretta",6000],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Compact",nil,8000],
												["CUP_10Rnd_9x19_Compact",nil,250],
												["CUP_hgun_Duty",nil,10000],
												["16Rnd_9x21_Mag",nil,250],
												["CUP_hgun_Phantom",nil,12000],
												["CUP_18Rnd_9x19_Phantom",nil,250],
												["RH_p226",nil,14000],
												["RH_p226s",nil,14000],
												["RH_15Rnd_9x19_SIG",nil,250],
												["RH_mk2",nil,14000],
												["RH_10Rnd_22LR_mk2",nil,250],
												["RH_gsh18",nil,20000],
												["RH_18Rnd_9x19_gsh",nil,250]
                                        ]
                                ];
                        };
                };
        };
		
        case "Huntsman":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a firearms license!"};
                        default
                        {
                                ["Huntsman",
                                        [
                                        	["A3L_CZ550",nil,150500],
                                            ["A3L_CZ550mag",nil,2000],
											["arifle_SDAR_F",nil,10500],
											["20Rnd_556x45_UW_mag","Sdar",500]
											
                                        ]
                                ];
                        };
                };
        };

		case "pgss":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["pgss",
                                        [												
												["Binocular",nil,150],
												["ItemGPS",nil,1000],
												["ToolKit",nil,150],
												["NVGoggles",nil,1120],
												["tf_anprc152",nil,500],
												["pmc_earpiece",1500],
												["CUP_hgun_Makarov",nil,15000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["CUP_hgun_PB6P9",nil,16000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["hgun_P07_F",nil,16000],
												["16Rnd_9x21_Mag",nil,250],
												["hgun_Rook40_F",nil,16000],
												["16Rnd_9x21_Mag",nil,250],
												["RH_sw659",nil,16000],
												["RH_14Rnd_9x19_sw",nil,250],
												["CUP_hgun_Glock17",nil,16000],
												["CUP_17Rnd_9x19_glock17",nil,250],
												["RH_g19",nil,16000],
												["RH_g19t",nil,16000],
												["RH_17Rnd_9x19_g17",nil,250],
												["RH_m9",nil,17000],
												["RH_15Rnd_9x19_M9",nil,250],
												["CUP_hgun_M9","M9 Beretta",12000],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Compact",nil,16000],
												["CUP_10Rnd_9x19_Compact",nil,250],
												["CUP_hgun_Duty",nil,18000],
												["16Rnd_9x21_Mag",nil,250],
												["CUP_hgun_Phantom",nil,25000],
												["CUP_18Rnd_9x19_Phantom",nil,250],
												["RH_p226",nil,25000],
												["RH_p226s",nil,25000],
												["RH_15Rnd_9x19_SIG",nil,250],
												["RH_mk2",nil,25000],
												["RH_10Rnd_22LR_mk2",nil,250],
												["RH_gsh18",nil,35000],
												["RH_18Rnd_9x19_gsh",nil,250],
												["RH_m9c",nil,7000],
												["RH_15Rnd_9x19_M9",nil,250],
												["RH_vp70",nil,15000],
												["RH_18Rnd_9x19_VP",nil,250],
												["RH_g18",nil,16000],
												["RH_33Rnd_9x19_g18",nil,250],
												["RH_tt33",nil,15000],
												["RH_8Rnd_762_tt33",nil,250],
												["CUP_hgun_Colt1911",nil,15000],
												["CUP_7Rnd_45ACP_1911",nil,250],
												["RH_m1911",nil,15000],
												["RH_kimber",nil,19000],
												["RH_kimber_nw",nil,19000],
												["RH_7Rnd_45cal_m1911",nil,250],
												["RH_tec9",nil,35000],
												["RH_32Rnd_9x19_tec",nil,250],
												["RH_muzi",nil,35000],
												["RH_30Rnd_9x19_UZI",nil,250],
												["CUP_hgun_SA61",nil,35000],
												["CUP_20Rnd_B_765x17_Ball_M",nil,250],
												["hgun_PDW2000_F",nil,39000],
												["30Rnd_9x21_Mag",nil,250],
												["RH_sbr9_wdl",nil,140000],
												["RH_sbr9_tg",nil,140000],
												["RH_sbr9_des",nil,140000],
												["RH_32Rnd_9mm_M822",nil,250],
												["SMG_01_F",nil,40000],
												["30Rnd_45ACP_Mag_SMG_01",nil,250],
												["A3L_AK47",nil,75500],
												["A3L_AK47mag",nil,500],
												["CUP_arifle_AKS74U",nil,172000],
												["CUP_arifle_AK74",nil,179500],
												["CUP_arifle_AK74M",nil,182500],
												["CUP_arifle_AK107",nil,182500],
												["CUP_arifle_AKS74",nil,182500],
												["CUP_30Rnd_545x39_AK_M",nil,500],
												["CUP_optic_Kobra",nil,10000]
                                        ]
                                ];
                        };
                };
        };
		
		case "bounty":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_bounthunter): {"You don't have a bounty hunters license!"};
                        default
                        {
                                ["bounty",
                                        [
												["Binocular",nil,150],
												["ItemGPS",nil,100],
												["ToolKit",nil,150],
												["NVGoggles",nil,120],
												["tf_anprc152",nil,100],
												["pmc_earpiece",500]
                                        ]
                                ];
                        };
                };
        };

		case "Powerz":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a firearms license!"};
                        default
                        {
                                ["Haydenz",
                                        [
                                                ["CUP_hgun_Makarov",nil,5000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["CUP_hgun_PB6P9",nil,6000],
												["CUP_8Rnd_9x18_Makarov_M",nil,250],
												["hgun_P07_F",nil,6000],
												["16Rnd_9x21_Mag",nil,250],
												["hgun_Rook40_F",nil,6000],
												["16Rnd_9x21_Mag",nil,250],
												["RH_sw659",nil,6000],
												["RH_14Rnd_9x19_sw",nil,250],
												["CUP_hgun_Glock17",nil,6000],
												["CUP_17Rnd_9x19_glock17",nil,250],
												["RH_g19",nil,6000],
												["RH_g19t",nil,6000],
												["RH_17Rnd_9x19_g17",nil,250],
												["RH_m9",nil,7000],
												["RH_15Rnd_9x19_M9",nil,250],
												["CUP_hgun_M9","M9 Beretta",1200],
												["CUP_15Rnd_9x19_M9","M9 Magazine",100],
												["CUP_hgun_Compact",nil,6000],
												["CUP_10Rnd_9x19_Compact",nil,250],
												["CUP_hgun_Duty",nil,8000],
												["16Rnd_9x21_Mag",nil,250],
												["CUP_hgun_Phantom",nil,15000],
												["CUP_18Rnd_9x19_Phantom",nil,250],
												["RH_p226",nil,15000],
												["RH_p226s",nil,15000],
												["RH_15Rnd_9x19_SIG",nil,250],
												["RH_mk2",nil,15000],
												["RH_10Rnd_22LR_mk2",nil,250],
												["RH_gsh18",nil,25000],
												["RH_18Rnd_9x19_gsh",nil,250]
                                        ]
                                ];
                        };
                };
        };
		
       
		case "gang":
		{
			switch(true) do
			{
				case (playerSide != civilian): {"You are not a civilian!"};
				default
				{
					["Armament",
						[
								
						]
					];
				};
			};
		};
       
        case "genstore":
        {
                ["LakeSide General Store",
                        [
								["ItemMap",nil,169],
								["Tv_Camera","TV Camera(Secondary Slot)",2520],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,900],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200],
								["A3L_ChainSaw",nil,2000],
								["A3L_Shovel",nil,2000],
								["A3L_Pickaxe",nil,2000],
								["A3L_PaintballGun",nil,2200],
								["A3L_JackHammer",nil,2000],
								["A3L_Hammer",nil,2000],
								["A3L_Sign",nil,2000],
								["A3L_Sign2",nil,200],
								["A3L_Sign3",nil,200]
                        ]
                ];
        };
		
		case "diystore":
        {
                ["LakeSide Diy Store",
                        [
								["ItemMap",nil,20],
								["Tv_Camera","TV Camera(Secondary Slot)",1520],
								["FirstAidKit",nil,150],
                                ["itemRadio",nil,300],
                                ["Binocular",nil,550],
                                ["ItemGPS",nil,450],
                                ["ToolKit",nil,200],
                                ["NVGoggles_OPFOR",nil,3500],
                                ["NVGoggles",nil,3500],
                                ["Chemlight_red",nil,100],
                                ["Chemlight_yellow",nil,100],
                                ["Chemlight_green",nil,100],
                                ["Chemlight_blue",nil,100],
								["A3L_ChainSaw",nil,1000],
								["A3L_Shovel",nil,1000],
								["A3L_Pickaxe",nil,1000],
								["A3L_PaintballGun",nil,1200],
								["A3L_JackHammer",nil,1000],
								["A3L_Hammer",nil,1000],
								["A3L_Sign",nil,1000],
								["A3L_Sign2",nil,100],
								["A3L_Sign3",nil,100],
								["tf_anprc152",nil,100],
								["pmc_earpiece",200]

                        ]
                ];
        };

};
