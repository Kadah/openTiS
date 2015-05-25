#define NpcConfMethod$initialize 1		// Returns monster conf
#define NpcConfMethod$getRapes 2		// Returns a list of rapes


#define NpcConf$initialize() runMethod((string)LINK_THIS, "st NpcConf", NpcConfMethod$initialize, [], TARG_NULL, cls$name, "")
#define NpcConf$getRapes() runMethod((string)LINK_THIS, "st NpcConf", NpcConfMethod$getRapes, [], TARG_NULL, cls$name, "rapes")


