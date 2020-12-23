import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  CoordOriginMode* {.size:sizeof(cuint),header: "PointSprite", importcpp: "osg::PointSprite::CoordOriginMode".} = enum
    UPPER_LEFT = 36002,
    LOWER_LEFT = 36001

{.push header: "PointSprite".}


# Constructors and methods
proc constructPointSprite*(): PointSprite {.constructor,importcpp: "PointSprite".}

proc constructPointSprite*(ps: Pointsprite, copyop: Copyop = SHALLOW_COPY): PointSprite {.constructor,importcpp: "PointSprite(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PointSprite): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PointSprite, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PointSprite, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PointSprite): cstring  {.importcpp: "libraryName".}

proc className*(this: PointSprite): cstring  {.importcpp: "className".}

proc getType*(this: PointSprite): Type  {.importcpp: "getType".}

proc compare*(this: PointSprite, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: PointSprite, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc checkValidityOfAssociatedModes*(this: PointSprite, State): bool  {.importcpp: "checkValidityOfAssociatedModes".}

proc isTextureAttribute*(this: PointSprite): bool  {.importcpp: "isTextureAttribute".}

proc apply*(this: PointSprite, state: State)  {.importcpp: "apply".}

proc setCoordOriginMode*(this: var PointSprite, mode: Coordoriginmode)  {.importcpp: "setCoordOriginMode".}

proc getCoordOriginMode*(this: PointSprite): Coordoriginmode  {.importcpp: "getCoordOriginMode".}

{.pop.} # header: "PointSprite
