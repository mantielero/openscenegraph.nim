import CopyOp # Provides CopyOp
import Object # Provides Object
import Matrixd # Provides Matrixd
import Plane # Provides Plane
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  # Enums
  Mode* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Mode".} = enum
    OBJECT_LINEAR = 9217,
    EYE_LINEAR = 9216,
    SPHERE_MAP = 9218,
    NORMAL_MAP = 34065,
    REFLECTION_MAP = 34066

  Coord* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Coord".} = enum
    S = 0,
    T = 1,
    R = 2,
    Q = 3

{.push header: "TexGen".}


# Constructors and methods
proc constructTexGen*(): TexGen {.constructor,importcpp: "TexGen".}

proc constructTexGen*(texgen: Texgen, copyop: Copyop = SHALLOW_COPY): TexGen {.constructor,importcpp: "TexGen(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexGen): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexGen, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexGen, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexGen): cstring  {.importcpp: "libraryName".}

proc className*(this: TexGen): cstring  {.importcpp: "className".}

proc getType*(this: TexGen): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexGen): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexGen, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: TexGen, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc apply*(this: TexGen, state: State)  {.importcpp: "apply".}

proc setMode*(this: var TexGen, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: TexGen): Mode  {.importcpp: "getMode".}

proc setPlane*(this: var TexGen, which: Coord, plane: Plane)  {.importcpp: "setPlane".}

proc getPlane*(this: var TexGen, which: Coord): Plane  {.importcpp: "getPlane".}

proc getPlane*(this: TexGen, which: Coord): Plane  {.importcpp: "getPlane".}

proc setPlanesFromMatrix*(this: var TexGen, matrix: Matrixd)  {.importcpp: "setPlanesFromMatrix".}
    ## Set the tex gen planes from specified matrix. Typical usage would be
    ## to pass in a projection matrix to set up projective texturing.

{.pop.} # header: "TexGen
