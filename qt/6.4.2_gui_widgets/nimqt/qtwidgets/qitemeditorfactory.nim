const headerFile* = "QtWidgets/qitemeditorfactory.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QItemEditorCreatorBase* {.header:headerFile,importcpp:"QItemEditorCreatorBase" ,pure.} = object {.inheritable.}
    QItemEditorCreator*[T] {.header:headerFile,importcpp:"QItemEditorCreator" ,pure.} = object of QItemEditorCreatorBase
    QStandardItemEditorCreator*[T] {.header:headerFile,importcpp:"QStandardItemEditorCreator" ,pure.} = object of QItemEditorCreatorBase
    QItemEditorFactory* {.header:headerFile,importcpp:"QItemEditorFactory" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QItemEditorCreatorBase

# Public methods for QItemEditorCreatorBase
import nimqt/qtwidgets/qwidget
proc createWidget*(this: ptr QItemEditorCreatorBase, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
# Stuff for class QItemEditorCreator

# Public methods for QItemEditorCreator
proc createWidget*[T](this: ptr QItemEditorCreator[T], parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
# Stuff for class QStandardItemEditorCreator

# Public constructors for QStandardItemEditorCreator
proc newQStandardItemEditorCreator*[T](): ptr QStandardItemEditorCreator[T] {. header:headerFile, importcpp:"new QStandardItemEditorCreator(@)" .} #

# Public methods for QStandardItemEditorCreator
proc createWidget*[T](this: ptr QStandardItemEditorCreator[T], parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
# Stuff for class QItemEditorFactory

# Public constructors for QItemEditorFactory
proc newQItemEditorFactory*(): QItemEditorFactory {. header:headerFile, importcpp:"QItemEditorFactory(@)", constructor .} #

# Public methods for QItemEditorFactory
proc createEditor*(this: QItemEditorFactory, userType: cint, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createEditor(@)".} # Public
proc registerEditor*(this: QItemEditorFactory, userType: cint, creator: ptr QItemEditorCreatorBase) {.header:headerFile, importcpp:"#.registerEditor(@)".} # Public
proc static_QItemEditorFactory_defaultFactory*(): ptr QItemEditorFactory {.header:headerFile, importcpp:"QItemEditorFactory::defaultFactory(@)".} # Public static
proc static_QItemEditorFactory_setDefaultFactory*(factory: ptr QItemEditorFactory) {.header:headerFile, importcpp:"QItemEditorFactory::setDefaultFactory(@)".} # Public static

export qwidget