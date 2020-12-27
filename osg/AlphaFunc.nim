import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  ComparisonFunction* {.size:sizeof(cuint),header: "AlphaFunc", importcpp: "osg::AlphaFunc::ComparisonFunction".} = enum
    cmprsnfnctnNEVER = 512,
    cmprsnfnctnLESS = 513,
    cmprsnfnctnEQUAL = 514,
    cmprsnfnctnLEQUAL = 515,
    cmprsnfnctnGREATER = 516,
    cmprsnfnctnNOTEQUAL = 517,
    cmprsnfnctnGEQUAL = 518,
    cmprsnfnctnALWAYS = 519

  AlphaFunc* {.header: "AlphaFunc", importcpp: "osg::AlphaFunc", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL glAlphaFunc.



{.push header: "AlphaFunc".}

proc constructAlphaFunc*(): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc".}

proc constructAlphaFunc*(`func`: Comparisonfunction, `ref`: cfloat): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc(@)".}

proc constructAlphaFunc*(af: Alphafunc, copyop: Copyop = SHALLOW_COPY): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: AlphaFunc): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AlphaFunc, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AlphaFunc, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AlphaFunc): cstring  {.importcpp: "libraryName".}

proc className*(this: AlphaFunc): cstring  {.importcpp: "className".}

proc getType*(this: AlphaFunc): Type  {.importcpp: "getType".}

proc compare*(this: AlphaFunc, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: AlphaFunc, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var AlphaFunc, `func`: Comparisonfunction, `ref`: cfloat)  {.importcpp: "setFunction".}

proc setFunction*(this: var AlphaFunc, `func`: Comparisonfunction)  {.importcpp: "setFunction".}

proc getFunction*(this: AlphaFunc): Comparisonfunction  {.importcpp: "getFunction".}

proc setReferenceValue*(this: var AlphaFunc, value: cfloat)  {.importcpp: "setReferenceValue".}

proc getReferenceValue*(this: AlphaFunc): cfloat  {.importcpp: "getReferenceValue".}

proc apply*(this: AlphaFunc, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "AlphaFunc"
