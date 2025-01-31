const headerFile* = "QtCore/qiodevicebase.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QIODeviceBase_OpenModeFlag* {.header:headerFile,importcpp:"QIODeviceBase::OpenModeFlag".} = enum NotOpen = 0, ReadOnly = 0x1, WriteOnly = 0x2, ReadWrite = 0x3, 
        Append = 0x4, Truncate = 0x5, Text = 0x6, Unbuffered = 0x7, NewOnly = 0x8, 
        ExistingOnly = 0x9
    QIODeviceBase* {.header:headerFile,importcpp:"QIODeviceBase" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QIODeviceBase_OpenMode * = QFlags[QIODeviceBase_OpenModeFlag]


export qflags