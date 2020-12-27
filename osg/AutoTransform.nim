import Vec3  # provides: osg::Vec3
import Object  # provides: osg::Object
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
import Matrixd  # provides: osg::Matrixd
import Vec3d  # provides: osg::Vec3d
import Quat  # provides: osg::Quat
import NodeVisitor  # provides: osg::NodeVisitor
type
  AutoRotateMode* {.size:sizeof(cuint),header: "AutoTransform", importcpp: "osg::AutoTransform::AutoRotateMode".} = enum
    trttmdNO_ROTATION = 0,
    trttmdROTATE_TO_SCREEN = 1,
    trttmdROTATE_TO_CAMERA = 2,
    trttmdROTATE_TO_AXIS = 3

  AxisAligned* {.size:sizeof(cuint),header: "AutoTransform", importcpp: "osg::AutoTransform::AxisAligned".} = enum
    xslgndAXIAL_ROT_X_AXIS = 4,
    xslgndAXIAL_ROT_Y_AXIS = 5,
    xslgndAXIAL_ROT_Z_AXIS = 6,
    xslgndCACHE_DIRTY = 7



{.push header: "AutoTransform".}

proc constructAutoTransform*(): AutoTransform {.constructor,importcpp: "osg::AutoTransform::AutoTransform".}

proc constructAutoTransform*(pat: Autotransform, copyop: Copyop = SHALLOW_COPY): AutoTransform {.constructor,importcpp: "osg::AutoTransform::AutoTransform(@)".}

proc cloneType*(this: AutoTransform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AutoTransform, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AutoTransform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: AutoTransform): cstring  {.importcpp: "className".}

proc libraryName*(this: AutoTransform): cstring  {.importcpp: "libraryName".}

proc asAutoTransform*(this: var AutoTransform): ptr Autotransform   {.importcpp: "asAutoTransform".}

proc asAutoTransform*(this: AutoTransform): ptr Autotransform   {.importcpp: "asAutoTransform".}

proc setPosition*(this: var AutoTransform, pos: Vec3d)  {.importcpp: "setPosition".}

proc getPosition*(this: AutoTransform): Vec3d  {.importcpp: "getPosition".}

proc setRotation*(this: var AutoTransform, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: AutoTransform): Quat  {.importcpp: "getRotation".}

proc setScale*(this: var AutoTransform, scale: cdouble)  {.importcpp: "setScale".}

proc setScale*(this: var AutoTransform, scale: Vec3d)  {.importcpp: "setScale".}

proc getScale*(this: AutoTransform): Vec3d  {.importcpp: "getScale".}

proc setMinimumScale*(this: var AutoTransform, minimumScale: cdouble)  {.importcpp: "setMinimumScale".}

proc getMinimumScale*(this: AutoTransform): cdouble  {.importcpp: "getMinimumScale".}

proc setMaximumScale*(this: var AutoTransform, maximumScale: cdouble)  {.importcpp: "setMaximumScale".}

proc getMaximumScale*(this: AutoTransform): cdouble  {.importcpp: "getMaximumScale".}

proc setPivotPoint*(this: var AutoTransform, pivot: Vec3d)  {.importcpp: "setPivotPoint".}

proc getPivotPoint*(this: AutoTransform): Vec3d  {.importcpp: "getPivotPoint".}

proc setAutoUpdateEyeMovementTolerance*(this: var AutoTransform, tolerance: cfloat)  {.importcpp: "setAutoUpdateEyeMovementTolerance".}

proc getAutoUpdateEyeMovementTolerance*(this: AutoTransform): cfloat  {.importcpp: "getAutoUpdateEyeMovementTolerance".}

proc setAutoRotateMode*(this: var AutoTransform, mode: Autorotatemode)  {.importcpp: "setAutoRotateMode".}

proc getAutoRotateMode*(this: AutoTransform): Autorotatemode  {.importcpp: "getAutoRotateMode".}

proc setAxis*(this: var AutoTransform, axis: Vec3)  {.importcpp: "setAxis".}
    ## Set the rotation axis for the AutoTransform's child nodes. Only
    ## utilized when _autoRotateMode==ROTATE_TO_AXIS.

proc getAxis*(this: AutoTransform): Vec3  {.importcpp: "getAxis".}
    ## Get the rotation axis.

proc setNormal*(this: var AutoTransform, normal: Vec3)  {.importcpp: "setNormal".}
    ## This normal defines child Nodes' front face direction when unrotated.

proc getNormal*(this: AutoTransform): Vec3  {.importcpp: "getNormal".}
    ## Get the front face direction normal.

proc setAutoScaleToScreen*(this: var AutoTransform, autoScaleToScreen: bool)  {.importcpp: "setAutoScaleToScreen".}

proc getAutoScaleToScreen*(this: AutoTransform): bool  {.importcpp: "getAutoScaleToScreen".}

proc setAutoScaleTransitionWidthRatio*(this: var AutoTransform, ratio: cfloat)  {.importcpp: "setAutoScaleTransitionWidthRatio".}

proc getAutoScaleTransitionWidthRatio*(this: AutoTransform): cfloat  {.importcpp: "getAutoScaleTransitionWidthRatio".}

proc computeLocalToWorldMatrix*(this: AutoTransform, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: AutoTransform, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

proc computeMatrix*(this: AutoTransform, nv: ptr Nodevisitor ): Matrixd  {.importcpp: "computeMatrix".}

proc updateCache*(this: var AutoTransform)  {.importcpp: "updateCache".}

{.pop.}  # header: "AutoTransform"
