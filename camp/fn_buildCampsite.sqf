//[playerSide, 'HQ'] commandChat 'Building recon camp';
//[playerSide, 'HQ'] commandChat 'Recon camp successfully build';

params ["_target", "_caller"];
private ["_message","_tentType", "_tent"];

_tentType = "Land_TentDome_F";

_message = format['%1 is building up a campsite', name _caller];
hint _message;

'playing build up animation' call ReconMod_fnc_log;
_caller playMove "AinvPknlMstpSnonWnonDnon_medicUp3";

'tent spawned to world' call ReconMod_fnc_log;
_tent = _tentType createVehicle [0,0,0];

'tent moved to player position' call ReconMod_fnc_log;
_tent setpos (_caller modelToWorld [0,0,0]);


