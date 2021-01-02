import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  CoordOriginMode* {.size:sizeof(cuint),header: "PointSprite", importcpp: "osg::PointSprite::CoordOriginMode", pure.} = enum
    LOWER_LEFT = 36001,
    UPPER_LEFT = 36002

  PointSprite* {.header: "PointSprite", importcpp: "osg::PointSprite", byref.} = object #of osg::StateAttribute
    ## PointSprite base class which encapsulates enabling of point sprites .



{.push header: "PointSprite".}

proc constructPointSprite*(): PointSprite {.constructor,importcpp: "osg::PointSprite::PointSprite".}

proc constructPointSprite*(ps: PointSprite, copyop: CopyOp = SHALLOW_COPY): PointSprite {.constructor,importcpp: "osg::PointSprite::PointSprite(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PointSprite): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PointSprite, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PointSprite, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PointSprite): cstring  {.importcpp: "libraryName".}

proc className*(this: PointSprite): cstring  {.importcpp: "className".}

proc getType*(this: PointSprite): Type  {.importcpp: "getType".}

proc compare*(this: PointSprite, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: PointSprite, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc checkValidityOfAssociatedModes*(this: PointSprite, a00: State): bool  {.importcpp: "checkValidityOfAssociatedModes".}

proc isTextureAttribute*(this: PointSprite): bool  {.importcpp: "isTextureAttribute".}

proc apply*(this: PointSprite, state: State)  {.importcpp: "apply".}

proc setCoordOriginMode*(this: var PointSprite, mode: CoordOriginMode)  {.importcpp: "setCoordOriginMode".}

proc getCoordOriginMode*(this: PointSprite): CoordOriginMode  {.importcpp: "getCoordOriginMode".}

{.pop.}  # header: "PointSprite"
