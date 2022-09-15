function Encounter_Uninit() {
	var map=global._encounter;
	while(!ds_map_empty(map)){
		var key=ds_map_find_first(map);
		var map_e=ds_map_find_value(map,key);
		ds_map_destroy(map_e);
		ds_map_delete(map,key);
	}
	ds_map_destroy(map);
	return true;


}
