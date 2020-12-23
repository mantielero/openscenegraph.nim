import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLenum
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "Hint".}


# Constructors and methods
proc constructHint*(): Hint {.constructor,importcpp: "Hint".}

proc constructHint*(target: GLenum, mode: GLenum): Hint {.constructor,importcpp: "Hint(@)".}

proc constructHint*(hint: Hint, copyop: Copyop = SHALLOW_COPY): Hint {.constructor,importcpp: "Hint(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Hint): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Hint, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Hint, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Hint): cstring  {.importcpp: "libraryName".}

proc className*(this: Hint): cstring  {.importcpp: "className".}

proc getType*(this: Hint): Type  {.importcpp: "getType".}

proc compare*(this: Hint, sa: Stateattribute): cint  {.importcpp: "compare".}

proc getMember*(this: Hint): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc setTarget*(this: var Hint, target: GLenum)  {.importcpp: "setTarget".}

proc getTarget*(this: Hint): GLenum  {.importcpp: "getTarget".}

proc setMode*(this: var Hint, mode: GLenum)  {.importcpp: "setMode".}

proc getMode*(this: Hint): GLenum  {.importcpp: "getMode".}

proc apply*(this: Hint, state: State)  {.importcpp: "apply".}

{.pop.} # header: "Hint
