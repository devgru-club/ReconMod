//[playerSide, 'HQ'] commandChat 'Building recon camp';
//[playerSide, 'HQ'] commandChat 'Recon camp successfully build';

params ["_target", "_caller"];
private ["_message","_tentType", "_tent", "_campComposition"];

_tentType = "Land_TentDome_F";
_sleepingBagType = "Land_Sleeping_bag_F";

_message = format['%1 is building up a campsite', name _caller];
hint _message;

'playing build up animation' call ReconMod_fnc_log;
_caller playMove "AinvPknlMstpSnonWnonDnon_medicUp3";

_campComposition = [
	["Land_FirePlace_F",[0.407715,-0.0605469,0.00431442],0,1,0,[],"","",true,false],
	["Land_WoodenLog_F",[1.30078,-1.04712,4.19617e-005],0,1,0,[],"","",true,false],
	["Land_Ground_sheet_folded_khaki_F",[-0.0664063,1.74048,8.01086e-005],260.778,1,0,[],"","",true,false],
	["Land_Laptop_02_unfolded_F",[1.31445,-1.0542,0.5],136.964,1,0,[],"","",true,false],
	["Land_Sleeping_bag_F",[-1.36768,-0.928467,-0.00595856],37.9681,1,0,[],"","",true,false],
	["Land_Sleeping_bag_brown_folded_F",[2.34326,-0.0712891,-3.8147e-006],245.926,1,0,[],"","",true,false],
	["Land_Sleeping_bag_F",[-0.641113,1.8584,-0.0278778],174.749,1,0,[],"","",true,false],
	["Land_Sleeping_bag_F",[2.49707,0.719482,0.0018959],266.758,1,0,[],"","",true,false],
	["Land_Ground_sheet_khaki_F",[3.14111,-0.101318,3.8147e-006],96.0028,1,0,[],"","",true,false],
	["Land_CanisterFuel_F",[-2.85938,1.72168,0.000972748],191.718,1,0,[],"","",true,false],
	["Land_Ammobox_rounds_F",[3.03857,1.61816,0.00495911],218.802,1,0,[],"","",true,false],
	["Land_TentDome_F",[-4.22217,-0.0065918,0.00314331],181.884,1,0,[],"","",true,false],
	["Land_Ammobox_rounds_F",[3.88281,1.70947,9.53674e-005],143.886,1,0,[],"","",true,false],
	["Land_TentDome_F",[-2.9668,3.74658,0.0138435],215.286,1,0,[],"","",true,false],
	["Land_TentDome_F",[3.51807,3.35718,0.00638962],320.122,1,0,[],"","",true,false]
];

'constructing camp...' call ReconMod_fnc_log;
[position _caller, 0, _campComposition] call BIS_fnc_ObjectsMapper;
'camp build!' call ReconMod_fnc_log;

hint 'recon camp has been built up';

