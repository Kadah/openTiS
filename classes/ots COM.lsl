#define COMMethod$getSceneById 1		// (int)id								- Gets a scene package by id
#define COMMethod$getRandomScene 2		// (int)monster, (int)self_spell		- Gets a random scene based on your current status
#define COMMethod$toggleSetting 3		// (int)flags, (int)on
#define COMMethod$leaveParty 4			// 
#define COMMethod$joinParty 5			// (str)token
#define COMMethod$toggleFriendlyFire 6	//

#define COM$getSceneById(id) runMethod((string)LINK_THIS, "ots COM", COMMethod$getSceneById, [id], TNN)
#define COM$getRandomScene(monster, selfSpell) runMethod((string)LINK_THIS, "ots COM", COMMethod$getRandomScene, ([monster, selfSpell]), TNN)
#define COM$toggleSetting(settings, on) runMethod((string)LINK_ROOT, "ots COM", COMMethod$toggleSetting, [settings, on], TNN)
#define COM$leaveParty() runMethod((string)LINK_ROOT, "ots COM", COMMethod$leaveParty, [], TNN)
#define COM$joinParty(token) runMethod((string)LINK_ROOT, "ots COM", COMMethod$joinParty, [token], TNN)
#define COM$toggleFriendlyFire() runMethod((string)LINK_ROOT, "ots COM", COMMethod$toggleFriendlyFire, [], TNN)


#define COMShared$settings "a"
#define COMShared$jasx "b"		// Contains jasx data

#define COMEvt$partyChanged 1	// [(str)token, (int)flags, (arr)players]


#define getSettings() (integer)db2$get("ots COM", [COMShared$settings])


