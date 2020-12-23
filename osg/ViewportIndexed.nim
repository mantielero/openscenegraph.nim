import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Viewport # Provides value_type
import State # Provides State


{.push header: "ViewportIndexed".}


# Constructors and methods
proc constructViewportIndexed*(): ViewportIndexed {.constructor,importcpp: "ViewportIndexed".}

proc constructViewportIndexed*(index: cuint, x: Value_type, y: Value_type, width: Value_type, height: Value_type): ViewportIndexed {.constructor,importcpp: "ViewportIndexed(@)".}

proc constructViewportIndexed*(cm: Viewportindexed, copyop: Copyop = SHALLOW_COPY): ViewportIndexed {.constructor,importcpp: "ViewportIndexed(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ViewportIndexed): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ViewportIndexed, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ViewportIndexed, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ViewportIndexed): cstring  {.importcpp: "libraryName".}

proc className*(this: ViewportIndexed): cstring  {.importcpp: "className".}

proc getType*(this: ViewportIndexed): Type  {.importcpp: "getType".}

proc compare*(this: ViewportIndexed, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: ViewportIndexed): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var ViewportIndexed, index: cuint)  {.importcpp: "setIndex".}
    ## Set the index of the ViewportIndexed.

proc getIndex*(this: ViewportIndexed): cuint  {.importcpp: "getIndex".}
    ## Get the index of the ViewportIndexed.

proc apply*(this: ViewportIndexed, state: State)  {.importcpp: "apply".}

{.pop.} # header: "ViewportIndexed
