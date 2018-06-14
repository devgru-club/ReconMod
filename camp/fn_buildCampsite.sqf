//[playerSide, 'HQ'] commandChat 'Building recon camp';
//[playerSide, 'HQ'] commandChat 'Recon camp successfully build';

params ["_target", "_caller"];
private ["_message"];

_message = format['%1 is building up a campsite', name _caller];
hint _message; diag_log 'Creating campsite...';
