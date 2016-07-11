/*
	fn.destroyComms.sqf
*/

player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";


cursorTarget unassignItem "tf_anprc148jem_2";
cursorTarget removeItem "tf_anprc148jem_2";
cursorTarget unassignItem "tf_rt1523g_black";
cursorTarget removeItem "tf_rt1523g_black";
cursorTarget unassignItem "tf_rt1523g_rhs";
cursorTarget removeItem "tf_rt1523g_rhs";
cursorTarget unassignItem "tf_anprc152";
cursorTarget removeItem "tf_anprc152";
cursorTarget unassignItem "tf_rt1523g";
cursorTarget removeItem "tf_rt1523g";
cursorTarget unassignItem "tf_fadak_1";
cursorTarget removeItem "tf_fadak_1";
cursorTarget unassignItem "tf_microdagr";
cursorTarget removeItem "tf_microdagr";
cursorTarget unassignItem "ItemMap";
cursorTarget removeItem "ItemMap";
cursorTarget unassignItem "ItemGPS";
cursorTarget removeItem "ItemGPS";
cursorTarget unassignItem "ItemRadio";
cursorTarget removeItem "ItemRadio";



waitUntil{animationState player != "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";};

hint "All communication devices and map destroyed!";