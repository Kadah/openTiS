
// If perc is set it does percentage of max instead of a fixed value
#define fx$ADD_HP 1			// [(float)amount]
#define fx$ADD_ARMOR 2		// [(float)amount]
#define fx$ADD_STAMINA 3	// [(float)perc]


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
#define fx$REM_FX_BY_TAG 19	// [(int)tag, (int)tag...]

#define fx$ROOT 20			// 
#define fx$FORCE_UNSIT 21	// 
#define fx$TRIGGER_SOUND 22	// [(key)sound, (float)vol]
#define fx$ATTACH 23		// *[(string)item]

#define fx$MOD_ACCURACY 24	// (float)mod - Not yet implemented
#define fx$PREVENT_BLOCK 25	// - Prevents blocking
#define fx$RUN_METHOD 26	// (key)id, (string)script, (int)method, (arr)data, (str)callback
#define fx$RAPE 27			// toggles the rape flag

#define fx$MOD_HP_REGEN 28	// (float)modifier - 1 = normal, 2 = double, 0.5 = half
#define fx$CRIT_INVUL 29	// null - Invulnerable to crits

#define fx$ADD_ARMOR_PERC 30// (float)perc
#define fx$ADD_HP_PERC 31   // (float)perc



/*

FX$send(llGetOwnerKey(attachment), llGetKey(), FX_buildWrapper(0,0,[0,FX_buildPackage(
    0,0,0,0,"","","",[
        FX_buildFX(fx$REM_FX_BY_NAME, ["CZap"])
    ], [], [], [], 0
    )]));

*/


// Built in conditions
// Use a negative for inverse
// The first 2 are built into the module, the rest need local implementation
#define fx$COND_HAS_PACKAGE_NAME 1			// [(str)name1, (str)name2...] - Recipient has a package with at least one of these names
#define fx$COND_HAS_PACKAGE_TAG 2			// [(int)tag1, (int)tag2...] - Recipient has a package with a tag with at least one of these


#define fx$COND_HP_GREATER_THAN 100			// [(float)hpPerc || >1 = hp exact]
#define fx$COND_ARMOR_GREATER_THAN 101		// [(float)armorPerc || >1 = armor exact]
#define fx$COND_NOT_RAPED 102				// []
#define fx$COND_NAKED 103					// NULL

// Anything 1000 and above are user defined



// TAGS
#define fx$TAG_RAPE 1
#define fx$TAG_PENIS_ATTACHMENT 2
#define fx$TAG_VAG_ATTACHMENT 3
#define fx$TAG_BUTT_ATTACHMENT 4
#define fx$TAG_BREAST_ATTACHMENT 5


