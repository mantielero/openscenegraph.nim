import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Vec4 # Provides Vec4
import State # Provides State


{.push header: "BlendColor".}


# Constructors and methods
proc constructBlendColor*(): BlendColor {.constructor,importcpp: "BlendColor".}

proc constructBlendColor*(antColor: Vec4): BlendColor {.constructor,importcpp: "BlendColor(@)".}

proc constructBlendColor*(trans: Blendcolor, copyop: Copyop = SHALLOW_COPY): BlendColor {.constructor,importcpp: "BlendColor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendColor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendColor, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendColor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendColor): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendColor): cstring  {.importcpp: "className".}

proc getType*(this: BlendColor): Type  {.importcpp: "getType".}

proc compare*(this: BlendColor, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendColor, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setConstantColor*(this: var BlendColor, color: Vec4)  {.importcpp: "setConstantColor".}

proc getConstantColor*(this: var BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc getConstantColor*(this: BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc apply*(this: BlendColor, state: State)  {.importcpp: "apply".}

{.pop.} # header: "BlendColor
