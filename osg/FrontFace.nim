import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  Mode* {.size:sizeof(cuint),header: "FrontFace", importcpp: "osg::FrontFace::Mode".} = enum
    CLOCKWISE = 2304,
    COUNTER_CLOCKWISE = 2305

{.push header: "FrontFace".}


# Constructors and methods
proc constructFrontFace*(face: Mode): FrontFace {.constructor,importcpp: "FrontFace(@)".}

proc constructFrontFace*(ff: Frontface, copyop: Copyop = SHALLOW_COPY): FrontFace {.constructor,importcpp: "FrontFace(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: FrontFace): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: FrontFace, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: FrontFace, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: FrontFace): cstring  {.importcpp: "libraryName".}

proc className*(this: FrontFace): cstring  {.importcpp: "className".}

proc getType*(this: FrontFace): Type  {.importcpp: "getType".}

proc compare*(this: FrontFace, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var FrontFace, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: FrontFace): Mode  {.importcpp: "getMode".}

proc apply*(this: FrontFace, state: State)  {.importcpp: "apply".}

{.pop.} # header: "FrontFace
