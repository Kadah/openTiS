// Finally include the rest of the project

#define GUIMethod$refresh 1					// (float)hp 0->1
#define GUIMethod$setText 2					// (str)text, (vec)color, (key)sound


#define GUI$refresh() runMethod((string)LINK_ROOT, "st GUI", GUIMethod$refresh, [], TNN)
#define GUI$setText(text, color, sound) runMethod((string)LINK_ROOT, "st GUI", GUIMethod$setText, [text, color, sound], TNN)
#define GUI$setHP(percent) llMessageLinked(LINK_ROOT, 0, "[\"\", 2, "+(string)(percent)+"]", "st GUI")


#define GUIConf$colorGood <.5,.75,.5>
#define GUIConf$colorBad <.75,.5,.5>
#define GUIConf$colorGame <.75,.5,.75>


