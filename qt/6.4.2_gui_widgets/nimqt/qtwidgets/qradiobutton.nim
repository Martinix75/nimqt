const headerFile* = "QtWidgets/qradiobutton.h"

import nimqt/qtwidgets/qabstractbutton
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QRadioButton* {.header:headerFile,importcpp:"QRadioButton" ,pure.} = object of QAbstractButton
{.push warning[Deprecated]: on.}
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QRadioButton_RenderFlag * = QWidget_RenderFlag
    QRadioButton_RenderFlags * = QWidget_RenderFlags
    QRadioButton_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QRadioButton

# Public constructors for QRadioButton
# 1 default parameters!
proc newQRadioButton*(parent: ptr QWidget): ptr QRadioButton {. header:headerFile, importcpp:"new QRadioButton(@)" .} #
proc newQRadioButton*(): ptr QRadioButton {. header:headerFile, importcpp:"new QRadioButton(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQRadioButton*(text: QString, parent: ptr QWidget): ptr QRadioButton {. header:headerFile, importcpp:"new QRadioButton(@)" .} #
proc newQRadioButton*(text: QString): ptr QRadioButton {. header:headerFile, importcpp:"new QRadioButton(@)" .} #

# Public methods for QRadioButton
# 1 default parameters!
proc static_QRadioButton_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QRadioButton::tr(@)".} # Public static
proc static_QRadioButton_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QRadioButton::tr(@)".} # Public static

# Protected methods methods for QRadioButton
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QRadioButton, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QRadioButton, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QRadioButton, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected

export qevent
export qstring
export qabstractbutton
export qwidget
export qpaintdevice
export qcoreevent