
#define StatusMethod$setFlag 1
#define StatusMethod$remFlag 2
#define StatusMethod$addHP 3
#define StatusMethod$addArmor 4
#define StatusMethod$hurt 5				// 
#define StatusMethod$get 6				// callbacks [(int)flags, (float)hp, (float)armor, (int)sex]
#define StatusMethod$setArmor 7			// (float)percentage
#define StatusMethod$dropAggro 8		// NPC only - [(key)player]
#define StatusMethod$noise 9			// NPC - [(float)aggro_range_multiplier, (key)agent] - Cause noise that might make monsters aggro - agent defaults to the sender owner


#define Status$FLAG_SWIMMING 0x1
#define Status$FLAG_CLIMBING 0x2
#define Status$FLAG_VULNERABLE 0x4	// HP reached 0
#define Status$FLAG_RAPED 0x8			
#define Status$FLAG_GAME_STARTED 0x10
#define Status$FLAG_CRITTED 0x20

#define StatusShared$FLAGS "a"
#define StatusShared$HP "b"
#define StatusShared$ARMOR "d"

#define StatusEvt$VULNERABLE 1
#define StatusEvt$NOT_VULNERABLE 2
#define StatusEvt$CRITTED 3
#define StatusEvt$TAKEHIT 4			// [attacker, damage, flags, aggro_mod] - Only implemented in monster status
#define StatusEvt$lostTarget 5			// NPC - [(key)target] - No aggro remain
#define StatusEvt$gotTarget 6			// NPC - [(key)target] - Aggro changed to player

#define getStatus() (integer)db2$get("st Status", [StatusShared$FLAGS])


#define Status$setFlag(flags) runMethod((string)LINK_ROOT, "st Status", StatusMethod$setFlag, [flags], TNN)
#define Status$remFlag(flags) runMethod((string)LINK_ROOT, "st Status", StatusMethod$remFlag, [flags], TNN)
#define Status$addHP(val) runMethod((string)LINK_ROOT, "st Status", StatusMethod$addHP, [val], TNN)
#define Status$addArmor(val) runMethod((string)LINK_ROOT, "st Status", StatusMethod$addArmor, [val], TNN)
#define Status$addResource(perc) runMethod((string)LINK_ROOT, "st Status", StatusMethod$addResource, [perc], TNN)
#define Status$get(target, cb) runMethod(target, "st Status", StatusMethod$get, [], TARG_NULL, cb, "")
#define Status$setArmor(perc) runMethod((string)LINK_ROOT, "st Status", StatusMethod$setArmor, [perc], TNN)
#define Status$dropAggro(player) runMethod((string)LINK_ROOT, "st Status", StatusMethod$dropAggro, [player], TNN)

