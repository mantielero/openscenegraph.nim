import Vec3  # provides: osg::Vec3
import State  # provides: osg::State
import Object  # provides: osg::Object
import Node  # provides: osg::Node
import Drawable  # provides: osg::Drawable
import Callback  # provides: osg::NodeCallback, osg::DrawableCullCallback
import CopyOp  # provides: osg::CopyOp
import Matrixd  # provides: osg::Matrixd
import NodeVisitor  # provides: osg::NodeVisitor
type
  ClusterCullingCallback* {.header: "ClusterCullingCallback", importcpp: "osg::ClusterCullingCallback", byref.} = object #of class osg::DrawableCullCallback
    ## Implements cluster culling to cull back facing subgraphs and
    ## drawables. Derived from Drawable::CullCallback and osg::NodeCallback.



{.push header: "ClusterCullingCallback".}

proc constructClusterCullingCallback*(): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback".}

proc constructClusterCullingCallback*(ccc: Clustercullingcallback, copyop: Copyop): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc constructClusterCullingCallback*(controlPoint: Vec3, normal: Vec3, deviation: cfloat, radius: cfloat): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc constructClusterCullingCallback*(drawable: ptr Drawable ): ClusterCullingCallback {.constructor,importcpp: "osg::ClusterCullingCallback::ClusterCullingCallback(@)".}

proc cloneType*(this: ClusterCullingCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClusterCullingCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClusterCullingCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ClusterCullingCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ClusterCullingCallback): cstring  {.importcpp: "className".}

proc asNodeCallback*(this: var ClusterCullingCallback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: ClusterCullingCallback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc asDrawableCullCallback*(this: var ClusterCullingCallback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: ClusterCullingCallback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

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

proc cull*(this: ClusterCullingCallback, ptr Nodevisitor , ptr Drawable , ptr State ): bool  {.importcpp: "cull".}

proc `()`*(this: var ClusterCullingCallback, node: ptr Node , nv: ptr Nodevisitor )  {.importcpp: "# () #".}
    ## Callback method called by the NodeVisitor when visiting a node.

{.pop.}  # header: "ClusterCullingCallback"
