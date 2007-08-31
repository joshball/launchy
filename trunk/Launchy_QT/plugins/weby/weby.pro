 TEMPLATE      = lib
 CONFIG       += plugin release
 VPATH 		  += ../../src/
 INCLUDEPATH += ../../src/
 UI_DIR		   = ../../plugins/weby/
 FORMS		   = dlg.ui
 HEADERS       = plugin_interface.h weby.h gui.h
 SOURCES       = plugin_interface.cpp weby.cpp gui.cpp
 TARGET		   = weby
 
 win32 {
	LIBS += shell32.lib
%	LIBS += user32.lib
%	LIBS += Gdi32.lib
%	LIBS += comctl32.lib
}
 
 *:debug {
	DESTDIR = ../../debug/plugins/
 }
 *:release {
	DESTDIR = ../../release/plugins/
 }
