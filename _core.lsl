#define OVERRIDE_TOKEN			// Override 
#define getToken(senderKey, recipient, saltrand) "s$"
#include "xobj_core/_ROOT.lsl"
#include "ots/_lib_hot_tasks.lsl"
#include "ots/_lib_effects.lsl"

#include "ots/classes/st GUI.lsl"
#include "ots/classes/#ROOT.lsl"
#include "ots/classes/st Status.lsl"
#include "ots/classes/st COM.lsl"
#include "ots/classes/st Rape.lsl"
#include "ots/classes/st Monster.lsl"
#include "ots/classes/st Combat.lsl"
#include "ots/classes/st Gun.lsl"
#include "ots/classes/st NpcConf.lsl"
#include "ots/classes/st RapeHandler.lsl"
#include "ots/classes/st RapeTest.lsl"
#include "ots/classes/st FXCompiler.lsl"



#include "xobj_core/classes/st Climb.lsl"
#include "xobj_core/classes/st Primswim.lsl"
#include "xobj_core/classes/st FX.lsl"
#include "xobj_core/classes/st AnimHandler.lsl"
#include "xobj_core/classes/cl Dialog.lsl"
#include "xobj_core/classes/st Remoteloader.lsl"
#include "xobj_core/classes/st Attached.lsl"
#include "xobj_core/classes/st RLV.lsl"

#include "xobj_toonie/classes/st Footsteps.lsl"
#include "xobj_toonie/classes/cl MeshAnim.lsl"


#define CRIT_TIME 2.5



#define PENIS 1
#define VAGINA 2
#define TITS 4


#define IMPACT_CHAN playerChan(llGetOwner())+3
#define SHELL_CHAN playerChan(llGetOwner())+2

#define PLAYER_SEX (integer)db2$get("st COM", ([COMShared$jasx, "sex"]))


