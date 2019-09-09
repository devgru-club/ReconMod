params ["_target", "_caller", "_id", "_arguments"];

// nested select because _arguments is an array iteself
private _camp = _this select 3 select 0;
private _backpackHolder = _this select 3 select 1;
private _respawnPosition = _this select 3 select 2;

private _message = format["Bivouac Camp Item Pack Action was used on: %1", typeOf _target];
_message call bivouac_fnc_log;

_message = format['%1 is packing up the Bivouac Camp', name _caller];
hint _message;

_message call bivouac_fnc_log;

'playing remove camp animation' call bivouac_fnc_log;
_caller playMove "AinvPknlMstpSnonWnonDnon_medicUp3";

sleep 8;

"removing campsite" call bivouac_fnc_log;
{ deleteVehicle _x } forEach _camp;

hint 'remove respawn position: Bivouac Camp';
_respawnPosition call BIS_fnc_removeRespawnPosition;

// make backpack appear again
_backpackHolder hideObjectGlobal false;
