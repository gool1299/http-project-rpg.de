#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"R.F.A Kleidungs Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["KAEL_SUITS_BR_F12",nil,800];
		_ret pushBack ["KAEL_SUITS_BLK_F",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F3",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F4",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F5",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F6",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F7",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F8",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F9",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F10",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F11",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F13",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F14",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F24",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F25",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F16",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F17",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F18",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F19",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F20",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F21",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F22",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F23",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F15",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F26",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F27",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F28",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F29",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F30",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F31",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F32",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F33",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F34",nil,800];
		_ret pushBack ["KAEL_SUITS_BR_F35",nil,800];
		_ret pushBack ["cg_ems9",nil,2];
		_ret pushBack ["cg_ems8",nil,2];
		_ret pushBack ["cg_ems7",nil,2];
		_ret pushBack ["cg_ems6",nil,2];
		_ret pushBack ["cg_ems5",nil,2];
		_ret pushBack ["cg_ems4",nil,2];
		_ret pushBack ["cg_ems3",nil,2];
		_ret pushBack ["cg_ems2",nil,2];
		_ret pushBack ["cg_ems1",nil,2];
		_ret pushBack ["cg_ems10",nil,2];
		_ret pushBack ["vvv_traje_bombero",nil,2];
		_ret pushBack ["vvv_traje_bombero_2",nil,2];
		_ret pushBack ["vvv_hazmat",nil,2];
		    if(__GETC__(life_mediclevel) > 0) then
		    {
			
				_ret pushBack ["vvv_traje_doctor",nil,2];
		        _ret pushBack ["pRPG_SquadCommand1",nil,2];
				_ret pushBack ["pRPG_DepCommand",nil,2];
				_ret pushBack ["pRPG_Praktikant1",nil,2];
				_ret pushBack ["pRPG_Candidate1",nil,2];
				_ret pushBack ["pRPG_FireCaptain1",nil,2];
				_ret pushBack ["pRPG_rfaLieutenant",nil,2];
				_ret pushBack ["pRPG_Lieutenant2",nil,2];
				_ret pushBack ["pRPG_Command1",nil,2];
				_ret pushBack ["pRPG_Command2",nil,2];
				_ret pushBack ["pRPG_M_Chief1",nil,2];
				_ret pushBack ["pRPG_M_Chief2",nil,2];
			
			};
			
			 if(__GETC__(life_mediclevel) > 0) then
		    {
		        _ret pushBack ["cg_ems10",nil,2];
            };
			
			 if(__GETC__(life_mediclevel) > 0) then
		    {
		        _ret pushBack ["cg_ems5",nil,2];
            };
			
			 if(__GETC__(life_mediclevel) > 0) then
		    {
		        _ret pushBack ["cg_ems6",nil,2];
				_ret pushBack ["cg_ems8",nil,2];
            };
	};
	
	//Hats
	case 1:
	{
	    _ret =
		[
			["firehat", nil, 2],
			["A3L_medic_helmet", nil, 2],
			["TCG_pdav_helmet", nil, 2],
			["H_CrewHelmetHeli_B", nil, 2]
		];
	};
	
	//Glasses
	case 2:
	{
			//beards
			_ret pushBack ["SFG_Tac_smallBeardB",nil,2];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2];
			_ret pushBack ["SFG_Tac_smallBeardG",nil,2];
			_ret pushBack ["SFG_Tac_smallBeardO",nil,2];
			_ret pushBack ["SFG_Tac_BeardB",nil,2];
			_ret pushBack ["SFG_Tac_BeardD",nil,2];
			_ret pushBack ["SFG_Tac_BeardG",nil,2];
			_ret pushBack ["SFG_Tac_BeardO",nil,2];
			_ret pushBack ["SFG_Tac_chinlessbB",nil,2];
			_ret pushBack ["SFG_Tac_chinlessbD",nil,2];
			_ret pushBack ["SFG_Tac_chinlessbG",nil,2];
			_ret pushBack ["SFG_Tac_chinlessbO",nil,2];
			_ret pushBack ["SFG_Tac_moustacheB",nil,2];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2];
			_ret pushBack ["SFG_Tac_moustacheG",nil,2];
			_ret pushBack ["SFG_Tac_moustacheO",nil,2];
			_ret pushBack ["SFG_Tac_ChopsB",nil,2];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2];
			_ret pushBack ["SFG_Tac_ChopsG",nil,2];
			_ret pushBack ["SFG_Tac_ChopsO",nil,2];
			//bears end

			_ret pushBack ["A3L_FatHead",nil,2];
			_ret pushBack ["Payday_Cagoule",nil,2];
			_ret pushBack ["Masque_Chirurgical",nil,2];
			_ret pushBack ["Masque_Solitaire",nil,2];
			_ret pushBack ["G_Spectacles",nil,2];
			_ret pushBack ["G_Spectacles_Tinted",nil,2];
			_ret pushBack ["G_Goggles_VR",nil,2];


			_ret pushBack ["G_Shades_Black",nil,2];
			_ret pushBack ["G_Shades_Blue",nil,2];
			_ret pushBack ["G_Sport_Blackred",nil,2];
			_ret pushBack ["G_Sport_Checkered",nil,2];
			_ret pushBack ["G_Sport_Blackyellow",nil,2];
			_ret pushBack ["G_Sport_BlackWhite",nil,2];
			_ret pushBack ["G_Squares",nil,1];
			_ret pushBack ["G_Aviator",nil,10];
			_ret pushBack ["G_Lady_Mirror",nil,15];
			_ret pushBack ["G_Lady_Dark",nil,15];
			_ret pushBack ["G_Lady_Blue",nil,15];
			_ret pushBack ["G_Lowprofile",nil,3];
			_ret pushBack ["G_Combat",nil,5];
			_ret pushBack ["Mask_M40","Gas Mask",5];
			
			_ret pushBack ["G_Diving",nil,50];
	};
	
	//Vest
	case 3:
	{
	
			_ret pushBack ["V_Firefighter","für Firefighter",5];
			_ret pushBack ["V_RebreatherB",nil,550];
	};
	
	//Backpacks
	case 4:
	{
	    _ret =
		[
	/*		["TRYK_B_Medbag",nil,50],
			["TRYK_B_Medbag_BK",nil,50],
			["TRYK_B_Medbag_OD",nil,50],
			["TRYK_B_Medbag_ucp",nil,50],
			["B_FieldPack_ocamo",nil,50],
			["B_Carryall_oucamo",nil,50],
			//koil
			["koilmedicwhite",nil,5500],
			["koilmedicred",nil,5500],
			["koilmedicblue",nil,5500],
			["koilmedicyellow",nil,5500],

	*/
			["cg_invisbp","Invisi-Backpack 2.0",5]
		];
	};
};

_ret;