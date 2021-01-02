import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: AutoTransform  was providing: osg::AutoTransform
  # File: Object  was providing: osg::Object
  # File: PositionAttitudeTransform  was providing: osg::PositionAttitudeTransform
  # File: MatrixTransform  was providing: osg::MatrixTransform
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  ReferenceFrame* {.size:sizeof(cuint),header: "Transform", importcpp: "osg::Transform::ReferenceFrame", pure.} = enum
    RELATIVE_RF = 0,
    ABSOLUTE_RF = 1,
    ABSOLUTE_RF_INHERIT_VIEWPOINT = 2



{.push header: "Transform".}

proc constructTransform*(): Transform {.constructor,importcpp: "osg::Transform::Transform".}

proc constructTransform*(a00: Transform, copyop: CopyOp = SHALLOW_COPY): Transform {.constructor,importcpp: "osg::Transform::Transform(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Transform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Transform, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Transform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Transform): cstring  {.importcpp: "className".}

proc libraryName*(this: Transform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Transform, nv: NodeVisitor)  {.importcpp: "accept".}

proc asTransform*(this: var Transform): ptr Transform   {.importcpp: "asTransform".}

proc asTransform*(this: Transform): ptr Transform   {.importcpp: "asTransform".}

proc asMatrixTransform*(this: var Transform): ptr MatrixTransform   {.importcpp: "asMatrixTransform".}

proc asMatrixTransform*(this: Transform): ptr MatrixTransform   {.importcpp: "asMatrixTransform".}

proc asPositionAttitudeTransform*(this: var Transform): ptr PositionAttitudeTransform   {.importcpp: "asPositionAttitudeTransform".}

proc asPositionAttitudeTransform*(this: Transform): ptr PositionAttitudeTransform   {.importcpp: "asPositionAttitudeTransform".}

proc asAutoTransform*(this: var Transform): ptr AutoTransform   {.importcpp: "asAutoTransform".}

proc asAutoTransform*(this: Transform): ptr AutoTransform   {.importcpp: "asAutoTransform".}

proc setReferenceFrame*(this: var Transform, rf: ReferenceFrame)  {.importcpp: "setReferenceFrame".}
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

proc getReferenceFrame*(this: Transform): ReferenceFrame  {.importcpp: "getReferenceFrame".}

proc computeLocalToWorldMatrix*(this: Transform, matrix: Matrix, a01: ptr NodeVisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: Transform, matrix: Matrix, a01: ptr NodeVisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

proc computeBound*(this: Transform): BoundingSphere  {.importcpp: "computeBound".}
    ## Overrides Group's computeBound. There is no need to override in
    ## subclasses from osg::Transform since this computeBound() uses the
    ## underlying matrix (calling computeMatrix if required).

{.pop.}  # header: "Transform"
