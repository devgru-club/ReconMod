params ["_target", "_caller", "_id", "_arguments"];

// nested select because _arguments is an array iteself
private _camp = _this select 3 select 0;
private _backpackHolder = _this select 3 select 1;
private _respawnPosition = _this select 3 select 2;

private _message = format["camp item pack action was used on: %1", typeOf _target];
_message call ReconMod_fnc_log;

_message = format['%1 is packing up the campsite', name _caller];
hint _message;

_message call ReconMod_fnc_log;

'playing remove camp animation' call ReconMod_fnc_log;
_caller playMove "AinvPknlMstpSnonWnonDnon_medicUp3";

sleep 8;

"removing campsite" call ReconMod_fnc_log;
{ deleteVehicle _x } forEach _camp;

hint 'remove respawn position: Recon Camp';
_respawnPosition call BIS_fnc_removeRespawnPosition;

// make backpack appear again
_backpackHolder hideObjectGlobal false;
