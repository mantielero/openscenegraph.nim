import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "FrontFace", importcpp: "osg::FrontFace::Mode", pure.} = enum
    CLOCKWISE = 2304,
    COUNTER_CLOCKWISE = 2305

  FrontFace* {.header: "FrontFace", importcpp: "osg::FrontFace", byref.} = object #of class osg::StateAttribute
    ## Class to specify the orientation of front-facing polygons.



{.push header: "FrontFace".}

proc constructFrontFace*(face: Mode): FrontFace {.constructor,importcpp: "osg::FrontFace::FrontFace(@)".}

proc constructFrontFace*(ff: FrontFace, copyop: CopyOp = SHALLOW_COPY): FrontFace {.constructor,importcpp: "osg::FrontFace::FrontFace(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: FrontFace): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: FrontFace, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: FrontFace, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: FrontFace): cstring  {.importcpp: "libraryName".}

proc className*(this: FrontFace): cstring  {.importcpp: "className".}

proc getType*(this: FrontFace): Type  {.importcpp: "getType".}

proc compare*(this: FrontFace, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var FrontFace, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: FrontFace): Mode  {.importcpp: "getMode".}

proc apply*(this: FrontFace, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "FrontFace"
