import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Function* {.size:sizeof(cuint),header: "Depth", importcpp: "osg::Depth::Function", pure.} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

  Depth* {.header: "Depth", importcpp: "osg::Depth", byref.} = object #of class osg::StateAttribute
    ## Encapsulate OpenGL glDepthFunc/Mask/Range functions.



{.push header: "Depth".}

proc constructDepth*(`func`: Function, zNear: cdouble, zFar: cdouble, writeMask: bool): Depth {.constructor,importcpp: "osg::Depth::Depth(@)".}

proc constructDepth*(dp: Depth, copyop: CopyOp = SHALLOW_COPY): Depth {.constructor,importcpp: "osg::Depth::Depth(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Depth): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Depth, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Depth, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Depth): cstring  {.importcpp: "libraryName".}

proc className*(this: Depth): cstring  {.importcpp: "className".}

proc getType*(this: Depth): Type  {.importcpp: "getType".}

proc compare*(this: Depth, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Depth, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var Depth, `func`: Function)  {.importcpp: "setFunction".}

proc getFunction*(this: Depth): Function  {.importcpp: "getFunction".}

proc setRange*(this: var Depth, zNear: cdouble, zFar: cdouble)  {.importcpp: "setRange".}

proc setZNear*(this: var Depth, zNear: cdouble)  {.importcpp: "setZNear".}

proc getZNear*(this: Depth): cdouble  {.importcpp: "getZNear".}

proc setZFar*(this: var Depth, zFar: cdouble)  {.importcpp: "setZFar".}

proc getZFar*(this: Depth): cdouble  {.importcpp: "getZFar".}

proc setWriteMask*(this: var Depth, mask: bool)  {.importcpp: "setWriteMask".}

proc getWriteMask*(this: Depth): bool  {.importcpp: "getWriteMask".}

proc apply*(this: Depth, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Depth"
