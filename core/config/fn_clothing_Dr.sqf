/*
	File: fn_clothing_Dr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Dr Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["Pro_EMSVOL_Uniform", nil, 50],
			["Pro_EMSEMT_Uniform", nil, 50],
			["Pro_EMSCommand_Uniform", nil, 50],
			["Pro_EMSDive", nil, 50]
		];
	};

	//Hats
	case 1:
	{
		[
			["A3L_medic_helmet", nil, 50],
			["TRYK_H_woolhat", nil, 50],
			["TRYK_H_woolhat_br", nil, 50],
			["TRYK_H_woolhat_cu", nil, 50],
			["TRYK_H_woolhat_CW", nil, 50],
			["TRYK_H_woolhat_tan", nil, 50],
			["TRYK_H_woolhat_WH", nil, 50],
			["TRYK_R_CAP_BLK", nil, 50],
			["TRYK_H_headsetcap_blk", nil, 50],
			["H_Cap_blk", nil, 50],
			["H_Cap_red", nil, 50],
			["H_Cap_blu", nil, 50],
			["H_Beret_blk", nil, 50],
			["A3L_medic_helmet", nil, 50]
		];
	};

	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,500],
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
			["G_Squares",nil,10]
		];
	};

	//Vest
	case 3:
	{
		[
			["Pro_emsVolunteer",nil,200],
			["Pro_emsProbie",nil,200],
			["Pro_emtVest",nil,200],
			["Pro_emtIIVest",nil,200],
			["Pro_emsftovest",nil,200],
			["Pro_emsftovest2",nil,200],
			["V_RebreatherB", nil, 50]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["medicz",nil,180],
			["koilmedicyellow2",nil,180],
			["koilmedicdarkred",nil,180],
			["koilmedicred",nil,180],
			["koilmedicblue",nil,180],
			["koilmedicwhite",nil,180],
			["carry_base",nil,180]
			
		];
	};
};