// Finally include the rest of the project

#define GUIMethod$refresh 1					// (float)hp 0->1
#define GUIMethod$setText 2					// (str)text, (vec)color, (key)sound
#define GUIMethod$com 3						// (str)text, (key)texture, (key)sound
#define GUIMethod$objective 4				// (str)text - Internal only. Use st MissionHandler instead

#define GUI$refresh() runMethod((string)LINK_ROOT, "ots GUI", GUIMethod$refresh, [], TNN)
#define GUI$setText(text, color, sound) runMethod((string)LINK_ROOT, "ots GUI", GUIMethod$setText, [text, color, sound], TNN)
#define GUI$setHP(percent) llMessageLinked(LINK_ROOT, 0, "[\"\", 2, "+(string)(percent)+"]", "ots GUI")
#define GUI$com(uuid, text, texture, sound) runMethod(uuid, "ots GUI", GUIMethod$com, [text, texture, sound], TNN)
#define GUI$objective(text) runMethod((string)LINK_ROOT, "ots GUI", GUIMethod$objective, [text], TNN)


#define GUIConf$colorGood <.5,.75,.5>
#define GUIConf$colorNeutral <.6,.6,.6>
#define GUIConf$colorBad <.75,.5,.5>
#define GUIConf$colorGame <.75,.5,.75>


