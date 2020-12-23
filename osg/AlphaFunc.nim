import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  ComparisonFunction* {.size:sizeof(cuint),header: "AlphaFunc", importcpp: "osg::AlphaFunc::ComparisonFunction".} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

{.push header: "AlphaFunc".}


# Constructors and methods
proc constructAlphaFunc*(): AlphaFunc {.constructor,importcpp: "AlphaFunc".}

proc constructAlphaFunc*(`func`: Comparisonfunction, `ref`: cfloat): AlphaFunc {.constructor,importcpp: "AlphaFunc(@)".}

proc constructAlphaFunc*(af: Alphafunc, copyop: Copyop = SHALLOW_COPY): AlphaFunc {.constructor,importcpp: "AlphaFunc(@)".}
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

{.pop.} # header: "AlphaFunc
