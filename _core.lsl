#define OVERRIDE_TOKEN			// Override 
#define getToken(senderKey, recipient, saltrand) "s$"
#include "xobj_core/_ROOT.lsl"
#include "ots/_lib_hot_tasks.lsl"
#include "ots/_lib_effects.lsl"

#include "ots/classes/ots GUI.lsl"
#include "ots/classes/#ROOT.lsl"
#include "ots/classes/ots Status.lsl"
#include "ots/classes/ots COM.lsl"
#include "ots/classes/ots Rape.lsl"
#include "ots/classes/ots Monster.lsl"
#include "ots/classes/ots Combat.lsl"
#include "ots/classes/ots Gun.lsl"
#include "ots/classes/ots NpcConf.lsl"
#include "ots/classes/ots RapeHandler.lsl"
#include "ots/classes/ots RapeTest.lsl"
#include "ots/classes/ots FXCompiler.lsl"
#include "ots/classes/ots SpawnHub.lsl"
#include "ots/classes/ots Level.lsl"
#include "ots/classes/ots LevelCfg.lsl"
#include "ots/classes/ots MonsterScript.lsl"



#include "xobj_core/classes/jas Climb.lsl"
#include "xobj_core/classes/jas Primswim.lsl"
#include "xobj_core/classes/jas FX.lsl"
#include "xobj_core/classes/jas AnimHandler.lsl"
#include "xobj_core/classes/jas Dialog.lsl"
#include "xobj_core/classes/jas Remoteloader.lsl"
#include "xobj_core/classes/jas Attached.lsl"
#include "xobj_core/classes/jas RLV.lsl"
#include "xobj_toonie/classes/ton Footsteps.lsl"
#include "xobj_toonie/classes/ton MeshAnim.lsl"


#define CRIT_TIME 2.5

#define MONSTERSCRIPT_CHAN playerChan(llGetOwner())+4

#define Party$FRIENDLY_FIRE 1


#define PENIS 1
#define VAGINA 2
#define TITS 4


#define IMPACT_CHAN playerChan(llGetOwner())+3
#define SHELL_CHAN playerChan(llGetOwner())+2

#define PLAYER_SEX (integer)db2$get("ots COM", ([COMShared$jasx, "sex"]))


