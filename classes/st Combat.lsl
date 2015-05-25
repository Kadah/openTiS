#define CombatMethod$setGun 1 			// See getOut() class Weapon.php
#define CombatMethod$addAmmo 2			// (float)perc of max
#define CombatMethod$iniGun 3			// returns gun data
#define CombatMethod$updateGun 4		// (int)complete
#define CombatMethod$clipOut 5			// 
#define CombatMethod$clipIn 6			// (int)bullets


#define CombatEvt$onBack 1				// 1 = on back, 0 = in hand


#define Combat$setGun(json) runMethod((string)LINK_SET, "st Combat", CombatMethod$setGun, [json], TNN)
#define Combat$updateGun(complete) runMethod((string)LINK_SET, "st Combat", CombatMethod$updateGun, [complete], TNN)
#define Combat$clipOut() runMethod((string)LINK_SET, "st Combat", CombatMethod$clipOut, [], TNN)
#define Combat$clipIn(ammo) runMethod((string)LINK_SET, "st Combat", CombatMethod$clipIn, [ammo], TNN)


#define Combat$iniGun() runMethod((string)llGetOwner(), "st Combat", CombatMethod$iniGun, [], TARG_NULL, cls$name, "")


