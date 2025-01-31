const headerFile* = "QtGui/qinputmethod.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QInputMethod_Action* {.header:headerFile,importcpp:"QInputMethod::Action".} = enum Click = 0, ContextMenu = 0x1
    QInputMethod* {.header:headerFile,importcpp:"QInputMethod" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QInputMethod

# Public methods for QInputMethod
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QInputMethod_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QInputMethod::tr(@)".} # Public static
proc static_QInputMethod_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QInputMethod::tr(@)".} # Public static
import nimqt/qtgui/qtransform
proc inputItemTransform*(this: ptr QInputMethod): QTransform {.header:headerFile, importcpp:"#.inputItemTransform(@)".} # Public
proc setInputItemTransform*(this: ptr QInputMethod, transform: QTransform) {.header:headerFile, importcpp:"#.setInputItemTransform(@)".} # Public
proc isVisible*(this: ptr QInputMethod): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc setVisible*(this: ptr QInputMethod, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc isAnimating*(this: ptr QInputMethod): bool {.header:headerFile, importcpp:"#.isAnimating(@)".} # Public
import nimqt/qtcore/qnamespace
proc inputDirection*(this: ptr QInputMethod): Qt_LayoutDirection {.header:headerFile, importcpp:"#.inputDirection(@)".} # Public
proc show*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.show(@)".} # Public
proc hide*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.hide(@)".} # Public
proc update*(this: ptr QInputMethod, queries: Qt_InputMethodQueries) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc reset*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc commit*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc invokeAction*(this: ptr QInputMethod, a: QInputMethod_Action, cursorPosition: cint) {.header:headerFile, importcpp:"#.invokeAction(@)".} # Public
proc cursorRectangleChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.cursorRectangleChanged(@)".} # Public
proc anchorRectangleChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.anchorRectangleChanged(@)".} # Public
proc keyboardRectangleChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.keyboardRectangleChanged(@)".} # Public
proc inputItemClipRectangleChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.inputItemClipRectangleChanged(@)".} # Public
proc visibleChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.visibleChanged(@)".} # Public
proc animatingChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.animatingChanged(@)".} # Public
proc localeChanged*(this: ptr QInputMethod) {.header:headerFile, importcpp:"#.localeChanged(@)".} # Public
proc inputDirectionChanged*(this: ptr QInputMethod, newDirection: Qt_LayoutDirection) {.header:headerFile, importcpp:"#.inputDirectionChanged(@)".} # Public

export qstring
export qnamespace
export qobject
export qtransform