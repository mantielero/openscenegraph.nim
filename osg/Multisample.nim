import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  Mode* {.size:sizeof(cuint),header: "Multisample", importcpp: "osg::Multisample::Mode".} = enum
    FASTEST = 4353,
    NICEST = 4354,
    DONT_CARE = 4352

{.push header: "Multisample".}


# Constructors and methods
proc constructMultisample*(): Multisample {.constructor,importcpp: "Multisample".}

proc constructMultisample*(trans: Multisample, copyop: Copyop = SHALLOW_COPY): Multisample {.constructor,importcpp: "Multisample(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Multisample): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Multisample, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Multisample, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Multisample): cstring  {.importcpp: "libraryName".}

proc className*(this: Multisample): cstring  {.importcpp: "className".}

proc getType*(this: Multisample): Type  {.importcpp: "getType".}

proc compare*(this: Multisample, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setSampleCoverage*(this: var Multisample, coverage: cfloat, invert: bool)  {.importcpp: "setSampleCoverage".}

proc setCoverage*(this: var Multisample, coverage: cfloat)  {.importcpp: "setCoverage".}

proc getCoverage*(this: Multisample): cfloat  {.importcpp: "getCoverage".}

proc setInvert*(this: var Multisample, invert: bool)  {.importcpp: "setInvert".}

proc getInvert*(this: Multisample): bool  {.importcpp: "getInvert".}

proc setHint*(this: var Multisample, mode: Mode)  {.importcpp: "setHint".}

proc getHint*(this: Multisample): Mode  {.importcpp: "getHint".}

proc apply*(this: Multisample, state: State)  {.importcpp: "apply".}

{.pop.} # header: "Multisample
