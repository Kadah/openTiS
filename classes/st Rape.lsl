
#define RapeMethod$remove 1			// removes the rape prim				


// Note that offset is an offset of llGetPos()+<0,0,ascale.z/2>
#define mkRape(conditions, pos_offset, rot_offset, attachments, override_duration, flags) llList2Json(JSON_ARRAY, [llList2Json(JSON_ARRAY, conditions), pos_offset, rot_offset, llList2Json(JSON_ARRAY, attachments), override_duration, flags])
#define mkRapeCond(cond, data) llList2Json(JSON_ARRAY, [cond]+(list)data)

#define RapeCond$hasGenitals 1		// Has all these genitals
#define RapeCond$notGenitals 2		// Doesn't have any of these genitals


#define monsterRapeRot(varName) 
#define monsterRapePos(ascale, rot) 


#define monsterRapeGeo(ascale, rotOffset, posOffset, rotName, posName) vector vr = llRot2Euler(llGetRot());rotation rotName = llEuler2Rot(<0,0,vr.y-PI_BY_TWO>); vector posName = llGetPos()+<0,0,ascale.z/2-.25>+posOffset*rotName; rotName*=rotOffset

