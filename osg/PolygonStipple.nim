import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLubyte
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "PolygonStipple".}


# Constructors and methods
proc constructPolygonStipple*(): PolygonStipple {.constructor,importcpp: "PolygonStipple".}

proc constructPolygonStipple*(mask: ptr GLubyte): PolygonStipple {.constructor,importcpp: "PolygonStipple(@)".}

proc constructPolygonStipple*(lw: Polygonstipple, copyop: Copyop = SHALLOW_COPY): PolygonStipple {.constructor,importcpp: "PolygonStipple(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PolygonStipple): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PolygonStipple, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PolygonStipple, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PolygonStipple): cstring  {.importcpp: "libraryName".}

proc className*(this: PolygonStipple): cstring  {.importcpp: "className".}

proc getType*(this: PolygonStipple): Type  {.importcpp: "getType".}

proc compare*(this: PolygonStipple, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: PolygonStipple, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setMask*(this: var PolygonStipple, mask: ptr GLubyte)  {.importcpp: "setMask".}
    ## set the mask up, copying 128 bytes (32x32 bitfield) from mask into the
    ## local _mask.

proc getMask*(this: PolygonStipple): ptr GLubyte  {.importcpp: "getMask".}
    ## get a pointer to the mask.

proc apply*(this: PolygonStipple, state: State)  {.importcpp: "apply".}

{.pop.} # header: "PolygonStipple
