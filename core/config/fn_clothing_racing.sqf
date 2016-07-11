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
ctrlSetText[3103,"racing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Driver_1_black",nil,1500],
			["U_C_Driver_1_blue",nil,1500],
			["U_C_Driver_1_red",nil,1500],
			["U_C_Driver_1_orange",nil,1500],
			["U_C_Driver_1_green",nil,1500],
			["U_C_Driver_1_white",nil,1500],
			["U_C_Driver_1_yellow",nil,1500],
			["U_C_Driver_2",nil,3500],
			["U_C_Driver_1",nil,3600],
			["U_C_Driver_3",nil,3700],
			["U_C_Driver_4",nil,3700]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_RacingHelmet_1_F",nil,850],
			["H_RacingHelmet_2_F",nil,850],
			["H_RacingHelmet_3_F",nil,800],
			["H_RacingHelmet_4_F",nil,2500],
			["H_RacingHelmet_1_black_F",nil,1200],
			["H_RacingHelmet_1_blue_F",nil,650],
			["H_RacingHelmet_1_green_F",nil,850],
			["H_RacingHelmet_1_red_F",nil,850],
			["H_RacingHelmet_1_white_F",nil,800],
			["H_RacingHelmet_1_yellow_F",nil,2500],
			["H_RacingHelmet_1_orange_F",nil,1200]
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
			["V_TacVest_camo",nil,2250]
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