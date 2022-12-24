
add_library(Qt5:: MODULE IMPORTED)


_populate_Organizer_plugin_properties( RELEASE "organizer/libqtorganizer_memory.dylib" TRUE)
_populate_Organizer_plugin_properties( DEBUG "organizer/libqtorganizer_memory_debug.dylib" TRUE)

list(APPEND Qt5Organizer_PLUGINS Qt5::)
set_property(TARGET Qt5::Organizer APPEND PROPERTY QT_ALL_PLUGINS_organizer Qt5::)
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_TYPE "organizer")
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_CLASS_NAME "")
