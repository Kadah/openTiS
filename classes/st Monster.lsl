#define MonsterMethod$ini 1			// [(arr)players, (int)flags...]
#define MonsterMethod$endRape 2		// Rape has ended
#define MonsterMethod$hide 3		// Hides the monster - Usually used after rape starts
#define MonsterMethod$rapeStarted 4	// [(key)rapist] - Sent omni on rape start to let non raping monsters drop aggro
#define MonsterMethod$toggleFlags 5	// [(int)set, (int)remove] - set will be ORed, remove will be and NOT ed

#define Monster$ini(mkey, players, flags, settings) runMethod(mkey, "st Monster", MonsterMethod$ini, [mkarr(PLAYERS), flags, settings], TNN)
#define Monster$endRape(monster) runMethod(monster, "st Monster", MonsterMethod$endRape, [], TNN)
#define Monster$hide(monster) runMethod(monster, "st Monster", MonsterMethod$hide, [], TNN)
#define Monster$toggleFlags(set, unset) runMethod((string)LINK_THIS, "st Monster", MonsterMethod$toggleFlags, [set, unset], TNN)


// Settings = [aggrorange, speed]

#define MonsterEvt$inRange 1 			// (key)target
#define MonsterEvt$lostRange 2			// (key)target
#define MonsterEvt$attack 3				// (key)target
#define MonsterEvt$rapeStart 4			// (key)target
#define MonsterEvt$rapeEnd 5			// (key)target

#define Monster$RF_IMMOBILE 1
#define Monster$RF_PACIFIED 2

