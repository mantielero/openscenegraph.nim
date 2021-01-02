import osg_types
  # File: Object  was providing: osg::Object
  # File: Matrixf  was providing: osg::Matrixf
  # File: Node  was providing: osg::Node
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrixd  was providing: osg::Matrixd
  # File: Vec3d  was providing: osg::Vec3d
  # File: Quat  was providing: osg::Quat
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  LoopMode* {.size:sizeof(cuint),header: "AnimationPath", importcpp: "osg::AnimationPath::LoopMode", pure.} = enum
    SWING = 0,
    LOOP = 1,
    NO_LOOPING = 2

  AnimationPath* {.header: "AnimationPath", importcpp: "osg::AnimationPath", byref.} = object #of osg::Object
    ## AnimationPath encapsulates a time varying transformation pathway. Can
    ## be used for updating camera position and model object position.
    ## AnimationPathCallback can be attached directly to Transform nodes to
    ## move subgraphs around the scene.

  ControlPoint* {.header: "AnimationPath", importcpp: "osg::AnimationPath::ControlPoint", byref.} = object

  AnimationPathCallback* {.header: "AnimationPath", importcpp: "osg::AnimationPathCallback", byref.} = object #of class osg::NodeCallback

  TimeControlPointMap* {.header: "AnimationPath", importcpp: "osg::AnimationPath::TimeControlPointMap".} = cint


{.push header: "AnimationPath".}

proc constructAnimationPath*(): AnimationPath {.constructor,importcpp: "osg::AnimationPath::AnimationPath".}

proc constructAnimationPath*(ap: AnimationPath, copyop: CopyOp = SHALLOW_COPY): AnimationPath {.constructor,importcpp: "osg::AnimationPath::AnimationPath(@)".}

proc constructControlPoint*(): ControlPoint {.constructor,importcpp: "osg::AnimationPath::ControlPoint::ControlPoint".}

proc constructControlPoint*(position: Vec3d): ControlPoint {.constructor,importcpp: "osg::AnimationPath::ControlPoint::ControlPoint(@)".}

proc constructControlPoint*(position: Vec3d, rotation: Quat): ControlPoint {.constructor,importcpp: "osg::AnimationPath::ControlPoint::ControlPoint(@)".}

proc constructControlPoint*(position: Vec3d, rotation: Quat, scale: Vec3d): ControlPoint {.constructor,importcpp: "osg::AnimationPath::ControlPoint::ControlPoint(@)".}

proc constructAnimationPathCallback*(): AnimationPathCallback {.constructor,importcpp: "osg::AnimationPathCallback::AnimationPathCallback".}

proc constructAnimationPathCallback*(apc: AnimationPathCallback, copyop: CopyOp): AnimationPathCallback {.constructor,importcpp: "osg::AnimationPathCallback::AnimationPathCallback(@)".}

proc constructAnimationPathCallback*(ap: ptr AnimationPath , timeOffset: cdouble, timeMultiplier: cdouble): AnimationPathCallback {.constructor,importcpp: "osg::AnimationPathCallback::AnimationPathCallback(@)".}
    ## Construct an AnimationPathCallback with a specified animation path.

proc constructAnimationPathCallback*(pivot: Vec3d, axis: Vec3d, angularVelocity: cfloat): AnimationPathCallback {.constructor,importcpp: "osg::AnimationPathCallback::AnimationPathCallback(@)".}
    ## Construct an AnimationPathCallback and automatically create an
    ## animation path to produce a rotation about a point.

proc cloneType*(this: AnimationPath): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AnimationPath, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AnimationPath, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AnimationPath): cstring  {.importcpp: "libraryName".}

proc className*(this: AnimationPath): cstring  {.importcpp: "className".}

proc setPosition*(this: var ControlPoint, position: Vec3d)  {.importcpp: "setPosition".}

proc getPosition*(this: ControlPoint): Vec3d  {.importcpp: "getPosition".}

proc setRotation*(this: var ControlPoint, rotation: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: ControlPoint): Quat  {.importcpp: "getRotation".}

proc setScale*(this: var ControlPoint, scale: Vec3d)  {.importcpp: "setScale".}

proc getScale*(this: ControlPoint): Vec3d  {.importcpp: "getScale".}

proc interpolate*(this: var ControlPoint, ratio: cfloat, first: ControlPoint, second: ControlPoint)  {.importcpp: "interpolate".}

proc interpolate*(this: var ControlPoint, ratio: cdouble, first: ControlPoint, second: ControlPoint)  {.importcpp: "interpolate".}

proc getMatrix*(this: ControlPoint, matrix: Matrixf)  {.importcpp: "getMatrix".}

proc getMatrix*(this: ControlPoint, matrix: Matrixd)  {.importcpp: "getMatrix".}

proc getInverse*(this: ControlPoint, matrix: Matrixf)  {.importcpp: "getInverse".}

proc getInverse*(this: ControlPoint, matrix: Matrixd)  {.importcpp: "getInverse".}

