#define RootEvt$gameStarted 2		// (arr)players
#define RootEvt$gameEnded 3			// (str)host


#define RootMethod$resetAll 1		// Reset everything
#define RootMethod$invite 2			// Player invited to a game
#define RootMethod$statusControls 3	// Bitflags of controls to be taken from S_STATUS
#define RootMethod$setSoundcloud 4	// (str).mp3 url, (int)looping
#define RootMethod$setParty 5		// [(str)token, (key)host, (key)player1, (key)player2]
#define RootMethod$getParty 6		// returns party members
#define RootMethod$attached 7		// 


#define Root$statusControls(conts) runMethod((string)LINK_ROOT, "#ROOT", RootMethod$statusControls, [conts], TNN)
#define Root$setSoundcloud(id) runMethod((string)LINK_ROOT, "#ROOT", RootMethod$setSoundcloud, [id], TNN)
#define Root$setParty(data) runMethod((string)LINK_ROOT, "#ROOT", RootMethod$setParty, data, TNN)
#define Root$getParty() runMethod((string)llGetOwner(), "#ROOT", RootMethod$getParty, [], "", "", "party", "")
#define Root$attached() runMethod(llGetOwner(), "#ROOT", RootMethod$attached, [], TNN)
