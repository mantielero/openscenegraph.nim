import osg_types
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
  # File: Vec3d  was providing: osg::Vec3d
  # File: Quat  was providing: osg::Quat
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "PositionAttitudeTransform".}

proc constructPositionAttitudeTransform*(): PositionAttitudeTransform {.constructor,importcpp: "osg::PositionAttitudeTransform::PositionAttitudeTransform".}

proc constructPositionAttitudeTransform*(pat: PositionAttitudeTransform, copyop: CopyOp = SHALLOW_COPY): PositionAttitudeTransform {.constructor,importcpp: "osg::PositionAttitudeTransform::PositionAttitudeTransform(@)".}

proc cloneType*(this: PositionAttitudeTransform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PositionAttitudeTransform, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PositionAttitudeTransform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: PositionAttitudeTransform): cstring  {.importcpp: "className".}

proc libraryName*(this: PositionAttitudeTransform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var PositionAttitudeTransform, nv: NodeVisitor)  {.importcpp: "accept".}

proc asPositionAttitudeTransform*(this: var PositionAttitudeTransform): ptr PositionAttitudeTransform   {.importcpp: "asPositionAttitudeTransform".}

proc asPositionAttitudeTransform*(this: PositionAttitudeTransform): ptr PositionAttitudeTransform   {.importcpp: "asPositionAttitudeTransform".}

proc setPosition*(this: var PositionAttitudeTransform, pos: Vec3d)  {.importcpp: "setPosition".}

proc getPosition*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getPosition".}

proc setAttitude*(this: var PositionAttitudeTransform, quat: Quat)  {.importcpp: "setAttitude".}

proc getAttitude*(this: PositionAttitudeTransform): Quat  {.importcpp: "getAttitude".}

proc setScale*(this: var PositionAttitudeTransform, scale: Vec3d)  {.importcpp: "setScale".}

proc getScale*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getScale".}

proc setPivotPoint*(this: var PositionAttitudeTransform, pivot: Vec3d)  {.importcpp: "setPivotPoint".}

proc getPivotPoint*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getPivotPoint".}

proc computeLocalToWorldMatrix*(this: PositionAttitudeTransform, matrix: Matrix, nv: ptr NodeVisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: PositionAttitudeTransform, matrix: Matrix, nv: ptr NodeVisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

{.pop.}  # header: "PositionAttitudeTransform"
