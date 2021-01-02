import osg_types
  # File: State  was providing: osg::State
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "Fog", importcpp: "osg::Fog::Mode", pure.} = enum
    EXP = 2048,
    EXP2 = 2049,
    LINEAR = 9729

  FogCoordinateSource* {.size:sizeof(cuint),header: "Fog", importcpp: "osg::Fog::FogCoordinateSource", pure.} = enum
    FOG_COORDINATE = 33873,
    FRAGMENT_DEPTH = 33874

  Fog* {.header: "Fog", importcpp: "osg::Fog", byref.} = object #of class osg::StateAttribute
    ## Fog - encapsulates OpenGL fog state.



{.push header: "Fog".}

proc constructFog*(): Fog {.constructor,importcpp: "osg::Fog::Fog".}

proc constructFog*(fog: Fog, copyop: CopyOp = SHALLOW_COPY): Fog {.constructor,importcpp: "osg::Fog::Fog(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Fog): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Fog, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Fog, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Fog): cstring  {.importcpp: "libraryName".}

proc className*(this: Fog): cstring  {.importcpp: "className".}

proc getType*(this: Fog): Type  {.importcpp: "getType".}

proc compare*(this: Fog, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Fog, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setMode*(this: var Fog, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: Fog): Mode  {.importcpp: "getMode".}

proc setDensity*(this: var Fog, density: cfloat)  {.importcpp: "setDensity".}

proc getDensity*(this: Fog): cfloat  {.importcpp: "getDensity".}

proc setStart*(this: var Fog, start: cfloat)  {.importcpp: "setStart".}

proc getStart*(this: Fog): cfloat  {.importcpp: "getStart".}

proc setEnd*(this: var Fog, `end`: cfloat)  {.importcpp: "setEnd".}

proc getEnd*(this: Fog): cfloat  {.importcpp: "getEnd".}

proc setColor*(this: var Fog, color: Vec4)  {.importcpp: "setColor".}

proc getColor*(this: Fog): Vec4  {.importcpp: "getColor".}

proc setUseRadialFog*(this: var Fog, useRadialFog: bool)  {.importcpp: "setUseRadialFog".}

proc getUseRadialFog*(this: Fog): bool  {.importcpp: "getUseRadialFog".}

proc setFogCoordinateSource*(this: var Fog, source: GLint)  {.importcpp: "setFogCoordinateSource".}

proc getFogCoordinateSource*(this: Fog): GLint  {.importcpp: "getFogCoordinateSource".}

proc apply*(this: Fog, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Fog"
