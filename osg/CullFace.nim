import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "CullFace", importcpp: "osg::CullFace::Mode", pure.} = enum
    FRONT = 1028,
    BACK = 1029,
    FRONT_AND_BACK = 1032

  CullFace* {.header: "CullFace", importcpp: "osg::CullFace", byref.} = object #of class osg::StateAttribute
    ## Class to globally enable/disable OpenGL's polygon culling mode.



{.push header: "CullFace".}

proc constructCullFace*(mode: Mode): CullFace {.constructor,importcpp: "osg::CullFace::CullFace(@)".}

proc constructCullFace*(cf: CullFace, copyop: CopyOp = SHALLOW_COPY): CullFace {.constructor,importcpp: "osg::CullFace::CullFace(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: CullFace): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CullFace, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CullFace, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CullFace): cstring  {.importcpp: "libraryName".}

proc className*(this: CullFace): cstring  {.importcpp: "className".}

proc getType*(this: CullFace): Type  {.importcpp: "getType".}

proc compare*(this: CullFace, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: CullFace, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setMode*(this: var CullFace, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: CullFace): Mode  {.importcpp: "getMode".}

proc apply*(this: CullFace, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "CullFace"
