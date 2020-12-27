import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  PolygonOffset* {.header: "PolygonOffset", importcpp: "osg::PolygonOffset", byref.} = object #of class osg::StateAttribute
    ## PolygonOffset - encapsulates the OpenGL glPolygonOffset state.



{.push header: "PolygonOffset".}

proc constructPolygonOffset*(): PolygonOffset {.constructor,importcpp: "osg::PolygonOffset::PolygonOffset".}

proc constructPolygonOffset*(factor: cfloat, units: cfloat): PolygonOffset {.constructor,importcpp: "osg::PolygonOffset::PolygonOffset(@)".}

proc constructPolygonOffset*(po: Polygonoffset, copyop: Copyop = SHALLOW_COPY): PolygonOffset {.constructor,importcpp: "osg::PolygonOffset::PolygonOffset(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PolygonOffset): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PolygonOffset, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PolygonOffset, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PolygonOffset): cstring  {.importcpp: "libraryName".}

proc className*(this: PolygonOffset): cstring  {.importcpp: "className".}

proc getType*(this: PolygonOffset): Type  {.importcpp: "getType".}

proc compare*(this: PolygonOffset, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: PolygonOffset, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setFactor*(this: var PolygonOffset, factor: cfloat)  {.importcpp: "setFactor".}

proc getFactor*(this: PolygonOffset): cfloat  {.importcpp: "getFactor".}

proc setUnits*(this: var PolygonOffset, units: cfloat)  {.importcpp: "setUnits".}

proc getUnits*(this: PolygonOffset): cfloat  {.importcpp: "getUnits".}

proc apply*(this: PolygonOffset, state: State)  {.importcpp: "apply".}

proc setFactorMultiplier*(this: var PolygonOffset, multiplier: cfloat)  {.importcpp: "setFactorMultiplier".}

proc getFactorMultiplier*(this: var PolygonOffset): cfloat  {.importcpp: "getFactorMultiplier".}

proc setUnitsMultiplier*(this: var PolygonOffset, multiplier: cfloat)  {.importcpp: "setUnitsMultiplier".}

proc getUnitsMultiplier*(this: var PolygonOffset): cfloat  {.importcpp: "getUnitsMultiplier".}

proc areFactorAndUnitsMultipliersSet*(this: var PolygonOffset): bool  {.importcpp: "areFactorAndUnitsMultipliersSet".}

proc setFactorAndUnitsMultipliersUsingBestGuessForDriver*(this: var PolygonOffset)  {.importcpp: "setFactorAndUnitsMultipliersUsingBestGuessForDriver".}
    ## Checks with the OpenGL driver to try and pick multiplier appropriate
    ## for the hardware. note, requires a valid graphics context to be
    ## current.

{.pop.}  # header: "PolygonOffset"
