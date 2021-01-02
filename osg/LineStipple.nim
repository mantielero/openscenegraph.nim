import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  LineStipple* {.header: "LineStipple", importcpp: "osg::LineStipple", byref.} = object #of class osg::StateAttribute



{.push header: "LineStipple".}

proc constructLineStipple*(): LineStipple {.constructor,importcpp: "osg::LineStipple::LineStipple".}

proc constructLineStipple*(factor: GLint, pattern: GLushort): LineStipple {.constructor,importcpp: "osg::LineStipple::LineStipple(@)".}

proc constructLineStipple*(lw: LineStipple, copyop: CopyOp = SHALLOW_COPY): LineStipple {.constructor,importcpp: "osg::LineStipple::LineStipple(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LineStipple): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LineStipple, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LineStipple, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LineStipple): cstring  {.importcpp: "libraryName".}

proc className*(this: LineStipple): cstring  {.importcpp: "className".}

proc getType*(this: LineStipple): Type  {.importcpp: "getType".}

proc compare*(this: LineStipple, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: LineStipple, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setFactor*(this: var LineStipple, factor: GLint)  {.importcpp: "setFactor".}

proc getFactor*(this: LineStipple): GLint  {.importcpp: "getFactor".}

proc setPattern*(this: var LineStipple, pattern: GLushort)  {.importcpp: "setPattern".}

proc getPattern*(this: LineStipple): GLushort  {.importcpp: "getPattern".}

proc apply*(this: LineStipple, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LineStipple"
