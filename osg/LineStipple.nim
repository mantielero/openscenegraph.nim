import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLint, GLushort
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "LineStipple".}


# Constructors and methods
proc constructLineStipple*(): LineStipple {.constructor,importcpp: "LineStipple".}

proc constructLineStipple*(factor: GLint, pattern: GLushort): LineStipple {.constructor,importcpp: "LineStipple(@)".}

proc constructLineStipple*(lw: Linestipple, copyop: Copyop = SHALLOW_COPY): LineStipple {.constructor,importcpp: "LineStipple(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LineStipple): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LineStipple, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LineStipple, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LineStipple): cstring  {.importcpp: "libraryName".}

proc className*(this: LineStipple): cstring  {.importcpp: "className".}

proc getType*(this: LineStipple): Type  {.importcpp: "getType".}

proc compare*(this: LineStipple, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: LineStipple, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setFactor*(this: var LineStipple, factor: GLint)  {.importcpp: "setFactor".}

proc getFactor*(this: LineStipple): GLint  {.importcpp: "getFactor".}

proc setPattern*(this: var LineStipple, pattern: GLushort)  {.importcpp: "setPattern".}

proc getPattern*(this: LineStipple): GLushort  {.importcpp: "getPattern".}

proc apply*(this: LineStipple, state: State)  {.importcpp: "apply".}

{.pop.} # header: "LineStipple
