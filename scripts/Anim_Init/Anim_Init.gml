function Anim_Init() {
	//GMU_Anim v3.0.0

	global._gmu_anim_list=ds_list_create();
	global._gmu_anim_data=ds_map_create();
	global._gmu_anim_id=-10;

	enum ANIM_TWEEN{
		LINEAR,//0
		SINE,//1
		QUAD,//2
		CUBIC,//3
		QUART,//4
		QUINT,//5
		EXPO,//6
		CIRC,//7
		BACK,//8
		ELASTIC,//9
		BOUNCE//10
	};

	enum ANIM_EASE{
		IN,//0
		OUT,//1
		IN_OUT//2
	};

	enum ANIM_DATA{
		TARGET,
		VAR_NAME,
		TWEEN,
		EASE,
		START,
		CHANGE,
		DURATION,
		DELAY,
		ARG_0,
		ARG_1,
		TIME
	};


}
