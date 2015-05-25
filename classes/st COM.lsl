#define COMMethod$getSceneById 1		// (int)id								- Gets a scene package by id
#define COMMethod$getRandomScene 2		// (int)monster, (int)self_spell		- Gets a random scene based on your current status
#define COMMethod$toggleSetting 3		// (int)flags, (int)on
#define COMMethod$leaveParty 4			// 
#define COMMethod$joinParty 5			// (str)token

#define COM$getSceneById(id) runMethod((string)LINK_THIS, "st COM", COMMethod$getSceneById, [id], TNN)
#define COM$getRandomScene(monster, selfSpell) runMethod((string)LINK_THIS, "st COM", COMMethod$getRandomScene, ([monster, selfSpell]), TNN)
#define COM$toggleSetting(settings, on) runMethod((string)LINK_ROOT, "st COM", COMMethod$toggleSetting, [settings, on], TNN)
#define COM$leaveParty() runMethod((string)LINK_ROOT, "st COM", COMMethod$leaveParty, [], TNN)
#define COM$joinParty(token) runMethod((string)LINK_ROOT, "st COM", COMMethod$joinParty, [token], TNN)


#define COMShared$settings "a"
#define COMShared$jasx "b"		// Contains jasx data


#define getSettings() (integer)db2$get("st COM", [COMShared$settings])


