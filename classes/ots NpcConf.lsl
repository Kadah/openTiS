#define NpcConfMethod$initialize 1		// Returns monster conf
#define NpcConfMethod$getRapes 2		// Returns a list of rapes


#define NpcConf$initialize() runMethod((string)LINK_THIS, "ots NpcConf", NpcConfMethod$initialize, [], "i")
#define NpcConf$getRapes() runMethod((string)LINK_THIS, "ots NpcConf", NpcConfMethod$getRapes, [],"r")


