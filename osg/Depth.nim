import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  Function* {.size:sizeof(cuint),header: "Depth", importcpp: "osg::Depth::Function".} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

{.push header: "Depth".}


# Constructors and methods
proc constructDepth*(`func`: Function, zNear: cdouble, zFar: cdouble, writeMask: bool): Depth {.constructor,importcpp: "Depth(@)".}

proc constructDepth*(dp: Depth, copyop: Copyop = SHALLOW_COPY): Depth {.constructor,importcpp: "Depth(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Depth): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Depth, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Depth, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Depth): cstring  {.importcpp: "libraryName".}

proc className*(this: Depth): cstring  {.importcpp: "className".}

proc getType*(this: Depth): Type  {.importcpp: "getType".}

proc compare*(this: Depth, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Depth, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

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

{.pop.} # header: "Depth
