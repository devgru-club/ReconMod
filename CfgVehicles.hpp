class CfgVehicles{
    class B_AssaultPack_Base;
    class ReconMod_Camp_Backpack: B_AssaultPack_Base{
      scope = 2;
      displayName = "Recon camp backpack";
      vechicleClass = "Recon Mod";
      icon = "reconmod\data\images\reconmod_icon.paa";

      class eventhandlers{
       init = "_this call ReconMod_fnc_backpackInit;";
      }

    };
};
