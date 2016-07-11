/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"pg"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_BLKOCP_R_CombatUniformTshirt",nil,4000],
			["TRYK_U_B_BLKOCP_CombatUniform",nil,4000],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,4000],
			["TRYK_U_B_BLKTAN_CombatUniform",nil,4000],
			["U_PMC_CombatUniformLS_IndPBSBB",nil,4000],
			["U_PMC_CombatUniformRS_IndPBSBB",nil,4000],
			["U_B_CombatUniform_mcam_tshirt",nil,4000],
			["U_I_G_resistanceLeader_F",nil,4000],
			["U_I_CombatUniform",nil,4000],
			["U_I_CombatUniform_shortsleeve",nil,4000],
			["B_Fem_SPEC_Quereshi",nil,4000],
			["IRA_Soldier_Outfit_4",nil,4000],
			["IRA_Soldier_Outfit_3",nil,4000],
			["IRA_Soldier_Outfit_2",nil,4000],
			["IRA_Soldier_Outfit_1",nil,4000],
			["U_BG_Guerrilla_6_1",nil,4000],
			["U_BG_Guerilla1_1",nil,4000],
			["U_BG_leader",nil,4000],
			["TRYK_U_B_ACU",nil,4000],
			["TRYK_U_B_ACUTshirt",nil,4000],
			["TRYK_U_B_ARO1_BLK_CombatUniform",nil,4000],
			["TRYK_U_B_ARO1_BLK_R_CombatUniform",nil,4000],
			["TRYK_U_B_ARO1_GR_CombatUniform",nil,4000],
			["TRYK_U_B_ARO1_GR_R_CombatUniform",nil,4000],
			["TRYK_U_B_ARO1_GRY_CombatUniform",nil,4000],
			["TRYK_U_B_ARO1_GRY_R_CombatUniform",nil,4000],
			["TRYK_U_B_ARO2_CombatUniform",nil,4000],
			["TRYK_U_B_ARO2R_CombatUniform",nil,4000],
			["TRYK_C_AOR2_T",nil,4000],
			["TRYK_U_B_AOR2_BLK_CombatUniform",nil,4000],
			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,4000],
			["TRYK_U_B_AOR2_GRY_CombatUniform",nil,4000],
			["TRYK_U_B_AOR2_GRY_R_CombatUniform",nil,4000],
			["TRYK_U_B_AOR2_OD_CombatUniform",nil,4000],
			["TRYK_U_B_AOR2_OD_R_CombatUniform",nil,4000],
			["TRYK_U_B_C01_Tsirt",nil,4000],
			["TRYK_U_B_BLK3CD",nil,4000],
			["TRYK_U_B_BLK3CD_Tshirt",nil,4000],
			["TRYK_U_B_3CD_Delta_BDU",nil,4000],
			["TRYK_U_B_3CD_Delta_BDUTshirt",nil,4000],
			["TRYK_U_B_3CD_Ranger_BDU",nil,4000],
			["TRYK_U_B_3CD_Ranger_BDUTshirt",nil,4000],
			["TRYK_U_B_fleece",nil,4000],
			["TRYK_U_B_fleece_UCP",nil,4000],
			["TRYK_U_B_GRTAN_CombatUniform",nil,4000],
			["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,4000],
			["TRYK_U_B_GRYOCP_CombatUniform",nil,4000],
			["TRYK_U_B_GRYOCP_R_CombatUniformTshirt",nil,4000],
			["TRYK_U_B_MARPAT_Wood",nil,4000],
			["TRYK_U_B_MARPAT_Wood_Tshirt",nil,4000],
			["TRYK_U_B_MARPAT_WOOD_CombatUniform",nil,4000],
			["TRYK_U_B_OD_OD_CombatUniform",nil,4000],
			["TRYK_U_B_OD_OD_R_CombatUniform",nil,4000],
			["TRYK_U_hood_mc",nil,4000],
			["TRYK_U_hood_nc",nil,4000],
			["TRYK_U_B_woodtan_CombatUniform",nil,4000],
			["TRYK_U_B_woodtanR_CombatUniformTshirt",nil,4000],
			["IRA_Soldier_Outfit_8",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_pmc",nil,850],
			["H_Cap_tan_pmc",nil,850],
			["H_Cap_pmc_headphones",nil,850],
			["H_Capbw_pmc",nil,850],
			["H_Capbw_tan_pmc",nil,850],
			["H_Booniehat_rgr",nil,850],
			["H_Booniehat_GCAMO",nil,850],
			["H_Booniehat_DMARPAT",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
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
			["H_Cap_tan",nil,150],
			["H_Cap_blk_ION",nil,150],
			["H_RacingHelmet_2_F",nil,150],	
			["H_Cap_headphones",nil,150],
			["H_Cap_press",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,2500],
			["V_BandollierB_cbr",nil,2500],
			["V_HarnessO_brn",nil,2500],
			["V_PlateCarrier1_blk",nil,2500],
			["V_PlateCarrierH_CTRG",nil,2500],
			["V_Press_F",nil,1150],
			["V_TacVest_camo",nil,2250],
			["V_PlateCarrier1_PMC_rgr",nil,2150],
			["V_PlateCarrier1_PMC_blk",nil,2150],
			["V_PlateCarrier1_PMC_marpat",nil,2150],
			["V_PlateCarrier1_PMC_khki",nil,2150],
			["V_PlateCarrierInd_PMC_blk",nil,2150],
			["V_PlateCarrierInd_PMC_grn",nil,2150],
			["V_TacVest_darkblck",nil,2150]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Bergen_rgr_Exp",nil,2500],
			["B_Kitbag_blk_Medic",nil,2500],
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