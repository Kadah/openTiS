
#define RapeHandlerMethod$start 1				// [(vec)pos, (rot)rotation, (arr)attachments, (float)override_duration, (int)flags]
	#define RapeHandlerFlag$noForceStrip 1
	#define RapeHandlerFlag$test 2
	
#define RapeHandlerMethod$forceStop 2			// [(int)override]		
#define RapeHandlerMethod$animStart 3			// NULL - Attached animation just started, hide monster

#define RapeHandlerEvt$start 1					// (key)rapist
#define RapeHandlerEvt$end 2					// (key)rapist



#define RapeHandler$start(targ, pos, rot, atc, dur, flags) runMethod((string)targ, "ots RapeHandler", RapeHandlerMethod$start, [pos, rot, mkarr(atc), dur, flags], TNN)
#define RapeHandler$forceStop(override) runMethod((string)LINK_SET, "ots RapeHandler", RapeHandlerMethod$forceStop, [override], TNN)
#define RapeHandler$animStart() runMethod(llGetOwner(), "ots RapeHandler", RapeHandlerMethod$animStart, [], TNN)


