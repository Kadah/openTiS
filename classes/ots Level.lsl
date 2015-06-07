// Remoted script that handles basic level calls
#define LevelMethod$getAssets 1					// (arr)assets
#define LevelMethod$getSpawnerAssets 2			// 
#define LevelMethod$getParty 3					// returns a list of players in the level


#define Level$getParty() runOmniMethod("ots Level", LevelMethod$getParty, [], "party")



