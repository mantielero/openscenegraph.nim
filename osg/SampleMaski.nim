import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "SampleMaski".}


# Constructors and methods
proc constructSampleMaski*(): SampleMaski {.constructor,importcpp: "SampleMaski".}

proc constructSampleMaski*(sampleMaski: Samplemaski, copyop: Copyop = SHALLOW_COPY): SampleMaski {.constructor,importcpp: "SampleMaski(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: SampleMaski): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: SampleMaski, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: SampleMaski, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: SampleMaski): cstring  {.importcpp: "libraryName".}

proc className*(this: SampleMaski): cstring  {.importcpp: "className".}

proc getType*(this: SampleMaski): Type  {.importcpp: "getType".}

proc compare*(this: SampleMaski, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMask*(this: var SampleMaski, mask: cuint, maskNumber: cuint)  {.importcpp: "setMask".}

proc getMask*(this: SampleMaski, maskNumber: cuint): cuint  {.importcpp: "getMask".}

proc apply*(this: SampleMaski, state: State)  {.importcpp: "apply".}

{.pop.} # header: "SampleMaski
