import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  LineWidth* {.header: "LineWidth", importcpp: "osg::LineWidth", byref.} = object #of class osg::StateAttribute
    ## LineWidth - encapsulates the OpenGL glLineWidth for setting the width
    ## of lines in pixels.



{.push header: "LineWidth".}

proc constructLineWidth*(width: cfloat): LineWidth {.constructor,importcpp: "osg::LineWidth::LineWidth(@)".}

proc constructLineWidth*(lw: Linewidth, copyop: Copyop = SHALLOW_COPY): LineWidth {.constructor,importcpp: "osg::LineWidth::LineWidth(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LineWidth): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LineWidth, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LineWidth, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LineWidth): cstring  {.importcpp: "libraryName".}

proc className*(this: LineWidth): cstring  {.importcpp: "className".}

proc getType*(this: LineWidth): Type  {.importcpp: "getType".}

proc compare*(this: LineWidth, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setWidth*(this: var LineWidth, width: cfloat)  {.importcpp: "setWidth".}

proc getWidth*(this: LineWidth): cfloat  {.importcpp: "getWidth".}

proc apply*(this: LineWidth, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LineWidth"
