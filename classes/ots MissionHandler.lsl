#define MissionHandlerMethod$setLevel 1			// (str)name, (str)token, (int)wipe_previous - This will load data from a level unless wipe_previous is set
#define MissionHandlerMethod$setObjective 2		// (str)shortdesc, (str)fulldesc - Sets an objective
#define MissionHandlerMethod$setData 3			// (arr)index, (var)data - Lets you store 1024 characters on a player. This will be saved to database. Callbacks [TRUE/FALSE]
#define MissionHandlerMethod$getData 4			// null - Lets you get level data from a player - Callbacks [FALSE or level_data]
#define MissionHandlerMethod$load 5				// see class Missiondata.php fn.getOut
#define MissionHandlerMethod$getDataByToken 6	// (str)token - Callbacks any data

#define MissionHandlerShared$shortObjective "a"
 
 
#define MissionHandler$setLevel(player, name, token, wipe_previous) runMethod(player, "ots MissionHandler", MissionHandlerMethod$setLevel, [name, token, wipe_previous], TNN)
#define MissionHandler$setObjective(player, shortdesc, fulldesc) runMethod(player, "ots MissionHandler", MissionHandlerMethod$setObjective, [shortdesc, fulldesc], TNN)
#define MissionHandler$setData(player, index, data) runMethod(player, "ots MissionHandler", MissionHandlerMethod$setData, [mkarr(index), data], TNN)
#define MissionHandler$getData(player) runMethod(player, "ots MissionHandler", MissionHandlerMethod$getData, [], TNN)
#define MissionHandler$getDataByToken(player, token, callback) runMethod(player, "ots MissionHandler", MissionHandlerMethod$getDataByToken, [token], callback)


