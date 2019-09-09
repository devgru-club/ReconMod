class CfgVehicles{
    class B_AssaultPack_Base;
    class Bivouac_Camp_Backpack: B_AssaultPack_Base{
      scope = 2;
      displayName = "Bivouac camp backpack";
      vechicleClass = "bivouac";
      icon = "bivouac\data\images\bivouac_icon.paa";

      class eventhandlers{
       init = "_this call bivouac_fnc_backpackInit;";
      }

};
};
