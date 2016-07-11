/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"fake"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["IRA_Soldier_Outfit_6",nil,3000],
			["UVF_Soldier_Outfit_6",nil,3000],
			["TRYK_U_denim_hood_nc",nil,3000],
			["UVF_Soldier_Outfit_5",nil,3000],			
			["TRYK_U_Bts_PCUs",nil,2000],
			["TRYK_U_Bts_PCUGs",nil,2000],
			["TRYK_U_Bts_GRYGRY_PCUs",nil,2000],
			["TRYK_U_Bts_UCP_PCUs",nil,2000],
			["TRYK_U_Bts_Wood_PCUs",nil,2000],
			["TRYK_U_Bts_PCUODs",nil,2000],
			["TRYK_U_B_PCUs",nil,2000],
			["TRYK_U_B_PCUGs",nil,2000],
			["TRYK_U_B_UCP_PCUs",nil,2000],
			["TRYK_U_B_Wood_PCUs",nil,2000],
			["TRYK_U_B_PCUODs",nil,2000],
			["TRYK_U_nohoodPcu_gry",nil,2000],
			["TRYK_U_pad_hood_tan",nil,2000],
			["TRYK_hoodie_Blk",nil,2000],
			["U_PMC_CombatUniformLS_BSGPBB",nil,2000],
			["U_PMC_CombatUniformLS_SSGPSB",nil,2000],
			["U_PMC_CombatUniformLS_ChckDBS_GPSB",nil,2000],
			["U_PMC_CombatUniformLS_ChckDBS_GPSB",nil,2000],
			["U_PMC_CombatUniformLS_ChckLB_GPBB",nil,2000],
			["U_PMC_CombatUniformLS_ChckLR_SPBB",nil,2000],
			["U_PMC_CombatUniformLS_ChckP_BPBB",nil,2000],
			["U_PMC_CombatUniformLS_BSGPSB",nil,2000],
			["U_PMC_CombatUniformLS_BSSPBB",nil,2000],
			["U_PMC_CombatUniformLS_BSSPSB",nil,2000],
			["U_PMC_CombatUniformLS_GSBPBB",nil,2000],
			["U_PMC_CombatUniformLS_GSSPBB",nil,2000],
			["U_PMC_CombatUniformLS_SSBPBB",nil,2000],
			["U_PMC_CombatUniformLS_SSGPBB",nil,2000],
			["U_PMC_CombatUniformRS_BSGPBB",nil,2000],
			["U_PMC_CombatUniformRS_SSGPSB",nil,2000],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB",nil,2000],
			["U_PMC_CombatUniformRS_ChckLB_GPBB",nil,2000],
			["U_PMC_CombatUniformRS_ChckLR_SPBB",nil,2000],
			["U_PMC_CombatUniformRS_ChckP_BPBB",nil,2000],
			["U_PMC_CombatUniformRS_BSGPSB",nil,2000],
			["U_PMC_CombatUniformRS_BSSPBB",nil,2000],
			["U_PMC_CombatUniformRS_BSSPSB",nil,2000],
			["U_PMC_CombatUniformRS_GSBPBB",nil,2000],
			["U_PMC_CombatUniformRS_GSSPBB",nil,2000],
			["U_PMC_CombatUniformRS_SSBPBB",nil,2000],
			["U_PMC_CombatUniformRS_SSGPBB",nil,2000],
			["U_BG_Guerilla2_2",nil,2000],
			["U_BG_Guerilla2_1",nil,2000],
			["U_BG_Guerilla2_3",nil,2000],
			["TRYK_U_B_BLTAN_T",nil,2000],
			["TRYK_U_B_C02_Tsirt",nil,2000],
			["TRYK_U_B_BLKTAN_Tshirt",nil,2000],
			["TRYK_U_B_BLKTAN",nil,2000],
			["TRYK_U_B_BLK_OD",nil,2000],
			["TRYK_U_B_ODTAN_Tshirt",nil,2000],
			["TRYK_U_B_ODTAN",nil,2000]
			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Spectacles",nil,25],
			["G_Spectacles_Tinted",nil,25],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["EWK_Cigar1",nil,25],
			["EWK_Cigar2",nil,25],
			["EWK_Cig1",nil,25],
			["EWK_Cig2",nil,25],
			["EWK_Cig3",nil,25],
			["EWK_Cig4",nil,25],
			["EWK_Cig5",nil,25],
			["EWK_Glasses_Cig1",nil,25],
			["EWK_Glasses_Cig2",nil,25],
			["EWK_Glasses_Cig3",nil,25],
			["EWK_Glasses_Cig4",nil,25],
			["EWK_Glasses_Cig5",nil,25],
			["EWK_Shemag_tan_Cig6",nil,25],
			["EWK_Shemag_GRE_Cig6",nil,25],
			["EWK_Shemag_NB_Cig6",nil,25],
			["SFG_Tac_Beard",nil,25],
			["SFG_Tac_BeardD",nil,25],
			["SFG_Tac_BeardB",nil,25],
			["SFG_Tac_BeardG",nil,25],
			["SFG_Tac_BeardO",nil,25],
			["SFG_Tac_ChopsD",nil,25],
			["SFG_Tac_ChopsG",nil,25],
			["SFG_Tac_ChopsB",nil,25],
			["SFG_Tac_ChopsO",nil,25],
			["SFG_Tac_moustacheD",nil,25],
			["SFG_Tac_moustacheG",nil,25],
			["SFG_Tac_moustacheB",nil,25],
			["SFG_Tac_moustacheO",nil,25],
			["SFG_Tac_chinlessbD",nil,25],
			["SFG_Tac_chinlessbG",nil,25],
			["SFG_Tac_chinlessbB",nil,25],
			["SFG_Tac_chinlessbO",nil,25],
			["SFG_Tac_SmallBeard",nil,25],
			["SFG_Tac_smallBeardD",nil,25],
			["SFG_Tac_smallBeardB",nil,25],
			["SFG_Tac_smallBeardG",nil,25],
			["SFG_Tac_smallBeardO",nil,25]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["k_cut_11",nil,5000],
			["k_cut_1",nil,5000],
			["k_cut_2",nil,5000],
			["k_cut_3",nil,5000],
			["k_cut_4",nil,5000],
			["k_cut_5",nil,5000],
			["k_cut_6",nil,5000],
			["k_cut_7",nil,5000],
			["k_cut_8",nil,5000],
			["k_cut_9",nil,5000],
			["k_cut_10",nil,5000],
			["V_Press_F",nil,5000],
			["TRYK_V_Bulletproof_BLK",nil,3000],
			["TRYK_V_Bulletproof_BL",nil,3000],
			["TRYK_V_Bulletproof",nil,3000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};