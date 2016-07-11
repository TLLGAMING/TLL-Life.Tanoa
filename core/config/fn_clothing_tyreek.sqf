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
ctrlSetText[3103,"tyreek"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_denim_hood_blk",nil,1000],
			["TRYK_U_denim_hood_mc",nil,1000],
			["TRYK_U_denim_hood_nc",nil,1000],
			["TRYK_U_denim_jersey_blu",nil,1000],
			["TRYK_U_pad_j_blk",nil,2000],
			["TRYK_U_pad_j",nil,2000],
			["TRYK_OVERALL_nok_flesh",nil,1000],
			["TRYK_OVERALL_SAGE_BLKboots_nk",nil,1000],
			["TRYK_OVERALL_SAGE_BLKboots_nk_blk",nil,1000],
			["TRYK_OVERALL_flesh",nil,1000],
			["TRYK_OVERALL_SAGE",nil,1000],
			["TRYK_OVERALL_SAGE_BLKboots",nil,1000],
			["TRYK_U_B_PCUGs_gry",nil,2000],
			["TRYK_U_B_PCUGs_BLK",nil,2000],
			["TRYK_U_B_GRY_PCUs",nil,2000],
			["TRYK_U_B_PCUGs_OD",nil,2000],
			["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,2000],
			["TRYK_U_B_wh_OD_Rollup_CombatUniform",nil,2000],
			["TRYK_U_B_wh_tan_Rollup_CombatUniform",nil,2000],
			["TRYK_U_pad_hood_Blk",nil,2000],
			["TRYK_U_B_BLK_T_BK",nil,2000],
			["TRYK_U_B_BLK_T_WH",nil,2000],
			["TRYK_U_B_Denim_T_BK",nil,2000],
			["TRYK_U_B_Denim_T_WH",nil,2000],
			["A3L_Dude_Outfit","Dude Outfit",1000],
			["A3L_Farmer_Outfit","Farmers Outfit",1000],
			["A3L_Priest_Uniform","Priest Gown",2000],
			["A3L_SpookyMummy","Mummy Costume",5000],
			["A3L_Worker_Outfit","Truck Driver",2000],
			["IRA_Soldier_Outfit_7","Bar Tender",1000],
			["U_C_Journalist","Journalist",1000],
			["A3L_Bikini_Girl",nil,2000]

		];
	};

	//Hats
	case 1:
	{
		[
			["H_Watchcap_blk",nil,200],
			["H_Watchcap_camo",nil,200],
			["ALE_H_Cowboy_White",nil,200],
			["ALE_H_Cowboy_Black",nil,200],
			["ALE_H_NewEra_Black",nil,400],
			["ALE_H_NewEra_Monster",nil,400],
			["ALE_H_NewEra_Superman",nil,400],
			["H_Hat_blue",nil,300],
			["H_Hat_brown",nil,300],
			["H_Hat_checker",nil,300],
			["H_Hat_tan",nil,300],
			["H_MilCap_blue",nil,300],
			["H_MilCap_gry",nil,300],
			["TRYK_ESS_CAP",nil,200],
			["TRYK_ESS_CAP_OD",nil,200],
			["TRYK_ESS_CAP_tan",nil,200],
			["TRYK_R_CAP_BLK",nil,200],
			["TRYK_R_CAP_TAN",nil,200],
			["TRYK_R_CAP_OD_US",nil,200],
			["TRYK_H_headsetcap_blk_Glasses",nil,200],
			["TRYK_r_cap_blk_Glasses",nil,200],
			["TRYK_H_Bandana_H",nil,200],
			["TRYK_H_Bandana_wig",nil,200],
			["TRYK_H_Bandana_wig_g",nil,200],
			["TRYK_H_wig",nil,200]

		];
	};

	//Glasses
	case 2:
	{
		[
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
			["SFG_Tac_smallBeardO",nil,25],
			["G_Diving",nil,25],
			["G_Aviator",nil,25],
			["G_Spectacles",nil,25],
			["G_Spectacles_Tinted",nil,25],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Shades_Green",nil,20],
			["G_Shades_Red",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["H_BandMask_blk",nil,150],
			["H_BandMask_khk",nil,150],
			["H_BandMask_demon",nil,150]

		];
	};

	//Vest
	case 3:
	{
		[
			["V_TacVest_darkblck",nil,5000],
			["REB_VEST_PINK",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
			["k_cut_11",nil,5000],
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
			
			["A3L_Britainback",nil,2000],
			["A3L_Canadaback",nil,2000],
			["A3L_Canadaback",nil,2000],
			["A3L_Canadaback",nil,2000],
			["A3L_Hashciv",nil,5000],
			["A3L_Pinkciv",nil,5000],
			["koilbp_1",nil,5000],
			["koilbp_2",nil,5000],
			["koilbp_3",nil,5000],
			["koilbp_4",nil,5000],
			["koilbp_5",nil,5000],
			["koilbp_6",nil,5000],
			["koilbp_7",nil,5000],
			["koilbp_8",nil,5000],
			["koilbp_9",nil,5000],
			["koilbp_10",nil,5000],
			["koilbp_11",nil,5000],
			["koilbp_12",nil,5000],
			["koilbp_13",nil,5000],
			["koilbp_14",nil,5000],
			["koilbp_15",nil,5000],
			["koilbp_16",nil,5000],
			["koilbp_17",nil,5000],
			["koilbp_18",nil,5000],
			["koilbp_19",nil,5000],
			["koilbp_20",nil,5000],
			["koilbp_21",nil,5000],
			["koilbp_22",nil,5000],
			["koilgraf_1",nil,5000],
			["koilgraf_2",nil,5000],
			["koilgraf_3",nil,5000],
			["kaelmonty",nil,5500],
			["kaelmonty2",nil,5500],
			["kaelmario",nil,5500],
			["kaelsuits",nil,5500],
			["koilbatman_1",nil,5500],
			["koilbender_1",nil,5500],
			["koilbender_2",nil,5500],
			["koilclint_1",nil,5500],
			["koileminem_1",nil,5500],
			["koilgraf_1",nil,5500],
			["koilgraf_2",nil,5500],
			["koilgraf_3",nil,5500],
			["koilhulk_1",nil,5500],
			["koiljoker_1",nil,5500],
			["koilpumpkin_1",nil,5500],
			["koilsparta_1",nil,5500],
			["koilsponge_1",nil,5500],
			["koilturtles_1",nil,5500],
			["koilkatie",nil,5500],
			["koilpanda",nil,5500],
			["koilaiden",nil,5500],
			["koileagle",nil,5500],
			["koilspecktators",nil,5500],
			["koildarth",nil,5500],
			["koilgucci",nil,5500],
			["koilsmashing",nil,5500],
			["koilgoonsquad",nil,5500],
			["koilcat",nil,5500]

		];
	};
};