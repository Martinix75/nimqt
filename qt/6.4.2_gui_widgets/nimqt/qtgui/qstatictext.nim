const headerFile* = "QtGui/qstatictext.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QStaticText_PerformanceHint* {.header:headerFile,importcpp:"QStaticText::PerformanceHint".} = enum ModerateCaching = 0, AggressiveCaching = 0x1
    QStaticText* {.header:headerFile,importcpp:"QStaticText" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QStaticText

# Public constructors for QStaticText
proc newQStaticText*(): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQStaticText*(text: QString): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #
proc newQStaticText*(other: QStaticText): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #

# Public methods for QStaticText
proc swap*(this: QStaticText, other: QStaticText) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setText*(this: QStaticText, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc text*(this: QStaticText): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtcore/qnamespace
proc setTextFormat*(this: QStaticText, textFormat: Qt_TextFormat) {.header:headerFile, importcpp:"#.setTextFormat(@)".} # Public
proc textFormat*(this: QStaticText): Qt_TextFormat {.header:headerFile, importcpp:"#.textFormat(@)".} # Public
proc setTextWidth*(this: QStaticText, textWidth: cfloat) {.header:headerFile, importcpp:"#.setTextWidth(@)".} # Public
proc textWidth*(this: QStaticText): cfloat {.header:headerFile, importcpp:"#.textWidth(@)".} # Public
import nimqt/qtgui/qtextoption
proc setTextOption*(this: QStaticText, textOption: QTextOption) {.header:headerFile, importcpp:"#.setTextOption(@)".} # Public
proc textOption*(this: QStaticText): QTextOption {.header:headerFile, importcpp:"#.textOption(@)".} # Public
import nimqt/qtgui/qfont
import nimqt/qtgui/qtransform
# 2 default parameters!
proc prepare*(this: QStaticText, matrix: QTransform, font: QFont) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc prepare*(this: QStaticText, matrix: QTransform) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc prepare*(this: QStaticText) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc setPerformanceHint*(this: QStaticText, performanceHint: QStaticText_PerformanceHint) {.header:headerFile, importcpp:"#.setPerformanceHint(@)".} # Public
proc performanceHint*(this: QStaticText): QStaticText_PerformanceHint {.header:headerFile, importcpp:"#.performanceHint(@)".} # Public
proc `!=`*(this: QStaticText, arg_0: QStaticText): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qfont
export qstring
export qtextoption
export qnamespace
export qtransform