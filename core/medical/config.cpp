#define _ARMA_
class CfgPatches
{
 class cms_sys_airway
 {
  units[] = {};
  weapons[] = {};
  requiredVersion = 0.1;
  requiredAddons[] = {"cms_main","cms_ui"};
  version = "0.5";
  author[] = {"Glowbal"};
 };
};
class CfgAddons {
    class PreloadAddons {
       class cms_sys_airway {
          list[] = {"cms_sys_airway"};
       };
    };
};

class cms_thirdPartySupport {
	class cms_eventHandlers {
		class cms_handleDamage{
			class cms_sys_airway {
				init = "_this call (compile PreprocessFile 'cms_sys_airway\event_handleDamage.sqf');";
			};		
		};
		class cms_init{
			class cms_sys_airway {
				init = "_this call (compile PreprocessFile 'cms_sys_airway\init.sqf');";
			};
		};
		class cms_startUp{
			class cms_sys_airway {
				init = "_this call (compile PreprocessFile 'cms_sys_airway\event_startUp.sqf');";
			};
		};
	};
		
	class cms_hooks {
		class cms_sys_core{
			class cms_sys_airwayExample {
				file = "cms_sys_airway\sys_airway.sqf";
			};	
		};
		class buttons {
			class cms_advancedOptions{
				class cms_airwayTreatment {
					name		=	"Use NPA";
					condition	=	"([player,'cms_nasopharyngeal_tube'] call cms_fnc_hasCMSItem)";
					file 		=	"cms_sys_airway\button_airwayTreatment.sqf";
					priority	=	1;
				};
			};
			class cms_examineOptions{
				class cms_airwayExamine {
					name		=	"Airway";
					condition	=	"true";
					file 		=	"cms_sys_airway\button_airwayExamine.sqf";
					priority	=	1;
				};
			};
		};		
	};
};