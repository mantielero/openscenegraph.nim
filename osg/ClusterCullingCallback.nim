import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: Node  was providing: osg::Node
  # File: Drawable  was providing: osg::Drawable
  # File: Callback  was providing: osg::NodeCallback, osg::DrawableCullCallback
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrixd  was providing: osg::Matrixd
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  ClusterCullingCallback* {.header: "ClusterCullingCallback", importcpp: "osg::ClusterCullingCallback", byref.} = object #of class osg::DrawableCullCallback
    ## Implements cluster culling to cull back facing subgraphs and
    ## drawables. Derived from Drawable::CullCallback and osg::NodeCallback.



{.push header: "ClusterCullingCallback".}

proc constructClusterCullingCallback*(): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback".}

proc constructClusterCullingCallback*(ccc: ClusterCullingCallback, copyop: CopyOp): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc constructClusterCullingCallback*(controlPoint: Vec3, normal: Vec3, deviation: cfloat, radius: cfloat): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc constructClusterCullingCallback*(drawable: ptr Drawable ): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc cloneType*(this: ClusterCullingCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClusterCullingCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClusterCullingCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ClusterCullingCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ClusterCullingCallback): cstring  {.importcpp: "className".}

proc asNodeCallback*(this: var ClusterCullingCallback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: ClusterCullingCallback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc asDrawableCullCallback*(this: var ClusterCullingCallback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: ClusterCullingCallback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc run*(this: var ClusterCullingCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}

proc computeFrom*(this: var ClusterCullingCallback, drawable: ptr Drawable )  {.importcpp: "computeFrom".}
    ## Computes the control point, normal, and deviation from the given
    ## drawable contents.

proc transform*(this: var ClusterCullingCallback, matrix: Matrixd)  {.importcpp: "transform".}
    ## Transform the ClusterCullingCallback's positional members to a new
    ## coordinate frame.

proc set*(this: var ClusterCullingCallback, controlPoint: Vec3, normal: Vec3, deviation: cfloat, radius: cfloat)  {.importcpp: "set".}

proc setControlPoint*(this: var ClusterCullingCallback, controlPoint: Vec3)  {.importcpp: "setControlPoint".}

proc getControlPoint*(this: ClusterCullingCallback): Vec3  {.importcpp: "getControlPoint".}

proc setNormal*(this: var ClusterCullingCallback, normal: Vec3)  {.importcpp: "setNormal".}

proc getNormal*(this: ClusterCullingCallback): Vec3  {.importcpp: "getNormal".}

proc setRadius*(this: var ClusterCullingCallback, radius: cfloat)  {.importcpp: "setRadius".}

proc getRadius*(this: ClusterCullingCallback): cfloat  {.importcpp: "getRadius".}

proc setDeviation*(this: var ClusterCullingCallback, deviation: cfloat)  {.importcpp: "setDeviation".}

proc getDeviation*(this: ClusterCullingCallback): cfloat  {.importcpp: "getDeviation".}

proc cull*(this: ClusterCullingCallback, a00: ptr NodeVisitor , a01: ptr Drawable , a02: ptr State ): bool  {.importcpp: "cull".}

proc `()`*(this: var ClusterCullingCallback, node: ptr Node , nv: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## Callback method called by the NodeVisitor when visiting a node.

{.pop.}  # header: "ClusterCullingCallback"
