#define RootEvt$gameStarted 2		// (arr)players
#define RootEvt$gameEnded 3			// (str)host


#define RootMethod$resetAll 1		// Reset everything
#define RootMethod$invite 2			// Player invited to a game
#define RootMethod$statusControls 3	// Bitflags of controls to be taken from S_STATUS
#define RootMethod$setSoundcloud 4	// (str).mp3 url, (int)looping
#define RootMethod$spawnHub 5		// Rezzes a spawnhub
#define RootMethod$getParty 6		// returns party members
#define RootMethod$attached 7		// 
#define RootMethod$getHub 8			// Gives the spawnhub to the sender


#define Root$statusControls(conts) runMethod((string)LINK_ROOT, "#ROOT", RootMethod$statusControls, [conts], TNN)
#define Root$setSoundcloud(id) runMethod((string)LINK_ROOT, "#ROOT", RootMethod$setSoundcloud, [id], TNN)
#define Root$getParty() runMethod((string)llGetOwner(), "#ROOT", RootMethod$getParty, [], "party")
#define Root$attached() runMethod(llGetOwner(), "#ROOT", RootMethod$attached, [], TNN)
