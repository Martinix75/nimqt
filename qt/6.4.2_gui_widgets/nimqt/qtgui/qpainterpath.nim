const headerFile* = "QtGui/qpainterpath.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QPainterPath_ElementType* {.header:headerFile,importcpp:"QPainterPath::ElementType".} = enum MoveToElement = 0, LineToElement = 0x1, CurveToElement = 0x2, CurveToDataElement = 0x3
    QPainterPath* {.header:headerFile,importcpp:"QPainterPath" ,pure.} = object {.inheritable.}
    QPainterPath_Element* {.header:headerFile,importcpp:"QPainterPath::Element" ,pure.} = object {.inheritable.}
    QPainterPathStroker* {.header:headerFile,importcpp:"QPainterPathStroker" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QPainterPath

# Public constructors for QPainterPath
proc newQPainterPath*(): QPainterPath {. header:headerFile, importcpp:"QPainterPath(@)", constructor .} #
proc newQPainterPath*(other: QPainterPath): QPainterPath {. header:headerFile, importcpp:"QPainterPath(@)", constructor .} #

# Public methods for QPainterPath
proc swap*(this: QPainterPath, other: QPainterPath) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc clear*(this: QPainterPath) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc reserve*(this: QPainterPath, size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc capacity*(this: QPainterPath): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc closeSubpath*(this: QPainterPath) {.header:headerFile, importcpp:"#.closeSubpath(@)".} # Public
proc moveTo*(this: QPainterPath, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.moveTo(@)".} # Public
proc lineTo*(this: QPainterPath, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.lineTo(@)".} # Public
proc arcMoveTo*(this: QPainterPath, x: cfloat, y: cfloat, w: cfloat, h: cfloat, angle: cfloat) {.header:headerFile, importcpp:"#.arcMoveTo(@)".} # Public
proc arcTo*(this: QPainterPath, x: cfloat, y: cfloat, w: cfloat, h: cfloat, startAngle: cfloat, arcLength: cfloat) {.header:headerFile, importcpp:"#.arcTo(@)".} # Public
proc cubicTo*(this: QPainterPath, ctrlPt1x: cfloat, ctrlPt1y: cfloat, ctrlPt2x: cfloat, ctrlPt2y: cfloat, endPtx: cfloat, endPty: cfloat) {.header:headerFile, importcpp:"#.cubicTo(@)".} # Public
proc quadTo*(this: QPainterPath, ctrlPtx: cfloat, ctrlPty: cfloat, endPtx: cfloat, endPty: cfloat) {.header:headerFile, importcpp:"#.quadTo(@)".} # Public
proc addRect*(this: QPainterPath, x: cfloat, y: cfloat, w: cfloat, h: cfloat) {.header:headerFile, importcpp:"#.addRect(@)".} # Public
proc addEllipse*(this: QPainterPath, x: cfloat, y: cfloat, w: cfloat, h: cfloat) {.header:headerFile, importcpp:"#.addEllipse(@)".} # Public
import nimqt/qtgui/qpolygon
proc addPolygon*(this: QPainterPath, polygon: QPolygonF) {.header:headerFile, importcpp:"#.addPolygon(@)".} # Public
import nimqt/qtgui/qfont
import nimqt/qtcore/qstring
proc addText*(this: QPainterPath, x: cfloat, y: cfloat, f: QFont, text: QString) {.header:headerFile, importcpp:"#.addText(@)".} # Public
proc addPath*(this: QPainterPath, path: QPainterPath) {.header:headerFile, importcpp:"#.addPath(@)".} # Public
import nimqt/qtgui/qregion
proc addRegion*(this: QPainterPath, region: QRegion) {.header:headerFile, importcpp:"#.addRegion(@)".} # Public
import nimqt/qtcore/qnamespace
proc addRoundedRect*(this: QPainterPath, x: cfloat, y: cfloat, w: cfloat, h: cfloat, xRadius: cfloat, yRadius: cfloat, mode: Qt_SizeMode) {.header:headerFile, importcpp:"#.addRoundedRect(@)".} # Public
proc connectPath*(this: QPainterPath, path: QPainterPath) {.header:headerFile, importcpp:"#.connectPath(@)".} # Public
proc translate*(this: QPainterPath, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QPainterPath, dx: cfloat, dy: cfloat): QPainterPath {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc fillRule*(this: QPainterPath): Qt_FillRule {.header:headerFile, importcpp:"#.fillRule(@)".} # Public
proc setFillRule*(this: QPainterPath, fillRule: Qt_FillRule) {.header:headerFile, importcpp:"#.setFillRule(@)".} # Public
proc isEmpty*(this: QPainterPath): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc toReversed*(this: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.toReversed(@)".} # Public
import nimqt/qtgui/qtransform
# 1 default parameters!
proc toFillPolygon*(this: QPainterPath, matrix: QTransform): QPolygonF {.header:headerFile, importcpp:"#.toFillPolygon(@)".} # Public
proc toFillPolygon*(this: QPainterPath): QPolygonF {.header:headerFile, importcpp:"#.toFillPolygon(@)".} # Public
proc elementCount*(this: QPainterPath): cint {.header:headerFile, importcpp:"#.elementCount(@)".} # Public
proc elementAt*(this: QPainterPath, i: cint): QPainterPath_Element {.header:headerFile, importcpp:"#.elementAt(@)".} # Public
proc setElementPositionAt*(this: QPainterPath, i: cint, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setElementPositionAt(@)".} # Public
proc length*(this: QPainterPath): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc percentAtLength*(this: QPainterPath, t: cfloat): cfloat {.header:headerFile, importcpp:"#.percentAtLength(@)".} # Public
proc angleAtPercent*(this: QPainterPath, t: cfloat): cfloat {.header:headerFile, importcpp:"#.angleAtPercent(@)".} # Public
proc slopeAtPercent*(this: QPainterPath, t: cfloat): cfloat {.header:headerFile, importcpp:"#.slopeAtPercent(@)".} # Public
proc intersects*(this: QPainterPath, p: QPainterPath): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc contains*(this: QPainterPath, p: QPainterPath): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc united*(this: QPainterPath, r: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QPainterPath, r: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QPainterPath, r: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc simplified*(this: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.simplified(@)".} # Public
proc `!=`*(this: QPainterPath, other: QPainterPath): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `&`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `|`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `+`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `-`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc `&=`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `|=`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `+=`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QPainterPath, other: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
# Stuff for class QPainterPath_Element

# Public methods for QPainterPath_Element
proc isMoveTo*(this: QPainterPath_Element): bool {.header:headerFile, importcpp:"#.isMoveTo(@)".} # Public
proc isLineTo*(this: QPainterPath_Element): bool {.header:headerFile, importcpp:"#.isLineTo(@)".} # Public
proc isCurveTo*(this: QPainterPath_Element): bool {.header:headerFile, importcpp:"#.isCurveTo(@)".} # Public
proc `!=`*(this: QPainterPath_Element, e: QPainterPath_Element): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QPainterPathStroker

# Public constructors for QPainterPathStroker
proc newQPainterPathStroker*(): QPainterPathStroker {. header:headerFile, importcpp:"QPainterPathStroker(@)", constructor .} #
import nimqt/qtgui/qpen
proc newQPainterPathStroker*(pen: QPen): QPainterPathStroker {. header:headerFile, importcpp:"QPainterPathStroker(@)", constructor .} #

# Public methods for QPainterPathStroker
proc setWidth*(this: QPainterPathStroker, width: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc width*(this: QPainterPathStroker): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc setCapStyle*(this: QPainterPathStroker, style: Qt_PenCapStyle) {.header:headerFile, importcpp:"#.setCapStyle(@)".} # Public
proc capStyle*(this: QPainterPathStroker): Qt_PenCapStyle {.header:headerFile, importcpp:"#.capStyle(@)".} # Public
proc setJoinStyle*(this: QPainterPathStroker, style: Qt_PenJoinStyle) {.header:headerFile, importcpp:"#.setJoinStyle(@)".} # Public
proc joinStyle*(this: QPainterPathStroker): Qt_PenJoinStyle {.header:headerFile, importcpp:"#.joinStyle(@)".} # Public
proc setMiterLimit*(this: QPainterPathStroker, length: cfloat) {.header:headerFile, importcpp:"#.setMiterLimit(@)".} # Public
proc miterLimit*(this: QPainterPathStroker): cfloat {.header:headerFile, importcpp:"#.miterLimit(@)".} # Public
proc setCurveThreshold*(this: QPainterPathStroker, threshold: cfloat) {.header:headerFile, importcpp:"#.setCurveThreshold(@)".} # Public
proc curveThreshold*(this: QPainterPathStroker): cfloat {.header:headerFile, importcpp:"#.curveThreshold(@)".} # Public
proc setDashPattern*(this: QPainterPathStroker, arg_0: Qt_PenStyle) {.header:headerFile, importcpp:"#.setDashPattern(@)".} # Public
proc setDashOffset*(this: QPainterPathStroker, offset: cfloat) {.header:headerFile, importcpp:"#.setDashOffset(@)".} # Public
proc dashOffset*(this: QPainterPathStroker): cfloat {.header:headerFile, importcpp:"#.dashOffset(@)".} # Public
proc createStroke*(this: QPainterPathStroker, path: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.createStroke(@)".} # Public

export qfont
export qstring
export qnamespace
export qpolygon
export qregion
export qtransform
export qpen