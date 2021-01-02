import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  LineWidth* {.header: "LineWidth", importcpp: "osg::LineWidth", byref.} = object #of class osg::StateAttribute
    ## LineWidth - encapsulates the OpenGL glLineWidth for setting the width
    ## of lines in pixels.



{.push header: "LineWidth".}

proc constructLineWidth*(width: cfloat): LineWidth {.constructor,importcpp: "osg::LineWidth::LineWidth(@)".}

proc constructLineWidth*(lw: LineWidth, copyop: CopyOp = SHALLOW_COPY): LineWidth {.constructor,importcpp: "osg::LineWidth::LineWidth(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LineWidth): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LineWidth, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LineWidth, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LineWidth): cstring  {.importcpp: "libraryName".}

proc className*(this: LineWidth): cstring  {.importcpp: "className".}

proc getType*(this: LineWidth): Type  {.importcpp: "getType".}

proc compare*(this: LineWidth, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setWidth*(this: var LineWidth, width: cfloat)  {.importcpp: "setWidth".}

proc getWidth*(this: LineWidth): cfloat  {.importcpp: "getWidth".}

proc apply*(this: LineWidth, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LineWidth"
