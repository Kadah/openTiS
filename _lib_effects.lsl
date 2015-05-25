
// Type can be anything and can be used to implement things like resist. Some common ones are below. You technically don't need to treat them as bitwise.
// If perc is set it does percentage of max instead of a fixed value
#define fx$ADD_HP 1			// [(float)amount, (bool)perc]
#define fx$ADD_ARMOR 2		// [(float)amount, (bool)perc]
#define fx$ADD_STAMINA 3	// [(float)amount, (bool)perc]
	#define fxatype$GUN 1
	#define fxatype$MELEE 2
	#define fxatype$MAGIC 4
	#define fxatype$FIRE 8
	#define fxatype$FROST 16
	#define fxatype$ELECTRICITY 32

#define fx$STUN 4			// null - Serves as interrupt on immediate
#define fx$SNARE 5			// [] - 1 = fully rooted - 
#define fx$ANIM 6			// [(str)anim, (bool)start]
#define fx$PULL_TOWARDS 7	// [(vec)pos, (float)M/S]
#define fx$INVUL 8			// [] - makes a player invulnerable you can check for level in conditions

// MOD are float multipliers. All of them are duration effects
#define fx$MOD_STAM_REGEN 9	// [(float)mod] - Modifies how fast you generate stamina
#define fx$MOD_STAM_FADE 10	// [(float)mod] - Modifies how fast stamina decays
#define fx$MOD_DMG_TAKEN 11	// [(float)mod, (int)dmg_type[, (key)from]] - If dmg_type is 0 it uses all damage types
#define fx$MOD_DMG_DONE 12	// [(float)mod, (int)dmg_type[, (key)to]] - If dmg_type is 0 it uses all damage types

#define fx$GRAVITY 13		// [(float)mod]
#define fx$LOOKAT 14		// [(vector)pos]
#define fx$FORCE_SIT 15		// [(key)id, (int)allow_unsit]

#define fx$DEBUG 16			// [(str)message]
#define fx$SETTEXT 17		// [(str)text, (vec)color]

// BUILT IN
#define fx$REM_FX_BY_NAME 18
#define fx$REM_FX_BY_TAG 19	// [(int)tag]

#define fx$ROOT 20			//
#define fx$FORCE_UNSIT 21	// 
#define fx$TRIGGER_SOUND 22	// [(key)sound, (float)vol]
#define fx$ATTACH 23		// *[(string)item]

// Anything 1000 and above are dev defined





// Built in conditions
// Use a negative for inverse
// The first 2 are built into the module, the rest need local implementation
#define fx$COND_HAS_PACKAGE_NAME 1			// [(str)name1, (str)name2...] - Recipient has a package with at least one of these names
#define fx$COND_HAS_PACKAGE_TAG 2			// [(int)tag1, (int)tag2...] - Recipient has a tackage with a tag with at least one of these

#define fx$COND_HP_GREATER_THAN 3			// [(float)hpPerc || >1 = hp exact]
#define fx$COND_ARMOR_GREATER_THAN 4		// [(float)armorPerc || >1 = armor exact]

#define fx$COND_NOT_RAPED 5					// []

// Anything 1000 and above are user defined



// TAGS
// Anything above 1000 are user defined
#define fx$TAG_RAPE 1