proc getMatrix*(this: AnimationPath, time: cdouble, matrix: Matrixf): bool  {.importcpp: "getMatrix".}
    ## Given a specific time, return the transformation matrix for a point.

proc getMatrix*(this: AnimationPath, time: cdouble, matrix: Matrixd): bool  {.importcpp: "getMatrix".}
    ## Given a specific time, return the transformation matrix for a point.

proc getInverse*(this: AnimationPath, time: cdouble, matrix: Matrixf): bool  {.importcpp: "getInverse".}
    ## Given a specific time, return the inverse transformation matrix for a
    ## point.

proc getInverse*(this: AnimationPath, time: cdouble, matrix: Matrixd): bool  {.importcpp: "getInverse".}

proc getInterpolatedControlPoint*(this: AnimationPath, time: cdouble, controlPoint: ControlPoint): bool  {.importcpp: "getInterpolatedControlPoint".}
    ## Given a specific time, return the local ControlPoint frame for a
    ## point.

proc insert*(this: var AnimationPath, time: cdouble, controlPoint: ControlPoint)  {.importcpp: "insert".}
    ## Insert a control point into the AnimationPath.

proc getFirstTime*(this: AnimationPath): cdouble  {.importcpp: "getFirstTime".}

proc getLastTime*(this: AnimationPath): cdouble  {.importcpp: "getLastTime".}

proc getPeriod*(this: AnimationPath): cdouble  {.importcpp: "getPeriod".}

proc setLoopMode*(this: var AnimationPath, lm: LoopMode)  {.importcpp: "setLoopMode".}

proc getLoopMode*(this: AnimationPath): LoopMode  {.importcpp: "getLoopMode".}

proc setTimeControlPointMap*(this: var AnimationPath, tcpm: TimeControlPointMap)  {.importcpp: "setTimeControlPointMap".}

proc getTimeControlPointMap*(this: var AnimationPath): TimeControlPointMap  {.importcpp: "getTimeControlPointMap".}

proc getTimeControlPointMap*(this: AnimationPath): TimeControlPointMap  {.importcpp: "getTimeControlPointMap".}

proc empty*(this: AnimationPath): bool  {.importcpp: "empty".}

proc clear*(this: var AnimationPath)  {.importcpp: "clear".}

proc read*(this: var AnimationPath, `in`: istream)  {.importcpp: "read".}
    ## Read the animation path from a flat ASCII file stream.

proc write*(this: AnimationPath, `out`: ostream)  {.importcpp: "write".}
    ## Write the animation path to a flat ASCII file stream.

proc write*(this: AnimationPath, itr: cint, `out`: ostream)  {.importcpp: "write".}
    ## Write the control point to a flat ASCII file stream.

proc cloneType*(this: AnimationPathCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AnimationPathCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AnimationPathCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AnimationPathCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: AnimationPathCallback): cstring  {.importcpp: "className".}

proc setAnimationPath*(this: var AnimationPathCallback, path: ptr AnimationPath )  {.importcpp: "setAnimationPath".}

proc getAnimationPath*(this: var AnimationPathCallback): ptr AnimationPath   {.importcpp: "getAnimationPath".}

proc getAnimationPath*(this: AnimationPathCallback): ptr AnimationPath   {.importcpp: "getAnimationPath".}

proc setPivotPoint*(this: var AnimationPathCallback, pivot: Vec3d)  {.importcpp: "setPivotPoint".}

proc getPivotPoint*(this: AnimationPathCallback): Vec3d  {.importcpp: "getPivotPoint".}

proc setUseInverseMatrix*(this: var AnimationPathCallback, useInverseMatrix: bool)  {.importcpp: "setUseInverseMatrix".}

proc getUseInverseMatrix*(this: AnimationPathCallback): bool  {.importcpp: "getUseInverseMatrix".}

proc setTimeOffset*(this: var AnimationPathCallback, offset: cdouble)  {.importcpp: "setTimeOffset".}

proc getTimeOffset*(this: AnimationPathCallback): cdouble  {.importcpp: "getTimeOffset".}

proc setTimeMultiplier*(this: var AnimationPathCallback, multiplier: cdouble)  {.importcpp: "setTimeMultiplier".}

proc getTimeMultiplier*(this: AnimationPathCallback): cdouble  {.importcpp: "getTimeMultiplier".}

proc reset*(this: var AnimationPathCallback)  {.importcpp: "reset".}

proc setPause*(this: var AnimationPathCallback, pause: bool)  {.importcpp: "setPause".}

proc getPause*(this: AnimationPathCallback): bool  {.importcpp: "getPause".}

proc getAnimationTime*(this: AnimationPathCallback): cdouble  {.importcpp: "getAnimationTime".}
    ## Get the animation time that is used to specify the position along the
    ## AnimationPath. Animation time is computed from the formula:
    ## ((_latestTime-_firstTime)-_timeOffset)*_timeMultiplier.

proc `()`*(this: var AnimationPathCallback, node: ptr Node , nv: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## Implements the callback.

proc update*(this: var AnimationPathCallback, node: Node)  {.importcpp: "update".}

{.pop.}  # header: "AnimationPath"
