////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Tue Apr 26 11:47:23 2016 : Created on Tue Apr 26 11:47:23 2016
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class DRPG_Wheeled : DODGE\Viper_08\config.bin{
class DefaultEventhandlers;
class CfgPatches
{
	class Test_car_F
	{
		units[] = {"C_Test_Car_01_F","C_Test_Car_01_Black_F","C_test_Car_01_anotherVariant_F"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Soft_F"};
	};
};
class WeaponFireGun;
class WeaponCloudsGun;
class WeaponFireMGun;
class WeaponCloudsMGun;
class CfgVehicles
{
	class Car;
	class Car_F: Car
	{
		class HitPoints
		{
			class HitLFWheel;
			class HitLF2Wheel;
			class HitRFWheel;
			class HitRF2Wheel;
			class HitBody;
			class HitGlass1;
			class HitGlass2;
			class HitGlass3;
			class HitGlass4;
		};
		class EventHandlers;
	};
	class DRPG_08Viper_Base: Car_F
	{
		model = "\DRPG_Wheeled\DODGE\Viper_08\DRPG_Viper_08";
		picture = "DRPG_VehicleData\UI\icon.paa";
		Icon = "DRPG_VehicleData\UI\icon.paa";
		vehicleClass = "DRPG_Civilian";
		hiddenSelections[] = {"camo1","plate1","plate2","plate3","plate4","plate5","plate6","plate7"};
		terrainCoef = 6.5;
		turnCoef = 2.5;
		precision = 10;
		brakeDistance = 3;
		acceleration = 15;
		fireResistance = 5;
		armor = 32;
		cost = 50000;
		transportMaxBackpacks = 3;
		transportSoldier = 1;
		wheelDamageRadiusCoef = 0.9;
		wheelDestroyRadiusCoef = 0.4;
		maxFordingDepth = 0.5;
		waterResistance = 1;
		crewCrashProtection = 0.5;
		driverLeftHandAnimName = "drivewheel";
		driverRightHandAnimName = "drivewheel";
		class TransportItems
		{
			class _xx_FirstAidKit
			{
				name = "FirstAidKit";
				count = 4;
			};
		};
		class eventhandlers
		{
			init = "(_this select 0) execVM ""\PRPG_Data\Scripts\Plate_Skins.sqf""";
		};
		class CargoTurret;
		class Turrets{};
		class HitPoints: HitPoints
		{
			class HitLFWheel: HitLFWheel
			{
				armor = 0.525;
				passThrough = 0;
			};
			class HitLF2Wheel: HitLF2Wheel
			{
				armor = 0.525;
				passThrough = 0;
			};
			class HitRFWheel: HitRFWheel
			{
				armor = 0.525;
				passThrough = 0;
			};
			class HitRF2Wheel: HitRF2Wheel
			{
				armor = 0.525;
				passThrough = 0;
			};
			class HitFuel
			{
				armor = 0.5;
				material = -1;
				name = "fueltank";
				visual = "";
				passThrough = 0.2;
			};
			class HitEngine
			{
				armor = 0.5;
				material = -1;
				name = "engine";
				visual = "";
				passThrough = 0.2;
			};
			class HitBody: HitBody
			{
				name = "body";
				visual = "camo1";
				passThrough = 1;
			};
			class HitGlass1: HitGlass1
			{
				armor = 0.25;
			};
			class HitGlass2: HitGlass2
			{
				armor = 0.25;
			};
			class HitGlass3: HitGlass3
			{
				armor = 0.25;
			};
			class HitGlass4: HitGlass4
			{
				armor = 0.25;
			};
		};
		driverAction = "driver_low01";
		cargoAction[] = {"passenger_low01"};
		getInAction = "GetInLow";
		getOutAction = "GetOutLow";
		cargoGetInAction[] = {"GetInLow"};
		cargoGetOutAction[] = {"GetOutLow"};
		attenuationEffectType = "CarAttenuation";
		soundGetIn[] = {"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",0.56234133,1};
		soundGetOut[] = {"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",0.56234133,1,40};
		soundDammage[] = {"",0.56234133,1};
		soundEngineOnInt[] = {"DRPG_VehicleData\sounds\SEDAN_V8\start_int.wss",2.2387211,1};
		soundEngineOnExt[] = {"DRPG_VehicleData\sounds\SEDAN_V8\start.wss",5.0118723,1,200};
		soundEngineOffInt[] = {"DRPG_VehicleData\sounds\MUSCLE_V8\v8_int_stop.wss",0.39810717,1};
		soundEngineOffExt[] = {"DRPG_VehicleData\sounds\MUSCLE_V8\v8_ext_stop.wss",0.4466836,1,200};
		buildCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_01",0.70794576,1,200};
		buildCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_02",0.70794576,1,200};
		buildCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_03",0.70794576,1,200};
		buildCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_04",0.70794576,1,200};
		soundBuildingCrash[] = {"buildCrash0",0.25,"buildCrash1",0.25,"buildCrash2",0.25,"buildCrash3",0.25};
		WoodCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_01",0.70794576,1,200};
		WoodCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_02",0.70794576,1,200};
		WoodCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_03",0.70794576,1,200};
		WoodCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_04",0.70794576,1,200};
		WoodCrash4[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_05",0.70794576,1,200};
		WoodCrash5[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_06",0.70794576,1,200};
		soundWoodCrash[] = {"woodCrash0",0.166,"woodCrash1",0.166,"woodCrash2",0.166,"woodCrash3",0.166,"woodCrash4",0.166,"woodCrash5",0.166};
		ArmorCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_01",0.70794576,1,200};
		ArmorCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_02",0.70794576,1,200};
		ArmorCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_03",0.70794576,1,200};
		ArmorCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_04",0.70794576,1,200};
		soundArmorCrash[] = {"ArmorCrash0",0.25,"ArmorCrash1",0.25,"ArmorCrash2",0.25,"ArmorCrash3",0.25};
		class Sounds
		{
			class Idle_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_01520.wav",0.2818383,1,150};
				frequency = "0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class Engine
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_01635.wav",0.31622776,1,200};
				frequency = "0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_02188.wav",0.3548134,1,240};
				frequency = "0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_02729.wav",0.39810717,1,280};
				frequency = "0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_03281.wav",0.4466836,1,320};
				frequency = "0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_04362.wav",0.5011872,1,360};
				frequency = "0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_04915.wav",0.56234133,1,420};
				frequency = "0.95	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine6_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_05462.wav",0.56234133,1,460};
				frequency = "0.95	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Ext_06003.wav",0.56234133,1,500};
				frequency = "0.95	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.15";
				volume = "engineOn*camPos*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class IdleThrust
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_00691.wav",0.17782794,1,200};
				frequency = "0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class EngineThrust
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_01056.wav",0.19952622,1,250};
				frequency = "0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_01270.wav",0.22387211,1,280};
				frequency = "0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_01591.wav",0.25118864,1,320};
				frequency = "0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_01804.wav",0.2818383,1,360};
				frequency = "0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_02017.wav",0.31622776,1,380};
				frequency = "0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.3";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_02327.wav",0.3548134,1,400};
				frequency = "0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.3";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_02648.wav",0.39810717,1,420};
				frequency = "0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.3";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Thrust_03094.wav",0.4466836,1,450};
				frequency = "0.9	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class Idle_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_00841.wav",0.17782794,1};
				frequency = "0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class Engine_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_01636.wav",0.19952622,1};
				frequency = "0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_02174.wav",0.22387211,1};
				frequency = "0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_02729.wav",0.25118864,1};
				frequency = "0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_03271.wav",0.2818383,1};
				frequency = "0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_03820.wav",0.31622776,1};
				frequency = "0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_04366.wav",0.3548134,1};
				frequency = "0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_04911.wav",0.39810717,1};
				frequency = "0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_05998.wav",0.39810717,1};
				frequency = "0.95	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.15";
				volume = "engineOn*(1-camPos)*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class IdleThrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_00691.wav",0.05623413,1};
				frequency = "0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class EngineThrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_01056.wav",0.06309573,1};
				frequency = "0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_01270.wav",0.070794575,1};
				frequency = "0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_01591.wav",0.07943282,1};
				frequency = "0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_01804.wav",0.08912509,1};
				frequency = "0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_02017.wav",0.099999994,1};
				frequency = "0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.3";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_02327.wav",0.11220184,1};
				frequency = "0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.3";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_02648.wav",0.12589253,1};
				frequency = "0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.3";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SEDAN_V8\Int_Thrust_03094.wav",0.11220184,1};
				frequency = "0.9	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class Movement
			{
				sound = "soundEnviron";
				frequency = "1";
				volume = "0";
			};
			class TiresRockOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_1",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*rock*(speed factor[2, 20])";
			};
			class TiresSandOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext-tires-sand1",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*sand*(speed factor[2, 20])";
			};
			class TiresGrassOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_2",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*grass*(speed factor[2, 20])";
			};
			class TiresMudOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext-tires-mud2",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*mud*(speed factor[2, 20])";
			};
			class TiresGravelOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_gravel_1",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_asfalt_2",0.5011872,1,60};
				frequency = "1";
				volume = "camPos*asphalt*(speed factor[2, 20])";
			};
			class NoiseOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\noise_ext_car_3",0.39810717,1,90};
				frequency = "1";
				volume = "camPos*(damper0 max 0.02)*(speed factor[0, 8])";
			};
			class TiresRockIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_1",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*rock*(speed factor[2, 20])";
			};
			class TiresSandIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int-tires-sand2",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*sand*(speed factor[2, 20])";
			};
			class TiresGrassIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_2",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*grass*(speed factor[2, 20])";
			};
			class TiresMudIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int-tires-mud2",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*mud*(speed factor[2, 20])";
			};
			class TiresGravelIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_gravel_1",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_asfalt_2",0.5011872,1};
				frequency = "1";
				volume = "(1-camPos)*asphalt*(speed factor[2, 20])";
			};
			class NoiseIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\noise_int_car_3",0.25118864,1};
				frequency = "1";
				volume = "(damper0 max 0.1)*(speed factor[0, 8])*(1-camPos)";
			};
			class breaking_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class breaking_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[1, 15])";
			};
			class acceleration_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_16_dirt_acceleration",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 1])";
			};
			class turn_left_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[1, 15])";
			};
			class turn_right_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[1, 15])";
			};
			class breaking_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class breaking_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[-01, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_16_dirt_acceleration_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",0.31622776,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
		};
		class RenderTargets
		{
			class LeftMirror
			{
				renderTarget = "rendertarget0";
				class CameraView1
				{
					pointPosition = "PIP0_pos";
					pointDirection = "PIP0_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
			class RearCam
			{
				renderTarget = "rendertarget1";
				class CameraView1
				{
					pointPosition = "PIP1_pos";
					pointDirection = "PIP1_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
			class FrontCam
			{
				renderTarget = "rendertarget2";
				class CameraView1
				{
					pointPosition = "PIP2_pos";
					pointDirection = "PIP2_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
		};
		thrustDelay = 0.1;
		brakeIdleSpeed = 1.78;
		maxSpeed = 320;
		fuelCapacity = 25;
		wheelCircumference = 2.277;
		antiRollbarForceCoef = 0;
		antiRollbarForceLimit = 0;
		antiRollbarSpeedMin = 0;
		antiRollbarSpeedMax = 0;
		idleRpm = 1000;
		redRpm = 8000;
		class complexGearbox
		{
			GearboxRatios[] = {"R1",-3.231,"N",0,"D1",4.462,"D2",3.57,"D3",2.571,"D4",1.97,"D5",1.601,"D6",0.9,"D7",0.65};
			TransmissionRatios[] = {"High",4.111};
			gearBoxMode = "auto";
			moveOffGear = 1;
			driveString = "D";
			neutralString = "N";
			reverseString = "R";
			transmissionDelay = 0.01;
		};
		simulation = "carx";
		dampersBumpCoef = 0.01;
		differentialType = "all_limited";
		frontRearSplit = 0.3;
		frontBias = 1.5;
		rearBias = 1.5;
		centreBias = 2.5;
		clutchStrength = 55;
		enginePower = 350;
		maxOmega = 700;
		peakTorque = 800;
		dampingRateFullThrottle = 0.03;
		dampingRateZeroThrottleClutchEngaged = 0.35;
		dampingRateZeroThrottleClutchDisengaged = 0.05;
		torqueCurve[] = {{0,0},{0.2,0.65},{0.3,0.8},{0.4,0.95},{0.6,1},{0.7,0.95},{0.9,0.9},{1,0.5}};
		changeGearMinEffectivity[] = {0.95,0.15,0.98,0.98,0.98,0.98,0.97,0.95,0.95};
		switchTime = 0.11;
		latency = 1;
		class Wheels
		{
			class LF
			{
				boneName = "wheel_1_1_damper";
				steering = 1;
				side = "left";
				center = "wheel_1_1_axis";
				boundary = "wheel_1_1_bound";
				width = 0.2;
				mass = 20;
				MOI = 5.3;
				dampingRate = 0.5;
				maxBrakeTorque = 10000;
				maxHandBrakeTorque = 0;
				suspTravelDirection[] = {0,-1,0};
				suspForceAppPointOffset = "wheel_1_1_axis";
				tireForceAppPointOffset = "wheel_1_1_axis";
				maxCompression = 0.1;
				mMaxDroop = 0.05;
				sprungMass = 272.5;
				springStrength = 27250;
				springDamperRate = 6725;
				longitudinalStiffnessPerUnitGravity = 100000;
				latStiffX = 25;
				latStiffY = 18000;
				frictionVsSlipGraph[] = {{0,1},{0.5,1},{1,1}};
			};
			class LR: LF
			{
				boneName = "wheel_1_2_damper";
				steering = 0;
				center = "wheel_1_2_axis";
				boundary = "wheel_1_2_bound";
				suspForceAppPointOffset = "wheel_1_2_axis";
				tireForceAppPointOffset = "wheel_1_2_axis";
				maxHandBrakeTorque = 4000;
			};
			class RF: LF
			{
				boneName = "wheel_2_1_damper";
				center = "wheel_2_1_axis";
				boundary = "wheel_2_1_bound";
				suspForceAppPointOffset = "wheel_2_1_axis";
				tireForceAppPointOffset = "wheel_2_1_axis";
				steering = 1;
				side = "right";
			};
			class RR: RF
			{
				boneName = "wheel_2_2_damper";
				steering = 0;
				center = "wheel_2_2_axis";
				boundary = "wheel_2_2_bound";
				suspForceAppPointOffset = "wheel_2_2_axis";
				tireForceAppPointOffset = "wheel_2_2_axis";
				maxHandBrakeTorque = 4000;
			};
		};
		memoryPointTrackFLL = "TrackFLL";
		memoryPointTrackFLR = "TrackFLR";
		memoryPointTrackBLL = "TrackBLL";
		memoryPointTrackBLR = "TrackBLR";
		memoryPointTrackFRL = "TrackFRL";
		memoryPointTrackFRR = "TrackFRR";
		memoryPointTrackBRL = "TrackBRL";
		memoryPointTrackBRR = "TrackBRR";
		class Damage
		{
			tex[] = {};
			mat[] = {"A3\data_f\glass_veh_int.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\glass_veh.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\Glass_veh_damage.rvmat"};
		};
		class Exhausts
		{
			class Exhaust1
			{
				position = "exhaust1_pos";
				direction = "exhaust1_dir";
				effect = "ExhaustsEffect";
			};
			class Exhaust2
			{
				position = "exhaust2_pos";
				direction = "exhaust2_dir";
				effect = "ExhaustsEffect";
			};
		};
		class Reflectors
		{
			class LightCarHeadL01
			{
				color[] = {1900,1800,2000};
				ambient[] = {5,5,5};
				position = "LightCarHeadL01";
				direction = "LightCarHeadL01_end";
				hitpoint = "Light_L";
				selection = "Light_L";
				size = 1;
				innerAngle = 100;
				outerAngle = 179;
				coneFadeCoef = 10;
				intensity = 1;
				useFlare = 1;
				dayLight = 0;
				flareSize = 1;
				class Attenuation
				{
					start = 1;
					constant = 0;
					linear = 0;
					quadratic = 0.25;
					hardLimitStart = 30;
					hardLimitEnd = 60;
				};
			};
			class LightCarHeadL02: LightCarHeadL01
			{
				position = "LightCarHeadL02";
				direction = "LightCarHeadL02_end";
				FlareSize = 0.5;
			};
			class LightCarHeadR01: LightCarHeadL01
			{
				position = "LightCarHeadR01";
				direction = "LightCarHeadR01_end";
				hitpoint = "Light_R";
				selection = "Light_R";
			};
			class LightCarHeadR02: LightCarHeadR01
			{
				position = "LightCarHeadR02";
				direction = "LightCarHeadR02_end";
				FlareSize = 0.5;
			};
		};
		aggregateReflectors[] = {{"LightCarHeadL01","LightCarHeadL02"},{"LightCarHeadR01","LightCarHeadR02"}};
	};
	class DRPG_08Viper_Black: DRPG_08Viper_Base
	{
		scope = 2;
		scopeCurator = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Black)";
		hiddenSelectionsTextures[] = {"DRPG_VehicleData\common\black.paa"};
	};
	class DRPG_08Viper_White: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (White)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\white.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Red: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Red)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\Red.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_blue: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Blue)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\blue.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Green: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Green)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\green.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Orange: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Orange)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\orange.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Pink: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Pink)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\pink.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Purple: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Purple)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\purple.paa","","","","","","","","","",""};
	};
	class DRPG_08Viper_Yellow: DRPG_08Viper_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2008 Dodge Viper (Yellow)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\yellow.paa","","","","","","","","","",""};
	};
};
class cfgMods
{
	author = "76561198141517593";
	timepacked = "1461671242";
};
//};
