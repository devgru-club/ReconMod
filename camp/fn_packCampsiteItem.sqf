params ["_target", "_caller", "_id", "_arguments"];
private ["_message", "_camp", "_campItemHolder"];
_camp = _this select 3;

_message = format["camp item pack action was used on: %1", typeOf _target];
_message call ReconMod_fnc_log;

_message = format['%1 is packing up the campsite', name _caller];
hint _message;

'playing remove camp animation' call ReconMod_fnc_log;
_caller playMove "AinvPknlMstpSnonWnonDnon_medicUp3";

sleep 8;

"removing campsite" call ReconMod_fnc_log;
{ deleteVehicle _x } forEach _camp;
