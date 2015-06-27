// Contains calls for the repo also

#define SpawnHubMethod$spawn 1			// [(str)obj, (vec)pos, (rot)rotation (arr)additional_assets]
#define SpawnHubMethod$rezzed 2			// 
#define SpawnHubMethod$getScript 3		// [(str)script, (int)pin, (int)startparam]


#define SpawnHub$spawn(obj, pos, rot, assets) runOmniMethod("ots SpawnHub", SpawnHubMethod$spawn, [obj, pos, rot, mkarr(assets)], TNN)





