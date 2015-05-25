
// onHotTask(key id, list data) data is [(int)task, (var)var1, (var)var2...]

// Sent to a user on channel 10
#define hottask$hurt 1		// st Status - [(float)dmg, (int)flags, (float)aggro_modifier+-] - Aggro modifier by default is 1, if setting aggro_modifier arg to 1, it will be 2
	#define hurtFlag$crit 0x1
	#define hurtFlag$noAnim 0x2
	#define hurtFlag$hitBreasts 0x4
	#define hurtFlag$hitGroin 0x8
	#define hurtFlag$hitButt 0x10
	#define hurtFlag$hitHead 0x20
	
	#define hurtFlag$noSound 0x40
	#define hurtFlag$noBlock 0x80
	#define hurtFlag$ranged 0x100

#define hottask$updateHP 2	// st GUI - [(float)percent] - A quicker way to update the HP bar. Used for passive regen
#define hottask$attacked 3	// Sent from st Combat to st Status

#define hottask$monsterCom 4		// Sent from a monster rezzed item to a monster, see the dbot for info

#define hotTask(target, task, args) llRegionSayTo(target, -10, "OT$"+llList2Json(JSON_ARRAY, [task]+args))
#define hotTaskInternal(script) llMessageLinked(LINK_SET, 0, mkarr(dta), script)
#define hotTaskInternalReal(link, task, script, data) llMessageLinked(link, 0, mkarr((["", task])+data), script)


#define listenOverrideHead onListenOverride(integer chan, key id, string message){if(llGetSubString(message, 0, 2) != "OT$"){return;} message = llDeleteSubString(message, 0, 2);integer task = (integer)jVal(message,[0]);list dta = llJson2List(message);dta = [id]+dta;
#define listenOverrideFoot if(targ != ""){hotTaskInternal(targ);}}
	