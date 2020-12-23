import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "TexEnvFilter".}


# Constructors and methods
proc constructTexEnvFilter*(lodBias: cfloat): TexEnvFilter {.constructor,importcpp: "TexEnvFilter(@)".}

proc constructTexEnvFilter*(texenv: Texenvfilter, copyop: Copyop = SHALLOW_COPY): TexEnvFilter {.constructor,importcpp: "TexEnvFilter(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexEnvFilter): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexEnvFilter, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexEnvFilter, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexEnvFilter): cstring  {.importcpp: "libraryName".}

proc className*(this: TexEnvFilter): cstring  {.importcpp: "className".}

proc getType*(this: TexEnvFilter): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexEnvFilter): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexEnvFilter, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setLodBias*(this: var TexEnvFilter, lodBias: cfloat)  {.importcpp: "setLodBias".}

proc getLodBias*(this: TexEnvFilter): cfloat  {.importcpp: "getLodBias".}

proc apply*(this: TexEnvFilter, state: State)  {.importcpp: "apply".}

{.pop.} # header: "TexEnvFilter
