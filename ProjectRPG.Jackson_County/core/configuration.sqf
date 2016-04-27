#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
player setVariable["playerHealth", 0, true];
myHealth = 0;
Fishing_Active = false;
shooting_death = false;
bite = false;
tryingCall = false;
phonesRinging = false;
life_quitRecently = false;
phoneDisabled = false;
myCallOwner = player;
myPhoneCall = 0;
damageChance = false;
dispatch = false;
trucking = false;
dispatch2 = false;
callInProgress = false;
noleftclick = false;
allowanims = true;
harvesting = false;
isdragging = false;
im_hunting = false;
progress_bj = false;
buy_off = false;
buying_virt_item = false;
buying_phys_item = false;
allow_sat = true;
maintenance_on = false;
phone_s_1 = false;
phone_s_2 = false;
phone_s_3 = false;
previewing_on = false;
has_job = false;
driver_test = false;
start_up = true;
checked_taxi = false;
message1_active = false;
message2_active = false;
message3_active = false;
message4_active = false;
message5_active = false;
message6_active = false;
raceDone = false;
life_rebelbadguyman = false;
life_query_time = time;
life_lastKnownPos = [0,0,0];
life_show_actions = false;
life_actions = [];
skip_all = false;
im_dead = false;
life_isdowned = false;
life_action_time = 0;
life_racing = false;
cheap_buffs = false;
life_crazy = 0;
life_cokeaddict = false;
message_active = 0;
target_licenses = "None";
usingvehicle = false;
target_houses = [];
life_cruise = false;
life_charged = false;
life_gopro = false;
life_racers = [];
koil_antispam = 0;
life_newsJobs = false;
life_bankteller = false;
life_action_delay = time;
life_damagereturn = false;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_taxi = false;
life_seatbelt = false;
life_seatwarn = false;
life_smoking = false;
life_bonging = false;
paid_recently = false;
life_siren_active = false;
life_clothing_filter = 0;
life_hungerpain = false;
life_antispamactive = false;
life_koil_race = 0;
life_koil_race2 = 0;
life_rip = 0;
life_ApplyAir = false;
prevent_loot = false;
life_nos_active = 2;
life_dontsell = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_nos_count = 0;
life_impound_inuse = false;
life_action_inUse = false;
life_sickness = false; 
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
//life_respawn_timer = 9; //Scaled in minutes
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_poop = 15;
life_std = 0;
life_maxweightdone = 0;
life_eattotal = 0;
life_dirt = 0;
life_bro = 0;
life_num = 0;
life_pizza = 0;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_breakouton = 1;
life_nospampls = 0;
life_firing_range = false;
life_signedIn = false;
life_pickup_open = false;
life_injuries = ["diseaseon","bleedingon","woundedon","fractureon","unconciouson"];
life_carSalesman = false;
life_onTestDrive = false;
life_requestingTestDrive = false;
life_testDriveRequests = [];
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_battery = 75;
life_gift_recent = false;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,10); //Five minutes
cash_in_hand = 0;
__CONST__(life_impound_car,835);
__CONST__(life_impound_boat,825);
__CONST__(life_impound_air,885);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		cash_in_bank = 12000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	case civilian: 
	{
		cash_in_bank = 12000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
	case independent: {
		cash_in_bank = 12000;
		life_paycheck = 1000;
	};
	case east:
	{
		cash_in_bank = 12000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","Jonzie_Quattroporte","Jonzie_30CSL","Jonzie_Viper","Jonzie_Datsun_Z432","Jonzie_STI","Jonzie_Escalade","Jonzie_Datsun_510","Jonzie_Ceed","Jonzie_Raptor","Jonzie_Galant","Jonzie_Corolla","Jonzie_Mini_Cooper","Jonzie_Mini_Cooper_R_spec","Jonzie_XB","Jonzie_VE","Jonzie_Ute","Jonzie_Transit","Jonzie_Flat_Bed","Jonzie_Log_Truck","Jonzie_Box_Truck","Jonzie_Tanker_Truck"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_nos",
	"life_inv_condom",
	"life_inv_medkit",
	"life_inv_cleankit",
	"life_inv_weddingring",
	"life_inv_bandage",
	"life_inv_airkit",
	"life_inv_tierope",
	"life_inv_stitches",
	"life_inv_splint",
	"life_inv_mobilephone",
	"life_inv_panicbutton",
	"life_inv_epipen",
	"life_inv_bec",
	"life_inv_MDMAu",
	"life_inv_MDMAp",
	"life_inv_methu",
	"life_inv_emerald",
	"life_inv_sapphire",
	"life_inv_ruby",
	"life_inv_methp",
	"life_inv_cokeu",
	"life_inv_cokep",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_zoobeer2",
	"life_inv_jackdaniels",
	"life_inv_vodka",
	"life_inv_jagerbomb",
	"life_inv_absinthe",
	"life_inv_redwine",
	"life_inv_whitewine",
	"life_inv_whiterussian",
	"life_inv_sexonthebeach",
	"life_inv_tequila",
	"life_inv_jackdanielsandcoke",
	"life_inv_raxsrum"	
];













//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
["license_civ_MDMA","civ"],
["license_civ_meth","civ"],
["license_civ_coke","civ"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	
	["license_civ_rifle","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",120],["heroinp",250],["cokeu",150],["cokep",350],["cannabis",250],["opium",250],["marijuana",300],["turtle",500],["hackingtool",1000],["blastingcharge",1000],["boltcutter",350],["methu",40],["methp",400],["cokeu",40],["cokep",500],["MDMAu",30],["emerald",1220],["sapphire",1520],["ruby",720],["MDMAp",360]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["weddingring",80],
	["bec",1],
	["medkit",5],
	["cleankit",1],
	["mobilephone",1],
	["panicbutton",1],
	["MDMAu",110],
	["MDMAp",650],
	["emerald",1020],
	["sapphire",1020],
	["ruby",1070],
	["methu",120],
	["methp",800],
	["cokeu",210],
	["cokep",860],
	["apple",1],
	["heroinu",185],
	["heroinp",295],
	["salema",90],
	["ornate",90],
	["mackerel",65],
	["tuna",131],
	["mullet",65],
	["catshark",100],
	["marijuana",100],
	["turtle",410],
	["rabbit",1],
	["oilp",270],
	["water",1],
	["coffee",1],
	["bandage",1],
	["airkit",1],
	["tierope",50],
	["stitches",1],
	["splint",1],
	["epipen",1],
	["turtlesoup",90],
	["donuts",1],
	["tbacon",1],
	["lockpick",600],
	["pickaxe",5],
	["redgull",1],
	["peach",1],
	["diamond",35],
	["diamondc",135],
	["iron_r",250],
	["copper_r",141],
	["salt_r",165],
	["glass",100],
	["fuelF",50],
	["wheat",18],
	["sunflower",50],
	["corn",90],
	["bean",80],
	["cotton",20],
	["olive",277],
	["opium",100],
	["cannabis",100],
	["pumpkin",110],
	["wheat seed",1],
	["sunflower seed",1],
	["corn seed",1],
	["bean seed",1],
	["cotton seed",1],
	["olive seed",1],
	["opium seed",15],
	["cannabis seed",15],
	["pumpkin seed",5],
	["Raw Meat",550],
	["raw chicken",70],
	["raw sheep meat",50],
	["raw rabbit",70],
	["spikeStrip",12],
	["cement",255],
	["goldbar",9500], 
	//Deo Additions
	["zoobeer",1], 
	["zoobeer2",1],
	["vodka",1],
	["jackdaniels",1],
	["jagerbomb",2],
	["absinthe",2],
	["redwine",2],
	["whitewine",2],
	["whiterussian",2],
	["sexonthebeach",2],
	["tequila",2],
	["jackdanielsandcoke",2],
	["condom",10],
	["nos",10],
	["BarGate",5],
	["RoadBlockConc",2],
	["RoadBlockWood",7],
	["RoadCone",1],
	["RoadConeStrip",2],
	["RoadConeB",1],
	["RoadConeStripB",5],
	["cigarette",1],
	["Rax's Rum",1]
];
__CONST__(sell_array,sell_array);

buy_array =
[
       ["cleankit",100],
        ["medkit",1200],
        ["condom",100],
        ["weddingring",10000],
        ["bandage",25],
        ["airkit",5],
        ["nos",4500],
        ["tierope",1125],
        ["stitches",1],
        ["splint",1],
        ["epipen",1],
        ["marijuana",1500],
        ["methp",1800],
        ["MDMAp",1800],
        ["cokep",1800],
        ["apple",6],
        ["rabbit",7],
        ["bec",50],
        ["mobilephone",1],
        ["panicbutton",1],
        ["salema",129],
        ["ornate",119],
        ["mackerel",125],
        ["tuna",295],
        ["mullet",125],
        ["catshark",220],
        ["marijuana",155],
        ["turtle",700],
        ["water",1],
        ["turtlesoup",250],
        ["donuts",12],
        ["coffee",1],
        ["tbacon",7],
        ["lockpick",1500],
        ["pickaxe",120],
        ["redgull",12],
        ["fuelF",85],
        ["wheat",150],
        ["sunflower",160],
        ["corn",180],
        ["bean",80],
        ["cotton",50],
        ["olive",277],
        ["opium",400],
        ["cannabis",400],
        ["pumpkin",120],
        ["wheat seed",2],
        ["sunflower seed",2],
        ["corn seed",2],
        ["bean seed",2],
        ["cotton seed",2],
        ["olive seed",2],
        ["opium seed",25],
        ["cannabis seed",25],
        ["pumpkin seed",10],
        ["Raw Meat",580],
        ["raw chicken",80],
        ["raw sheep meat",60],
        ["raw rabbit",80],
        ["peach",6],
        ["spikeStrip",250],
        ["blastingcharge",15000],
        ["hackingtool",15000],
        ["boltcutter",2500],
        ["defusekit",250],
        ["storagesmall",7500],
        ["storagebig",15000],
        // Deo's Adds
        ["zoobeer",2],
        ["zoobeer2",2],
        ["vodka",12],
        ["jackdaniels",12],
        ["jagerbomb",22],
        ["absinthe",25],
        ["redwine",22],
        ["whitewine",35],
        ["whiterussian",32],
        ["sexonthebeach",32],
        ["tequila",32],
        ["jackdanielsandcoke",32],
        ["BarGate",50],
        ["RoadBlockConc",3000],
        ["RoadBlockWood",70],
        ["RoadCone",5],
        ["RoadConeStrip",25],
        ["RoadConeB",10],
        ["RoadConeStripB",50],
        ["cigarette",925],
        ["Rax's Rum",5]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["Fish_1_i",70],
	["Fish_2_i",120],
	["Fish_3_i",160],
	["Fish_4_i",100],
	["Fish_5_i",45],
	["ItemGPS",1],
	["ToolKit",1]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[







			["tcg_hrly",0],
			["tcg_hrly_white",0],	
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],

			["wirk_h3_limo",0],





			
			["cg_peugeot_207_rc_noir",2000],
			["I_G_Van_01_fuel_F",0],

			["A3L_BMW135Sport1",0],
			["A3L_BMW135Sport2",0],
			["A3L_BMW135Sport3",0],
			["A3L_BMW135Sport4",0],
			["A3L_BMW135Sport5",0],
			["A3L_BMW135White",0],
			["A3L_BMW135Black",0],
			["A3L_BMW135Blue",0],
			["A3L_BMW135Purple",0],
			["A3L_BMW135Red",0],

			["AM_Holden_RBlue",0],			
			["AM_Holden_RRed",0],
			["AM_Holden_RWhite",0],
			["AM_Holden_RBlack",0],

	["AM_Holden_EMS",0],
		["AM_Holden_Police",0],
		["GNT_C185",0],
		["M1030",0],
		["A3L_EvoXrally_green",0],
		["A3L_EvoXrally_white",0],
		["A3L_EvoXrally_red",0],
		["A3L_EvoXrally_blue",0],
		["A3L_EvoXDarkGreen",0],
		["A3L_OffGreen",0],
		["A3L_EvoXOffYellow",0],
		["A3L_EvoXYellow",0],
		["A3L_EvoXPink",0],
		["A3L_EvoXPurple",0],
		["A3L_EvoXWhite",0],
		["A3L_EvoXBlack",0],
		["A3L_EvoXRed",0],
		["EvoXSo1",0],
		["EvoXSo2",0],
		["EvoXSo3",0],
		["EvoXSo4",0],
		["A3L_TaurusPD1",0],
		["A3L_TaurusPD2",0],
		["A3L_SuburbanCSO",0],
		["A3L_Suburban",0],
		["A3L_SuburbanUM",0],
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],

	["A3L_ChargerRed",0],
	["A3L_ChargerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhite",0],
	["A3L_Charger",0],

	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["CG_Taxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["B_MRAP_01_F",7500]
	
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[



             //MaxRacing
			["IVORY_PRIUS",3750],
			["ivory_supra",4500],
			["ivory_supra_tuned",30000],
			["ivory_isf",6000],
			["ivory_m3",7500],
			["ivory_m3_gts",16500],
			["ivory_wrx",27000],
			["ivory_lp560",63900],
			["IVORY_R8",24900],
			["IVORY_R8SPYDER",21900],
			["IVORY_REV",20700],	
			["ivory_lfa",41700],
			["ivory_c",37800],
			["ivory_gt500",24000],
             //showroom_car
			["Jonzie_Quattroporte",45000],
			["Jonzie_30CSL",9000],
			["Jonzie_Viper",13500],
			["Jonzie_Datsun_Z432",15000],
			["Jonzie_STI",21900],
			["Jonzie_Escalade",12000],
			["Jonzie_Datsun_510",6000],
			["Jonzie_Ceed",2250],
			["Jonzie_Raptor",12000],
			["Jonzie_Galant",1500],
			["Jonzie_Corolla",1050],
			["Jonzie_Mini_Cooper",300],
			["Jonzie_Mini_Cooper_R_spec",1500],
			["Jonzie_XB",9000],
			["Jonzie_VE",9000],
			["Jonzie_Ute",9000],
	         //kart_shop
			["A3L_Karts",3000],
			["C_Kart_01_Blu_F",4500],
			["C_Kart_01_Fuel_F",4500],
			["C_Kart_01_Red_F",4500],
			["C_Kart_01_Vrana_F",4500],
	         //exo_car
			["cg_peugeot_207_rc_noir",1200],
			["cg_peugeot_207_rc_violet",1200],
			["cg_peugeot_207_rc_rose",1200],
			["cg_peugeot_207_rc_orange",1200],
			["cg_peugeot_207_rc_grise",1200],
			["cg_peugeot_207_rc_vert",1200],
			["cg_peugeot_207_rc_bleufonce",1200],
			["cg_peugeot_207_rc_bleu",1200],
			["cg_peugeot_207_rc_white",1200],
			["cg_peugeot_207_rc_jaune",1200],
			["cg_volkswagen_touareg_noir",1800],
			["cg_volkswagen_touareg_violet",1800],
			["cg_volkswagen_touareg_rose",1800],
			["cg_volkswagen_touareg_orange",1800],
			["cg_volkswagen_touareg_grise",1800],
			["cg_volkswagen_touareg_vert",1800],
			["cg_volkswagen_touareg_bleufonce",1800],
			["cg_volkswagen_touareg_bleu",1800],
			["cg_volkswagen_touareg_white",1800],
			["cg_volkswagen_touareg_jaune",1800],
			["cg_vw_golfvi_noir",1800],
			["cg_vw_golfvi_violet",1800],
			["cg_vw_golfvi_rose",1800],
			["cg_vw_golfvi_orange",1800],
			["cg_vw_golfvi_grise",1800],
			["cg_vw_golfvi_vert",1800],
			["cg_vw_golfvi_bleufonce",1800],
			["cg_vw_golfvi_bleu",1800],
			["cg_vw_golfvi_white",1800],
			["cg_vw_golfvi_jaune",1800],
			["cg_jeep_cherokee_noir",4170],
			["cg_jeep_cherokee_violet",4170],
			["cg_jeep_cherokee_rose",4170],
			["cg_jeep_cherokee_orange",4170],
			["cg_jeep_cherokee_grise",4170],
			["cg_jeep_cherokee_vert",4170],
			["cg_jeep_cherokee_bleufonce",4170],
			["cg_jeep_cherokee_bleu",4170],
			["cg_jeep_cherokee_white",4170],
			["cg_jeep_cherokee_jaune",4170],
			["cg_audi_rs4_noir",18000],
			["cg_audi_rs4_violet",18000],
			["cg_audi_rs4_rose",18000],
			["cg_audi_rs4_orange",18000],
			["cg_audi_rs4_grise",18000],
			["cg_audi_rs4_vert",18000],
			["cg_audi_rs4_bleufonce",18000],
			["cg_audi_rs4_bleu",18000],
			["cg_audi_rs4_white",18000],
			["cg_audi_rs4_jaune",18000],
			["cg_audi_rs5_noir",19500],
			["cg_audi_rs5_violet",19500],
			["cg_audi_rs5_rose",19500],
			["cg_audi_rs5_orange",19500],
			["cg_audi_rs5_grise",19500],
			["cg_audi_rs5_vert",19500],
			["cg_audi_rs5_bleufonce",19500],
			["cg_audi_rs5_bleu",19500],
			["cg_audi_rs5_white",19500],
			["cg_audi_rs5_jaune",19500],
            ["shounka_rs6_orange",21000],
            ["shounka_rs6_violet",21000],
            ["shounka_rs6_grise",21000],
            ["shounka_rs6_rose",21000],
            ["shounka_rs6_jaune",21000],
            ["shounka_rs6_rouge",21000],
            ["shounka_rs6_bleufonce",21000],
            ["shounka_rs6",21000],
            ["shounka_rs6_noir",21000],	
			["cg_bmw_1series_m_noir",8700],
			["cg_bmw_1series_m_violet",8700],
			["cg_bmw_1series_m_rose",8700],
			["cg_bmw_1series_m_orange",8700],
			["cg_bmw_1series_m_grise",8700],
			["cg_bmw_1series_m_vert",8700],
			["cg_bmw_1series_m_bleufonce",8700],
			["cg_bmw_1series_m_bleu",8700],
			["cg_bmw_1series_m_white",8700],
			["cg_bmw_1series_m_jaune",8700],
			["cg_bmw_m6_noir",11700],
			["cg_bmw_m6_violet",11700],
			["cg_bmw_m6_rose",11700],
			["cg_bmw_m6_orange",11700],
			["cg_bmw_m6_bleufonce",11700],
			["cg_bmw_m6_bleu",11700],
			["cg_bmw_m6_white",11700],
			["cg_bmw_m6_jaune",11700],						
            ["A3L_BMW135Red",6600],
            ["A3L_BMW135Purple",6600],
            ["A3L_BMW135Blue",6600],
            ["A3L_BMW135Black",6600],
            ["A3L_BMW135White",6600],
            ["A3L_BMW135Sport5",6600],
            ["A3L_BMW135Sport4",6600],
            ["A3L_BMW135Sport3",6600],
            ["A3L_BMW135Sport2",6600],
            ["A3L_BMW135Sport1",6600], 			
			["cg_renault_megane_rs_2015_noir",11700],
			["cg_renault_megane_rs_2015_violet",11700],
			["cg_renault_megane_rs_2015_rose",11700],
			["cg_renault_megane_rs_2015_orange",11700],
			["cg_renault_megane_rs_2015_grise",11700],
			["cg_renault_megane_rs_2015_vert",11700],
			["cg_renault_megane_rs_2015_bleufonce",11700],
			["cg_renault_megane_rs_2015_bleu",11700],
			["cg_renault_megane_rs_2015_white",11700],
			["cg_renault_megane_rs_2015_jaune",11700],
			["Mrshounka_c63_2015_bleufonce",11400],
			["Mrshounka_c63_2015_grise",11400],
			["Mrshounka_c63_2015_jaune",11400],
			["Mrshounka_c63_2015_noir",11400],
			["Mrshounka_c63_2015_orange",11400],
			["Mrshounka_c63_2015_rose",11400],
			["Mrshounka_c63_2015_rouge",11400],
			["Mrshounka_c63_2015_violet",11400],
			["cg_raptor_truck_noir",11700],
			["cg_raptor_truck_violet",11700],
			["cg_raptor_truck_rose",11700],
			["cg_raptor_truck_orange",11700],
			["cg_raptor_truck_grise",11700],
			["cg_raptor_truck_vert",11700],
			["cg_raptor_truck_bleufonce",11700],
			["cg_raptor_truck_bleu",11700],
			["cg_raptor_truck_white",11700],
			["cg_raptor_truck_jaune",11700],
			["cg_porsche_911_82_noir",14700],
			["cg_porsche_911_82_violet",14700],
			["cg_porsche_911_82_rose",14700],
			["cg_porsche_911_82_orange",14700],
			["cg_porsche_911_82_grise",14700],
			["cg_porsche_911_82_vert",14700],
			["cg_porsche_911_82_bleufonce",14700],
			["cg_porsche_911_82_bleu",14700],
			["cg_porsche_911_82_white",14700],
			["cg_porsche_911_82_jaune",14700],
			["cg_porsche_cayenne_noir",14700],
			["cg_porsche_cayenne_violet",14700],
			["cg_porsche_cayenne_rose",14700],
			["cg_porsche_cayenne_orange",14700],
			["cg_porsche_cayenne_grise",14700],
			["cg_porsche_cayenne_vert",14700],
			["cg_porsche_cayenne_bleufonce",14700],
			["cg_porsche_cayenne_bleu",14700],
			["cg_porsche_cayenne_white",14700],
			["cg_porsche_cayenne_jaune",14700],
			["cg_bowler_offroad_noir",14700],
			["cg_bowler_offroad_violet",14700],
			["cg_bowler_offroad_rose",14700],
			["cg_bowler_offroad_orange",14700],
			["cg_bowler_offroad_grise",14700],
			["cg_bowler_offroad_vert",14700],
			["cg_bowler_offroad_bleufonce",14700],
			["cg_bowler_offroad_bleu",14700],
			["cg_bowler_offroad_white",14700],
			["cg_bowler_offroad_jaune",14700],
			["Mrshounka_agera_p_noir",147000],
			["Mrshounka_agera_p_bleu",147000],
			["Mrshounka_agera_p_jaune",147000],			
			["shounka_gt_bleufonce",18000],
			["shounka_gt_grise",18000],
			["shounka_gt_jaune",18000],
			["shounka_gt_noir",18000],
			["shounka_gt_orange",18000],
			["shounka_gt_rose",18000],
			["shounka_gt_rouge",18000],
			["shounka_gt_violet",18000],
			["Mrshounka_mercedes_190_p_bleufonce",18600],
			["Mrshounka_mercedes_190_p_grise",18600],
			["Mrshounka_mercedes_190_p_jaune",18600],
			["Mrshounka_mercedes_190_p_noir",18600],
			["Mrshounka_mercedes_190_p_orange",18600],
			["Mrshounka_mercedes_190_p_rose",18600],
			["Mrshounka_mercedes_190_p_rouge",18600],
			["Mrshounka_mercedes_190_p_violet",18600],
			//HOLDENS
			["AM_Holden_White",23550],
			["AM_Holden_Black",23550],
			["AM_Holden_Green",23550],
			["AM_Holden_DarkGreen",23550],
			["AM_Holden_OffGreen",23550],
			["AM_Holden_blue",23550],
			["AM_Holden_OffYellow",23550],
			["AM_Holden_Pink",23550],
			["AM_Holden_Purple",23550],
			["AM_Holden_Yellow",23550],
			["cg_nissan_gtr_2012_noir",23700],
			["cg_nissan_gtr_2012_violet",23700],
			["cg_nissan_gtr_2012_rose",23700],
			["cg_nissan_gtr_2012_orange",23700],
			["cg_nissan_gtr_2012_grise",23700],
			["cg_nissan_gtr_2012_vert",23700],
			["cg_nissan_gtr_2012_bleufonce",23700],
			["cg_nissan_gtr_2012_bleu",23700],
			["cg_nissan_gtr_2012_white",23700],
			["cg_nissan_gtr_2012_jaune",23700],		
			["shounka_mp4_bleufonce",33300],
			["shounka_mp4_grise",33300],
			["shounka_mp4_jaune",33300],
			["shounka_mp4_noir",33300],
			["shounka_mp4_orange",33300],
			["shounka_mp4_rose",33300],
			["shounka_mp4_rouge",33300],
			["shounka_mp4_violet",33300],
			["shounka_clk_bleufonce",33300],
			["shounka_clk_grise",33300],
			["shounka_clk_jaune",33300],
			["shounka_clk_noir",33300],
			["shounka_clk_orange",33300],
			["shounka_clk_rose",33300],
			["shounka_clk_rouge",33300],
			["shounka_clk_violet",33300],
			["cg_jeep_blinde_noir",41700],
			["cg_jeep_blinde_violet",41700],
			["cg_jeep_blinde_rose",41700],
			["cg_jeep_blinde_orange",41700],
			["cg_jeep_blinde_grise",41700],
			["cg_jeep_blinde_vert",41700],
			["cg_jeep_blinde_bleufonce",41700],
			["cg_jeep_blinde_bleu",41700],
			["cg_jeep_blinde_white",41700],
			["cg_jeep_blinde_jaune",41700],
			["cg_lancer_evo_x_noir",47700],
			["cg_lancer_evo_x_violet",47700],
			["cg_lancer_evo_x_rose",47700],
			["cg_lancer_evo_x_orange",47700],
			["cg_lancer_evo_x_grise",47700],
			["cg_lancer_evo_x_vert",47700],
			["cg_lancer_evo_x_bleufonce",47700],
			["cg_lancer_evo_x_bleu",47700],
			["cg_lancer_evo_x_white",47700],
			["cg_lancer_evo_x_jaune",47700],
			["Mrshounka_pagani_c_bleufonce",47700],
			["Mrshounka_pagani_c_grise",47700],
			["Mrshounka_pagani_c_jaune",47700],
			["Mrshounka_pagani_c_noir",47700],
			["Mrshounka_pagani_c_orange",47700],
			["Mrshounka_pagani_c_rose",47700],
			["Mrshounka_pagani_c_rouge",47700],
			["Mrshounka_pagani_c_violet",47700],
			["cg_lambo_veneno_noir",47700],
			["cg_lambo_veneno_violet",47700],
			["cg_lambo_veneno_rose",47700],
			["cg_lambo_veneno_orange",47700],
			["cg_lambo_veneno_grise",47700],
			["cg_lambo_veneno_vert",47700],
			["cg_lambo_veneno_bleufonce",47700],
			["cg_lambo_veneno_bleu",47700],
			["cg_lambo_veneno_white",47700],
			["cg_lambo_veneno_jaune",47700],
			//Holden racing
			["AM_Holden_RBlue",59550],			
			["AM_Holden_RRed",59550],
			["AM_Holden_RWhite",59550],
			["AM_Holden_RBlack",59550],	
			["A3L_Veyron_purple",63000],
            ["A3L_Veyron_orange",63000],
            ["A3L_Veyron_red",63000],
            ["A3L_Veyron_black",63000],
            ["A3L_Veyron_white",63000],
            ["A3L_Veyron",63000],
			["Mrshounka_lykan_c_bleufonce",60000],
			["Mrshounka_lykan_c_grise",60000],
			["Mrshounka_lykan_c_jaune",60000],
			["Mrshounka_lykan_c_noir",60000],
			["Mrshounka_lykan_c_orange",60000],
			["Mrshounka_lykan_c_rose",60000],
			["Mrshounka_lykan_c_rouge",60000],
			["Mrshounka_lykan_c_violet",60000],
			["A3L_Ferrari458red",67500],
            ["A3L_Ferrari458black",67500],
            ["A3L_Ferrari458white",67500],
            ["A3L_Ferrari458blue",67500],
			["shounka_f430_spider_bleufonce",66000],
			["shounka_f430_spider_grise",66000],
			["shounka_f430_spider_jaune",66000],
			["shounka_f430_spider_noir",66000],
			["shounka_f430_spider_orange",66000],
			["shounka_f430_spider_rose",66000],
			["shounka_f430_spider_rouge",66000],
			["shounka_f430_spider_violet",66000],
			["shounka_porsche911_bleufonce",69000],
			["shounka_porsche911_grise",69000],
			["shounka_porsche911_jaune",69000],
			["shounka_porsche911_noir",69000],
			["shounka_porsche911_orange",69000],
			["shounka_porsche911_rose",69000],
			["shounka_porsche911_rouge",69000],
			["shounka_porsche911_violet",69000],
			["CG_Lamborghini_Aventador_Red", 90000],
			["CG_Lamborghini_Aventador_Black", 90000],
			["CG_Lamborghini_Aventador_Blue", 90000],
			["CG_Lamborghini_Aventador_Green", 90000],
			["CG_Lamborghini_Aventador_Orange", 90000],
			["CG_Lamborghini_Aventador_Purple", 90000],
			["CG_Lamborghini_Aventador_White", 90000],
			["A3L_EvoXrally_green",100000],
			["A3L_EvoXrally_white",100000],
			["A3L_EvoXrally_red",100000],
			["A3L_EvoXrally_blue",100000],
             //chev_car
			["DAR_TahoeCivSilver",4200],
			["DAR_TahoeCivBlue",4200],
			["DAR_TahoeCivRed",4200],
			["DAR_TahoeCivBlack",4200],
			["A3L_SuburbanWhite",5700],
			["A3L_SuburbanBlue",5700],
			["A3L_SuburbanRed",5700],
			["A3L_SuburbanBlack",5700],
			["A3L_SuburbanGrey",5700],
			["A3L_SuburbanOrange",5700],
			["A3L_Camaro",5850],
	        //ford_car
			["cg_raptor_truck_noir",11700],
			["cg_raptor_truck_violet",11700],
			["cg_raptor_truck_rose",11700],
			["cg_raptor_truck_orange",11700],
			["cg_raptor_truck_grise",11700],
			["cg_raptor_truck_vert",11700],
			["cg_raptor_truck_bleufonce",11700],
			["cg_raptor_truck_bleu",11700],
			["cg_raptor_truck_white",11700],
			["cg_raptor_truck_jaune",11700],
			["cg_raptor_truck_va_noir",11700],
			["cg_raptor_truck_va_violet",11700],
			["cg_raptor_truck_va_rose",11700],
			["cg_raptor_truck_va_orange",11700],
			["cg_raptor_truck_va_grise",11700],
			["cg_raptor_truck_va_vert",11700],
			["cg_raptor_truck_va_bleufonce",11700],
			["cg_raptor_truck_va_bleu",11700],
			["cg_raptor_truck_va_white",11700],
			["cg_raptor_truck_va_jaune",11700],
			["cg_ford_mustang_noir",16770],
			["cg_ford_mustang_violet",16770],
			["cg_ford_mustang_rose",16770],
			["cg_ford_mustang_orange",16770],
			["cg_ford_mustang_grise",16770],
			["cg_ford_mustang_vert",16770],
			["cg_ford_mustang_bleufonce",16770],
			["cg_ford_mustang_bleu",16770],
			["cg_ford_mustang_white",16770],
			["cg_ford_mustang_jaune",16770],
			["cg_ford_mustang_rouge",16770],
	        //dodge_car
			["AM_2015C_Black",6300],
			["AM_2015C_blue",6300],
			["AM_2015C_white",6300],
			["cg_dodge_charger_2015_noir",7770],
			["cg_dodge_charger_2015_violet",7770],
			["cg_dodge_charger_2015_rose",7770],
			["cg_dodge_charger_2015_orange",7770],
			["cg_dodge_charger_2015_grise",7770],
			["cg_dodge_charger_2015_vert",7770],
			["cg_dodge_charger_2015_bleufonce",7770],
			["cg_dodge_charger_2015_bleu",7770],
			["cg_dodge_charger_2015_white",7770],
		   ["cg_dodge_charger_2015_jaune",7770],
		   ["cg_dodge_charger_2015_rouge",7770],
           ["A3L_ChallengerWhite",9000],
           ["A3L_ChallengerRed",9000],
           ["A3L_ChallengerBlack",9000],
           ["A3L_ChallengerBlue",9000],
           ["A3L_ChallengerGreen",9000],
           ["A3L_Challenger",9000],
            //civ_car
			["CG_Taxi",333],
	     	["critgamin_smart_civ",333],
			["critgamin_smart_bleu",540],
			["critgamin_smart_noir",540],
			["critgamin_smart_bleufonce",540],
			["critgamin_smart_rouge",540],
			["critgamin_smart_jaune",540],
			["critgamin_smart_rose",540],
			["critgamin_smart_grise",540],
			["critgamin_smart_violet",540],
			["critgamin_smart_orange",540],
			["critgamin_smart_vert",540],
			["critgamin_contown_civ",540],
			["critgamin_contown_bleu",540],
			["critgamin_contown_noir",540],
			["critgamin_contown_bleufonce",540],
			["critgamin_contown_rouge",540],
			["critgamin_contown_jaune",540],
			["critgamin_contown_rose",540],
			["critgamin_contown_grise",540],
			["critgamin_contown_violet",540],
			["critgamin_contown_jaune",540],
			["critgamin_contown_orange",540],			
			["critgamin_contown_vert",540],
			["critgamin_vangmcc_civ_noir",540],
			["critgamin_vangmcc_civ_bleufonce",540],
			["critgamin_vangmcc_civ_bleu",540],
			["critgamin_vangmcc_civ_vert",540],
			["critgamin_vangmcc_civ_rouge",540],
			["critgamin_vangmcc_civ_jaune",540],
			["critgamin_vangmcc_civ_rose",540],
			["critgamin_vangmcc_civ_grise",540],
			["critgamin_vangmcc_civ_violet",540],
			["critgamin_vangmcc_civ_orange",540],
			["cg_mercedes_sprint_van_noir",750],
			["cg_mercedes_sprint_van_violet",750],
			["cg_mercedes_sprint_van_rose",750],
			["cg_mercedes_sprint_van_orange",750],
			["cg_mercedes_sprint_van_grise",750],
			["cg_mercedes_sprint_van_vert",750],
			["cg_mercedes_sprint_van_bleufonce",750],
			["cg_mercedes_sprint_van_bleu",750],
			["cg_mercedes_sprint_van_white",750],
			["cg_mercedes_sprint_van_jaune",750],
			["cg_mercedes_sprint_van_rouge",750],
			["cg_citroen_c4_noir",1470],
			["cg_citroen_c4_violet",1470],
			["cg_citroen_c4_rose",1470],
			["cg_citroen_c4_orange",1470],
			["cg_citroen_c4_grise",1470],
			["cg_citroen_c4_vert",1470],
			["cg_citroen_c4_bleufonce",1470],
			["cg_citroen_c4_bleu",1470],
			["cg_citroen_c4_white",1470],
			["cg_citroen_c4_jaune",1470],
			["cg_citroen_c4_rouge",1470],
			["cg_renault_twingo_noir",1470],
			["cg_renault_twingo_violet",1470],
			["cg_renault_twingo_rose",1470],
			["cg_renault_twingo_orange",1470],
			["cg_renault_twingo_grise",1470],
			["cg_renault_twingo_vert",1470],
			["cg_renault_twingo_bleufonce",1470],
			["cg_renault_twingo_bleu",1470],
			["cg_renault_twingo_white",1470],
			["cg_renault_twingo_jaune",1470],
			["cg_renault_twingo_rouge",1470],
			["cg_citroen_ds3_noir",1470],
			["cg_citroen_ds3_violet",1470],
			["cg_citroen_ds3_rose",1470],
			["cg_citroen_ds3_orange",1470],
			["cg_citroen_ds3_grise",1470],
			["cg_citroen_ds3_vert",1470],
			["cg_citroen_ds3_bleufonce",1470],
			["cg_citroen_ds3_bleu",1470],
			["cg_citroen_ds3_white",1470],
			["cg_citroen_ds3_jaune",1470],
			["cg_citroen_ds3_rouge",1470],
			["cg_citroen_ds4_noir",1770],
			["cg_citroen_ds4_violet",1770],
			["cg_citroen_ds4_rose",1770],
			["cg_citroen_ds4_orange",1770],
			["cg_citroen_ds4_grise",1770],
			["cg_citroen_ds4_vert",1770],
			["cg_citroen_ds4_bleufonce",1770],
			["cg_citroen_ds4_bleu",1770],
			["cg_citroen_ds4_white",1770],
			["cg_citroen_ds4_jaune",1770],
			["cg_citroen_ds4_rouge",1770],
			["cg_peugeot_308_gti_civ_noir",1770],
			["cg_peugeot_308_gti_civ_violet",1770],
			["cg_peugeot_308_gti_civ_rose",1770],
			["cg_peugeot_308_gti_civ_orange",1770],
			["cg_peugeot_308_gti_civ_grise",1770],
			["cg_peugeot_308_gti_civ_vert",1770],
			["cg_peugeot_308_gti_civ_bleufonce",1770],
			["cg_peugeot_308_gti_civ_bleu",1770],
			["cg_peugeot_308_gti_civ_white",1770],
			["cg_peugeot_308_gti_civ_jaune",1770],
			["cg_peugeot_308_gti_civ_rouge",1770],
			["cg_peugeot_308_rcz_noir",1770],
			["cg_peugeot_308_rcz_violet",1770],
			["cg_peugeot_308_rcz_rose",1770],
			["cg_peugeot_308_rcz_orange",1770],
			["cg_peugeot_308_rcz_grise",1770],
			["cg_peugeot_308_rcz_vert",1770],
			["cg_peugeot_308_rcz_bleufonce",1770],
			["cg_peugeot_308_rcz_bleu",1770],
			["cg_peugeot_308_rcz_white",1770],
			["cg_peugeot_308_rcz_jaune",1770],
			["cg_peugeot_308_rcz_rouge",1770],
			["Mrshounka_Alfa_Romeo_bleufonce",2550],
			["Mrshounka_Alfa_Romeo_grise",2550],
			["Mrshounka_Alfa_Romeo_jaune",2550],
			["Mrshounka_Alfa_Romeo_noir",2550],
			["Mrshounka_Alfa_Romeo_orange",2550],
			["Mrshounka_Alfa_Romeo_rose",2550],
			["Mrshounka_Alfa_Romeo_rouge",2550],
			["Mrshounka_Alfa_Romeo_violet",2550],
			["S_Rangerover_Black",2550],
			["S_Rangerover_Red",2550],
			["S_Rangerover_Blue",2550],
			["S_Rangerover_Green",2550],
			["S_Rangerover_Purple",2550],
			["S_Rangerover_Grey",2550],
			["S_Rangerover_Orange",2550],
			["S_Rangerover_White",2550],
			["POP_Qashqai_amarillo",2550],
			["pop_toyota_gt86_Blanco",2550],
			["pop_toyota_gt86_silver",2550],
            ["pop_toyota_gt86_gris",2550],
            ["pop_toyota_gt86_negro",2550],
            ["pop_toyota_gt86_azul",2550],
            ["pop_toyota_gt86_rojo",2550],
			["cg_peugeot_508_civ_noir",4770],
			["cg_peugeot_508_civ_violet",4770],
			["cg_peugeot_508_civ_rose",4770],
			["cg_peugeot_508_civ_orange",4770],
			["cg_peugeot_508_civ_grise",4770],
			["cg_peugeot_508_civ_vert",4770],
			["cg_peugeot_508_civ_bleufonce",4770],
			["cg_peugeot_508_civ_bleu",4770],
			["cg_peugeot_508_civ_white",4770],
			["cg_peugeot_508_civ_jaune",4770],
			["cg_peugeot_508_civ_rouge",4770],
			["A3L_JeepGrayBlack",5700],
            ["A3L_JeepGrayTan",5700],
            ["A3L_JeepTanTan",5700],
            ["A3L_JeepTanBlack",5700],
            ["A3L_JeepRedBlack",5700],
            ["A3L_JeepRedTan",5700],
            ["A3L_JeepGreenBlack",5700],
            ["A3L_JeepGreenTan",5700],
            ["A3L_JeepWhiteBlack",5700],
            ["A3L_Jeep",5700],
			["shounka_transam_orange",12000],
            ["shounka_transam_violet",12000],
            ["shounka_transam_grise",12000],
            ["shounka_transam_rose",12000],
            ["shounka_transam_jaune",12000],
            ["shounka_transam_rouge",12000],
            ["shounka_transam_bleufonce",12000],
            ["shounka_transam_noir",12000],
            ["shounka_transam",12000],
	        //civ_motorbike
			["tcg_hrly",750],
			["tcg_hrly_white",750],	
			["tcg_hrly_red",750],
			["tcg_hrly_metal",750],
			["tcg_hrly_blue",750],
			["tcg_hrly_limited",750],
			["tcg_hrly_demon",750],
			["tcg_hrly_coco",750],
			["tcg_hrly_orig1",750],
			["tcg_hrly_orig2",750],
			["tcg_hrly_skeleton",1650],
			["tcg_hrly_gay",1950],
			["cg_ducati_civ_noir",4770],
			["cg_ducati_civ_violet",4770],
			["cg_ducati_civ_rose",4770],
			["cg_ducati_civ_orange",4770],
			["cg_ducati_civ_grise",4770],
			["cg_ducati_civ_vert",4770],
			["cg_ducati_civ_bleufonce",4770],
			["cg_ducati_civ_bleu",4770],
			["cg_ducati_civ_white",4770],
			["cg_ducati_civ_jaune",4770],
			["cg_ducati_civ_rouge",4770],
	         //civ_truck
			["Jonzie_Transit",750],
			["C_Van_01_fuel_F",2100],
			["C_Van_01_box_F",2700],
			["C_Van_01_transport_F",2250],
			["shounka_nemo_bleufonce",2250],
			["shounka_nemo_grise",2250],
			["shounka_nemo_jaune",2250],
			["shounka_nemo_noir",2250],
			["shounka_nemo_orange",2250],
			["shounka_nemo_rose",2250],
			["shounka_nemo_rouge",2250],
			["shounka_nemo_violet",2250],
			["cg_hummer_h1_noir",5700],
			["cg_hummer_h1_violet",5700],
			["cg_hummer_h1_rose",5700],
			["cg_hummer_h1_orange",5700],
			["cg_hummer_h1_grise",5700],
			["cg_hummer_h1_vert",5700],
			["cg_hummer_h1_bleufonce",5700],
			["cg_hummer_h1_bleu",5700],
			["cg_hummer_h1_white",5700],
			["cg_hummer_h1_jaune",5700],
			["shounka_h2_bleufonce",6300],
			["shounka_h2_grise",6300],
			["shounka_h2_jaune",6300],
			["shounka_h2_noir",6300],
			["shounka_h2_orange",6300],
			["shounka_h2_rose",6300],
			["shounka_h2_rouge",6300],
			["shounka_h2_violet",6300],
			["A3L_Bus",3900],
			["pop_bus_p",3900],
			["cg_daf_xf_euro6_noir",7770],
			["cg_daf_xf_euro6_violet",7770],
			["cg_daf_xf_euro6_rose",7770],
			["cg_daf_xf_euro6_orange",7770],
			["cg_daf_xf_euro6_grise",7770],
			["cg_daf_xf_euro6_vert",7770],
			["cg_daf_xf_euro6_bleufonce",7770],
			["cg_daf_xf_euro6_white",7770],
			["cg_daf_xf_euro6_jaune",7770],
			["cg_daf_xf_euro6_rouge",7770],
			["Jonzie_Flat_Bed",7770],
			["Jonzie_Log_Truck",7770],
			["Jonzie_Box_Truck",7770],
			["Jonzie_Tanker_Truck",7770],
			["cg_renault_magnum_truck_f_noir",13770],
			["cg_renault_magnum_truck_f_violet",13770],
			["cg_renault_magnum_truck_f_rose",13770],
			["cg_renault_magnum_truck_f_orange",13770],
			["cg_renault_magnum_truck_f_grise",13770],
			["cg_renault_magnum_truck_f_vert",13770],
			["cg_renault_magnum_truck_f_white",13770],
			["cg_renault_magnum_truck_f_jaune",13770],
			["shounka_avalanche_bleufonce",21000],
			["shounka_avalanche_grise",21000],
			["shounka_avalanche_jaune",21000],
			["shounka_avalanche_noir",21000],
			["shounka_avalanche_orange",21000],
			["shounka_avalanche_rose",21000],
			["shounka_avalanche_rouge",21000],
			["shounka_avalanche_violet",21000],
			["shounka_ivceco_bleufonce",30000],
			["shounka_ivceco_grise",30000],
			["shounka_ivceco_jaune",30000],
			["shounka_ivceco_noir",30000],
			["shounka_ivceco_orange",30000],
			["shounka_ivceco_rose",30000],
			["shounka_ivceco_rouge",30000],
			["shounka_ivceco_violet",30000],
			["Nhz_audia8limo",9900],
			["cg_audi_a8_limo_noir",35700],
			["cg_audi_a8_limo_violet",35700],
			["cg_audi_a8_limo_rose",35700],
			["cg_audi_a8_limo_orange",35700],
			["cg_audi_a8_limo_grise",35700],
			["cg_audi_a8_limo_vert",35700],
			["cg_audi_a8_limo_bleufonce",35700],
			["cg_audi_a8_limo_bleu",35700],
			["cg_audi_a8_limo_white",35700],
			["cg_audi_a8_limo_jaune",35700],
			["wirk_h3_limo",123900],
	         //reb_car
			["B_Quadbike_01_F",150],
			["I_G_Van_01_fuel_F",4200],
			["B_Heli_Light_01_F",21000],
			["B_G_Offroad_01_F",4950],
			["O_Heli_Light_02_unarmed_F",75000],
	         //cop_car
			["ivory_wrx_cop_marked",6000],
			["ivory_wrx_cop_unmarked",6000],
			["ivory_wrx_cop_slicktop",6000],
			["A3L_CVPIFPBDOC",600],
			["A3L_TaurusCO2",750],
			["cg_cvpifpblbpd",600],	
			["cg_TaurusPD1",750],	
			["DAR_ExplorerPolice",1200],
			["charger_pd_skinned",2700],
			["cg_ss2",750],
			["DAR_ExplorerSheriff",1200],
			["charger_sh_skinned",2700],			
			["cg_suburban_sert_pol",1200],					
			["cg_evoSERT1",2100],
			["charger_sert",2700],
			["cg_h2_sert",3300],	
			["AM_Holden_SO",1200],		
			["A3L_CVPIUC",600],
			["A3L_CVPIUCBlack",600],
			["A3L_CVPIUCBlue",600],
			["cg_mercedes_sprinter_pol_base_reg",750],
			["cg_ducati_pol_reg",750],			
			["DAR_ExplorerPoliceStealth",900],			
			["A3L_jailBus",1500],
	         //civ_air
			["B_Heli_Light_01_F",10500],
			["ivory_b206",10500],
			["ivory_b206_news",12000],
			["CUP_C_DC3_CIV",24000],
			["CUP_C_C47_CIV",30000],			
			["GNT_C185",30000],
			["IVORY_CRJ200_1",30000],
			["IVORY_ERJ135_1",30000],
             //cop_air	
			["B_Heli_Light_01_F",1350],
			["C_Heli_Light_01_civil_F",1350],
			["EC635_SAR",600],
			["EC635_PRPG_SERT",600],
			["melb_h6m",2550],
			["B_Heli_Light_01_F",1350],
			["EC635_SAR",600],
			["EC635_PRPG_SERT",600],
			["C_Heli_Light_01_civil_F",1350]


];
__CONST__(life_garage_sell,life_garage_sell);
