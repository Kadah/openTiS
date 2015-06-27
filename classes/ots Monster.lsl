#define MonsterMethod$ini 1			// [(arr)players, (int)flags...]
#define MonsterMethod$endRape 2		// Rape has ended
#define MonsterMethod$hide 3		// Hides the monster - Usually used after rape starts
#define MonsterMethod$rapeStarted 4	// [(key)rapist] - Sent omni on rape start to let non raping monsters drop aggro
#define MonsterMethod$toggleFlags 5	// [(int)flags_to_set, (int)flags_to_remove] - set will be ORed, remove will be and NOT ed
#define MonsterMethod$runtimeReady 6// null - Monster runtime scripts either timed out or finished parsing, unset that flag
#define MonsterMethod$getScript 7	// (str)script - Fetches a script from spawnhub
#define MonsterMethod$getParty 8	// NULL  - Returns a list of party members

#define Monster$ini(mkey, players, flags, settings) runMethod(mkey, "ots Monster", MonsterMethod$ini, [mkarr(PLAYERS), flags, settings], TNN)
#define Monster$endRape(monster) runMethod(monster, "ots Monster", MonsterMethod$endRape, [], TNN)
#define Monster$hide(monster) runMethod(monster, "ots Monster", MonsterMethod$hide, [], TNN)
#define Monster$toggleFlags(set, unset) runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$toggleFlags, [set, unset], TNN)
#define Monster$runtimeReady() runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$runtimeReady, [], TNN)
#define Monster$getScript(script) runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$getScript, [script], TNN)
#define Monster$getParty() runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$getParty, [], "party")
#define Monster$stop() runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$toggleFlags, [Monster$RF_IMMOBILE|Monster$RF_PACIFIED, 0], TNN)
#define Monster$start() runMethod((string)LINK_THIS, "ots Monster", MonsterMethod$toggleFlags, [0, Monster$RF_IMMOBILE|Monster$RF_PACIFIED], TNN)


// Settings = [aggrorange, speed]

#define MonsterEvt$inRange 1 			// (key)target
#define MonsterEvt$lostRange 2			// (key)target
#define MonsterEvt$attack 3				// (key)target, (arr)ctData(see ots Status fn. Status$get
#define MonsterEvt$rapeStart 4			// (key)target
#define MonsterEvt$rapeEnd 5			// (key)target
#define MonsterEvt$players 6			// (arr)players
#define MonsterEvt$runtimeFlagsChanged 7// (int)flags


#define Monster$RF_IMMOBILE 1
#define Monster$RF_PACIFIED 2

