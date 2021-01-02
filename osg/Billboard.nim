import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: Drawable  was providing: osg::Drawable
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  Mode* {.size:sizeof(cuint),header: "Billboard", importcpp: "osg::Billboard::Mode", pure.} = enum
    POINT_ROT_EYE = 0,
    POINT_ROT_WORLD = 1,
    AXIAL_ROT = 2

  AxisAligned* {.size:sizeof(cuint),header: "Billboard", importcpp: "osg::Billboard::AxisAligned", pure.} = enum
    AXIAL_ROT_X_AXIS = 3,
    AXIAL_ROT_Y_AXIS = 4,
    AXIAL_ROT_Z_AXIS = 5,
    POINT_ROT_WORLD_Z_AXIS = 6,
    CACHE_DIRTY = 7

  PositionList* {.header: "Billboard", importcpp: "osg::Billboard::PositionList".} = cint


{.push header: "Billboard".}

proc constructBillboard*(): Billboard {.constructor,importcpp: "osg::Billboard::Billboard".}

proc constructBillboard*(a00: Billboard, copyop: CopyOp = SHALLOW_COPY): Billboard {.constructor,importcpp: "osg::Billboard::Billboard(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Billboard): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Billboard, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Billboard, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Billboard): cstring  {.importcpp: "className".}

proc libraryName*(this: Billboard): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Billboard, nv: NodeVisitor)  {.importcpp: "accept".}

proc setMode*(this: var Billboard, mode: Mode)  {.importcpp: "setMode".}
    ## Set the billboard rotation mode.

proc getMode*(this: Billboard): Mode  {.importcpp: "getMode".}
    ## Get the billboard rotation mode.

proc setAxis*(this: var Billboard, axis: Vec3)  {.importcpp: "setAxis".}
    ## Set the rotation axis for the billboard's child Drawables. Only
    ## utilized when mode==AXIAL_ROT.

proc getAxis*(this: Billboard): Vec3  {.importcpp: "getAxis".}
    ## Get the rotation axis.

proc setNormal*(this: var Billboard, normal: Vec3)  {.importcpp: "setNormal".}
    ## This normal defines child Drawables' front face direction when
    ## unrotated.

proc getNormal*(this: Billboard): Vec3  {.importcpp: "getNormal".}
    ## Get the front face direction normal.

proc setPosition*(this: var Billboard, i: cuint, pos: Vec3)  {.importcpp: "setPosition".}
    ## Set the specified child Drawable's position.

proc getPosition*(this: Billboard, i: cuint): Vec3  {.importcpp: "getPosition".}
    ## Get the specified child Drawable's position.

proc setPositionList*(this: var Billboard, pl: PositionList)  {.importcpp: "setPositionList".}
    ## Set the list of pivot point positions.

proc getPositionList*(this: var Billboard): PositionList  {.importcpp: "getPositionList".}
    ## Get the list of pivot point positions.

proc getPositionList*(this: Billboard): PositionList  {.importcpp: "getPositionList".}
    ## Get a const list of pivot point positions.

proc addDrawable*(this: var Billboard, gset: ptr Drawable ): bool  {.importcpp: "addDrawable".}
    ## Add a Drawable with a default position of Vec3(0,0,0). Call the base-
    ## class Geode::addDrawble() to add the given Drawable gset as a child.
    ## If Geode::addDrawable() returns true, add the default position to the
    ## pivot point position list and return true. Otherwise, return false.

proc addDrawable*(this: var Billboard, gset: ptr Drawable , pos: Vec3): bool  {.importcpp: "addDrawable".}
    ## Add a Drawable with a specified position. Call the base-class
    ## Geode::addDrawble() to add the given Drawable gset as a child. If
    ## Geode::addDrawable() returns true, add the given position pos to the
    ## pivot point position list and return true. Otherwise, return false.

proc removeDrawable*(this: var Billboard, gset: ptr Drawable ): bool  {.importcpp: "removeDrawable".}
    ## Remove a Drawable and its associated position. If gset is a child,
    ## remove it, decrement its reference count, remove its pivot point
    ## position. and return true. Otherwise, return false.

proc computeMatrix*(this: Billboard, modelview: Matrix, eye_local: Vec3, pos_local: Vec3): bool  {.importcpp: "computeMatrix".}

proc computeBound*(this: Billboard): BoundingSphere  {.importcpp: "computeBound".}

proc updateCache*(this: var Billboard)  {.importcpp: "updateCache".}

{.pop.}  # header: "Billboard"
