import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  # Enums
  Mode* {.size:sizeof(cuint),header: "PolygonMode", importcpp: "osg::PolygonMode::Mode".} = enum
    POINT = 6912,
    LINE = 6913,
    FILL = 6914

  Face* {.size:sizeof(cuint),header: "PolygonMode", importcpp: "osg::PolygonMode::Face".} = enum
    FRONT_AND_BACK = 0,
    FRONT = 1,
    BACK = 2

{.push header: "PolygonMode".}


# Constructors and methods
proc constructPolygonMode*(): PolygonMode {.constructor,importcpp: "PolygonMode".}

proc constructPolygonMode*(face: Face, mode: Mode): PolygonMode {.constructor,importcpp: "PolygonMode(@)".}

proc constructPolygonMode*(pm: Polygonmode, copyop: Copyop = SHALLOW_COPY): PolygonMode {.constructor,importcpp: "PolygonMode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PolygonMode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PolygonMode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PolygonMode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PolygonMode): cstring  {.importcpp: "libraryName".}

proc className*(this: PolygonMode): cstring  {.importcpp: "className".}

proc getType*(this: PolygonMode): Type  {.importcpp: "getType".}

proc compare*(this: PolygonMode, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var PolygonMode, face: Face, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: PolygonMode, face: Face): Mode  {.importcpp: "getMode".}

proc getFrontAndBack*(this: PolygonMode): bool  {.importcpp: "getFrontAndBack".}

proc apply*(this: PolygonMode, state: State)  {.importcpp: "apply".}

{.pop.} # header: "PolygonMode
