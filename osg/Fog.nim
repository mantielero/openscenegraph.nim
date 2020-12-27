import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "Fog", importcpp: "osg::Fog::Mode".} = enum
    mdEXP = 2048,
    mdEXP2 = 2049,
    mdLINEAR = 9729

  FogCoordinateSource* {.size:sizeof(cuint),header: "Fog", importcpp: "osg::Fog::FogCoordinateSource".} = enum
    fgcrdntsrcFOG_COORDINATE = 33873,
    fgcrdntsrcFRAGMENT_DEPTH = 33874

  Fog* {.header: "Fog", importcpp: "osg::Fog", byref.} = object #of class osg::StateAttribute
    ## Fog - encapsulates OpenGL fog state.



{.push header: "Fog".}

proc constructFog*(): Fog {.constructor,importcpp: "osg::Fog::Fog".}

proc constructFog*(fog: Fog, copyop: Copyop = SHALLOW_COPY): Fog {.constructor,importcpp: "osg::Fog::Fog(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Fog): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Fog, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Fog, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Fog): cstring  {.importcpp: "libraryName".}

proc className*(this: Fog): cstring  {.importcpp: "className".}

proc getType*(this: Fog): Type  {.importcpp: "getType".}

proc compare*(this: Fog, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Fog, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

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
