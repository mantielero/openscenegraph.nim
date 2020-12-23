import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Vec4 # Provides Vec4
import State # Provides State


type
  Mode* {.size:sizeof(cuint),header: "TexEnv", importcpp: "osg::TexEnv::Mode".} = enum
    DECAL = 8449,
    MODULATE = 8448,
    BLEND = 3042,
    REPLACE = 7681,
    ADD = 260

{.push header: "TexEnv".}


# Constructors and methods
proc constructTexEnv*(mode: Mode): TexEnv {.constructor,importcpp: "TexEnv(@)".}

proc constructTexEnv*(texenv: Texenv, copyop: Copyop = SHALLOW_COPY): TexEnv {.constructor,importcpp: "TexEnv(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexEnv): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexEnv, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexEnv, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexEnv): cstring  {.importcpp: "libraryName".}

proc className*(this: TexEnv): cstring  {.importcpp: "className".}

proc getType*(this: TexEnv): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexEnv): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexEnv, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var TexEnv, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: TexEnv): Mode  {.importcpp: "getMode".}

proc setColor*(this: var TexEnv, color: Vec4)  {.importcpp: "setColor".}

proc getColor*(this: var TexEnv): Vec4  {.importcpp: "getColor".}

proc getColor*(this: TexEnv): Vec4  {.importcpp: "getColor".}

proc apply*(this: TexEnv, state: State)  {.importcpp: "apply".}

{.pop.} # header: "TexEnv
