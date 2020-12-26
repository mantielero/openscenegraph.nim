import BoundingSphere  # provides: osg::BoundingSphere
import AutoTransform  # provides: osg::AutoTransform
import Object  # provides: osg::Object
import PositionAttitudeTransform  # provides: osg::PositionAttitudeTransform
import MatrixTransform  # provides: osg::MatrixTransform
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
import NodeVisitor  # provides: osg::NodeVisitor
type
  ReferenceFrame* {.size:sizeof(cuint),header: "Transform", importcpp: "osg::Transform::ReferenceFrame".} = enum
    RELATIVE_RF = 0,
    ABSOLUTE_RF = 1,
    ABSOLUTE_RF_INHERIT_VIEWPOINT = 2



{.push header: "Transform".}

proc constructTransform*(): Transform {.constructor,importcpp: "osg::Transform::Transform".}

proc constructTransform*(Transform, copyop: Copyop = SHALLOW_COPY): Transform {.constructor,importcpp: "osg::Transform::Transform(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Transform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Transform, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Transform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Transform): cstring  {.importcpp: "className".}

proc libraryName*(this: Transform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Transform, nv: Nodevisitor)  {.importcpp: "accept".}

proc asTransform*(this: var Transform): ptr Transform   {.importcpp: "asTransform".}

proc asTransform*(this: Transform): ptr Transform   {.importcpp: "asTransform".}

proc asMatrixTransform*(this: var Transform): ptr Matrixtransform   {.importcpp: "asMatrixTransform".}

proc asMatrixTransform*(this: Transform): ptr Matrixtransform   {.importcpp: "asMatrixTransform".}

proc asPositionAttitudeTransform*(this: var Transform): ptr Positionattitudetransform   {.importcpp: "asPositionAttitudeTransform".}

proc asPositionAttitudeTransform*(this: Transform): ptr Positionattitudetransform   {.importcpp: "asPositionAttitudeTransform".}

proc asAutoTransform*(this: var Transform): ptr Autotransform   {.importcpp: "asAutoTransform".}

proc asAutoTransform*(this: Transform): ptr Autotransform   {.importcpp: "asAutoTransform".}

proc setReferenceFrame*(this: var Transform, rf: Referenceframe)  {.importcpp: "setReferenceFrame".}
    ## Set the transform's ReferenceFrame, either to be relative to its
    ## parent reference frame, or relative to an absolute coordinate frame.
    ## RELATIVE_RF is the default. Note: Setting the ReferenceFrame to be
    ## ABSOLUTE_RF will also set the CullingActive flag on the transform, and
    ## hence all of its parents, to false, thereby disabling culling of it
    ## and all its parents. This is necessary to prevent inappropriate
    ## culling, but may impact cull times if the absolute transform is deep
    ## in the scene graph. It is therefore recommended to only use absolute
    ## Transforms at the top of the scene, for such things as heads up
    ## displays. ABSOLUTE_RF_INHERIT_VIEWPOINT is the same as ABSOLUTE_RF
    ## except it adds the ability to use the parents view points position in
    ## world coordinates as its local viewpoint in the new coordinates frame.
    ## This is useful for Render to texture Cameras that wish to use the main
    ## views LOD range computation (which uses the viewpoint rather than the
    ## eye point) rather than use the local eye point defined by the this
    ## Transforms' absolute view matrix.

proc getReferenceFrame*(this: Transform): Referenceframe  {.importcpp: "getReferenceFrame".}

proc computeLocalToWorldMatrix*(this: Transform, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: Transform, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

proc computeBound*(this: Transform): Boundingsphere  {.importcpp: "computeBound".}
    ## Overrides Group's computeBound. There is no need to override in
    ## subclasses from osg::Transform since this computeBound() uses the
    ## underlying matrix (calling computeMatrix if required).

{.pop.}  # header: "Transform"
