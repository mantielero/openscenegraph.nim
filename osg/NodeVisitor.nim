import Referenced # Provides Referenced
import CopyOp # Provides CopyOp
import stringfwd # Provides string
import Object # Provides Object
import Vec3 # Provides Vec3
import FrameStamp # Provides FrameStamp
import Node # Provides NodePath, Node
import ValueMap # Provides ValueMap
import ValueStack # Provides ValueStack
import Geode # Provides Geode
import Camera # Provides Camera
import CullStack # Provides CullStack
import Drawable # Provides Drawable
import ProxyNode # Provides ProxyNode
import PositionAttitudeTransform # Provides PositionAttitudeTransform
import Group # Provides Group
import LightSource # Provides LightSource
import LOD # Provides LOD
import ClipNode # Provides ClipNode
import MatrixTransform # Provides MatrixTransform
import OcclusionQueryNode # Provides OcclusionQueryNode
import CameraView # Provides CameraView
import CoordinateSystemNode # Provides CoordinateSystemNode
import Transform # Provides Transform
import PagedLOD # Provides PagedLOD
import ClearNode # Provides ClearNode
import AutoTransform # Provides AutoTransform
import Billboard # Provides Billboard
import Switch # Provides Switch
import Projection # Provides Projection
import TexGenNode # Provides TexGenNode
import OccluderNode # Provides OccluderNode
import Geometry # Provides Geometry
import Sequence # Provides Sequence


type
  # Enums
  TraversalMode* {.size:sizeof(cuint),header: "NodeVisitor", importcpp: "osg::NodeVisitor::TraversalMode".} = enum
    TRAVERSE_NONE = 0,
    TRAVERSE_PARENTS = 1,
    TRAVERSE_ALL_CHILDREN = 2,
    TRAVERSE_ACTIVE_CHILDREN = 3

  VisitorType* {.size:sizeof(cuint),header: "NodeVisitor", importcpp: "osg::NodeVisitor::VisitorType".} = enum
    NODE_VISITOR = 0,
    UPDATE_VISITOR = 1,
    EVENT_VISITOR = 2,
    COLLECT_OCCLUDER_VISITOR = 3,
    CULL_VISITOR = 4,
    INTERSECTION_VISITOR = 5

{.push header: "NodeVisitor".}


# Constructors and methods
proc constructNodeVisitor*(tm: Traversalmode): NodeVisitor {.constructor,importcpp: "NodeVisitor(@)".}

proc constructNodeVisitor*(`type`: Visitortype, tm: Traversalmode): NodeVisitor {.constructor,importcpp: "NodeVisitor(@)".}

proc constructNodeVisitor*(nv: Nodevisitor, copyop: Copyop = SHALLOW_COPY): NodeVisitor {.constructor,importcpp: "NodeVisitor(@)".}

proc constructDatabaseRequestHandler*(): DatabaseRequestHandler {.constructor,importcpp: "DatabaseRequestHandler".}

proc constructImageRequestHandler*(): ImageRequestHandler {.constructor,importcpp: "ImageRequestHandler".}

proc constructNodeAcceptOp*(nv: Nodevisitor): NodeAcceptOp {.constructor,importcpp: "NodeAcceptOp(@)".}

proc constructNodeAcceptOp*(naop: Nodeacceptop): NodeAcceptOp {.constructor,importcpp: "NodeAcceptOp(@)".}

proc constructPushPopObject*(nv: ptr Nodevisitor , key: ptr Referenced , value: ptr Object ): PushPopObject {.constructor,importcpp: "PushPopObject(@)".}

proc constructPushPopObject*(valueStack: ptr Valuestack , key: ptr Referenced , value: ptr Object ): PushPopObject {.constructor,importcpp: "PushPopObject(@)".}

proc cloneType*(this: NodeVisitor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: NodeVisitor, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: NodeVisitor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: NodeVisitor): cstring  {.importcpp: "libraryName".}

proc className*(this: NodeVisitor): cstring  {.importcpp: "className".}

proc asNodeVisitor*(this: var NodeVisitor): ptr Nodevisitor   {.importcpp: "asNodeVisitor".}
    ## Convert 'this' into a NodeVisitor pointer if Object is a NodeVisitor,
    ## otherwise return 0. Equivalent to dynamic_cast<NodeVisitor*>(this).

proc asNodeVisitor*(this: NodeVisitor): ptr Nodevisitor   {.importcpp: "asNodeVisitor".}
    ## convert 'const this' into a const NodeVisitor pointer if Object is a
    ## NodeVisitor, otherwise return 0. Equivalent to dynamic_cast<const
    ## NodeVisitor*>(this).

proc asUpdateVisitor*(this: var NodeVisitor): ptr Updatevisitor   {.importcpp: "asUpdateVisitor".}
    ## Convert 'this' into a osgUtil::UpdateVisitor pointer if Object is a
    ## osgUtil::UpdateVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<osgUtil::UpdateVisitor*>(this).

proc asUpdateVisitor*(this: NodeVisitor): ptr Updatevisitor   {.importcpp: "asUpdateVisitor".}
    ## convert 'const this' into a const osgUtil::UpdateVisitor pointer if
    ## Object is a osgUtil::UpdateVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<const osgUtil::UpdateVisitor*>(this).

proc asCullVisitor*(this: var NodeVisitor): ptr Cullvisitor   {.importcpp: "asCullVisitor".}
    ## Convert 'this' into a osgUtil::CullVisitor pointer if Object is a
    ## osgUtil::CullVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<osgUtil::CullVisitor*>(this).

proc asCullVisitor*(this: NodeVisitor): ptr Cullvisitor   {.importcpp: "asCullVisitor".}
    ## convert 'const this' into a const osgUtil::CullVisitor pointer if
    ## Object is a osgUtil::CullVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<const osgUtil::CullVisitor*>(this).

proc asEventVisitor*(this: var NodeVisitor): ptr Eventvisitor   {.importcpp: "asEventVisitor".}
    ## Convert 'this' into a osgGA::EventVisitor pointer if Object is a
    ## osgGA::EventVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<osgGA::EventVisitor*>(this).

proc asEventVisitor*(this: NodeVisitor): ptr Eventvisitor   {.importcpp: "asEventVisitor".}
    ## convert 'const this' into a const osgGA::EventVisitor pointer if
    ## Object is a osgGA::EventVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<const osgGA::EventVisitor*>(this).

proc asIntersectionVisitor*(this: var NodeVisitor): ptr Intersectionvisitor   {.importcpp: "asIntersectionVisitor".}
    ## Convert 'this' into a osgUtil::IntersectionVisitor pointer if Object
    ## is a IntersectionVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<osgUtil::IntersectionVisitor*>(this).

proc asIntersectionVisitor*(this: NodeVisitor): ptr Intersectionvisitor   {.importcpp: "asIntersectionVisitor".}
    ## convert 'const this' into a const osgUtil::IntersectionVisitor pointer
    ## if Object is a IntersectionVisitor, otherwise return 0. Equivalent to
    ## dynamic_cast<const osgUtil::IntersectionVisitor*>(this).

proc asCullStack*(this: var NodeVisitor): ptr Cullstack   {.importcpp: "asCullStack".}
    ## Convert 'this' into a osg::CullStack pointer if Object is a
    ## osg::CullStack, otherwise return 0. Equivalent to
    ## dynamic_cast<osg::CullStack*>(this).

proc asCullStack*(this: NodeVisitor): ptr Cullstack   {.importcpp: "asCullStack".}
    ## convert 'const this' into a const osg::CullStack pointer if Object is
    ## a osg::CullStack, otherwise return 0. Equivalent to dynamic_cast<const
    ## osg::CullStack*>(this).

proc reset*(this: var NodeVisitor)  {.importcpp: "reset".}
    ## Method to call to reset visitor. Useful if your visitor accumulates
    ## state during a traversal, and you plan to reuse the visitor. To flush
    ## that state for the next traversal: call reset() prior to each
    ## traversal.

proc setVisitorType*(this: var NodeVisitor, `type`: Visitortype)  {.importcpp: "setVisitorType".}
    ## Set the VisitorType, used to distinguish different visitors during
    ## traversal of the scene, typically used in the Node::traverse() method
    ## to select which behaviour to use for different types of
    ## traversal/visitors.

proc getVisitorType*(this: NodeVisitor): Visitortype  {.importcpp: "getVisitorType".}
    ## Get the VisitorType.

proc setTraversalNumber*(this: var NodeVisitor, fn: cuint)  {.importcpp: "setTraversalNumber".}
    ## Set the traversal number. Typically used to denote the frame count.

proc getTraversalNumber*(this: NodeVisitor): cuint  {.importcpp: "getTraversalNumber".}
    ## Get the traversal number. Typically used to denote the frame count.

proc setFrameStamp*(this: var NodeVisitor, fs: ptr Framestamp )  {.importcpp: "setFrameStamp".}
    ## Set the FrameStamp that this traversal is associated with.

proc getFrameStamp*(this: NodeVisitor): ptr Framestamp   {.importcpp: "getFrameStamp".}
    ## Get the FrameStamp that this traversal is associated with.

proc setTraversalMask*(this: var NodeVisitor, mask: Nodemask)  {.importcpp: "setTraversalMask".}
    ## Set the TraversalMask of this NodeVisitor. The TraversalMask is used
    ## by the NodeVisitor::validNodeMask() method to determine whether to
    ## operate on a node and its subgraph. validNodeMask() is called
    ## automatically in the Node::accept() method before any call to
    ## NodeVisitor::apply(), apply() is only ever called if validNodeMask
    ## returns true. Note, if NodeVisitor::_traversalMask is 0 then all
    ## operations will be switched off for all nodes. Whereas setting both
    ## _traversalMask and _nodeMaskOverride to 0xffffffff will allow a
    ## visitor to work on all nodes regardless of their own Node::_nodeMask
    ## state.

proc getTraversalMask*(this: NodeVisitor): Nodemask  {.importcpp: "getTraversalMask".}
    ## Get the TraversalMask.

proc setNodeMaskOverride*(this: var NodeVisitor, mask: Nodemask)  {.importcpp: "setNodeMaskOverride".}
    ## Set the NodeMaskOverride mask. Used in validNodeMask() to determine
    ## whether to operate on a node or its subgraph, by OR'ing
    ## NodeVisitor::_nodeMaskOverride with the Node's own Node::_nodeMask.
    ## Typically used to force on nodes which may have been switched off by
    ## their own Node::_nodeMask.

proc getNodeMaskOverride*(this: NodeVisitor): Nodemask  {.importcpp: "getNodeMaskOverride".}
    ## Get the NodeMaskOverride mask.

proc validNodeMask*(this: NodeVisitor, node: Node): bool  {.importcpp: "validNodeMask".}
    ## Method to called by Node and its subclass' Node::accept() method, if
    ## the result is true it is used to cull operations of nodes and their
    ## subgraphs. Return true if the result of a bit wise and of the
    ## NodeVisitor::_traversalMask with the bit or between
    ## NodeVistor::_nodeMaskOverride and the Node::_nodeMask. default values
    ## for _traversalMask is 0xffffffff, _nodeMaskOverride is 0x0, and
    ## osg::Node::_nodeMask is 0xffffffff.

proc setTraversalMode*(this: var NodeVisitor, mode: Traversalmode)  {.importcpp: "setTraversalMode".}
    ## Set the traversal mode for Node::traverse() to use when deciding which
    ## children of a node to traverse. If a NodeVisitor has been attached via
    ## setTraverseVisitor() and the new mode is not TRAVERSE_VISITOR then the
    ## attached visitor is detached. Default mode is TRAVERSE_NONE.

proc getTraversalMode*(this: NodeVisitor): Traversalmode  {.importcpp: "getTraversalMode".}
    ## Get the traversal mode.

proc setValueMap*(this: var NodeVisitor, ps: ptr Valuemap )  {.importcpp: "setValueMap".}
    ## Set the ValueMap used to store Values that can be reused over a series
    ## of traversals.

proc getValueMap*(this: var NodeVisitor): ptr Valuemap   {.importcpp: "getValueMap".}
    ## Get the ValueMap.

proc getValueMap*(this: NodeVisitor): ptr Valuemap   {.importcpp: "getValueMap".}
    ## Get the ValueMap.

proc getOrCreateValueMap*(this: var NodeVisitor): ptr Valuemap   {.importcpp: "getOrCreateValueMap".}
    ## Get the ValueMap.

proc setValueStack*(this: var NodeVisitor, ps: ptr Valuestack )  {.importcpp: "setValueStack".}
    ## Set the ValueStack used to stack Values during traversal.

proc getValueStack*(this: var NodeVisitor): ptr Valuestack   {.importcpp: "getValueStack".}
    ## Get the ValueStack.

proc getValueStack*(this: NodeVisitor): ptr Valuestack   {.importcpp: "getValueStack".}
    ## Get the const ValueStack.

proc getOrCreateValueStack*(this: var NodeVisitor): ptr Valuestack   {.importcpp: "getOrCreateValueStack".}
    ## Get the ValueStack.

proc traverse*(this: var NodeVisitor, node: Node)  {.importcpp: "traverse".}
    ## Method for handling traversal of a nodes. If you intend to use the
    ## visitor for actively traversing the scene graph then make sure the
    ## accept() methods call this method unless they handle traversal
    ## directly.

proc pushOntoNodePath*(this: var NodeVisitor, node: ptr Node )  {.importcpp: "pushOntoNodePath".}
    ## Method called by osg::Node::accept() method before a call to the
    ## NodeVisitor::apply(..). The back of the list will, therefore, be the
    ## current node being visited inside the apply(..), and the rest of the
    ## list will be the parental sequence of nodes from the top most node
    ## applied down the graph to the current node. Note, the user does not
    ## typically call pushNodeOnPath() as it will be called automatically by
    ## the Node::accept() method.

proc popFromNodePath*(this: var NodeVisitor)  {.importcpp: "popFromNodePath".}
    ## Method called by osg::Node::accept() method after a call to
    ## NodeVisitor::apply(..). Note, the user does not typically call
    ## popFromNodePath() as it will be called automatically by the
    ## Node::accept() method.

proc getNodePath*(this: var NodeVisitor): Nodepath  {.importcpp: "getNodePath".}
    ## Get the non const NodePath from the top most node applied down to the
    ## current Node being visited.

proc getNodePath*(this: NodeVisitor): Nodepath  {.importcpp: "getNodePath".}
    ## Get the const NodePath from the top most node applied down to the
    ## current Node being visited.

proc getEyePoint*(this: NodeVisitor): Vec3  {.importcpp: "getEyePoint".}
    ## Get the eye point in local coordinates. Note, not all NodeVisitor
    ## implement this method, it is mainly cull visitors which will
    ## implement.

proc getViewPoint*(this: NodeVisitor): Vec3  {.importcpp: "getViewPoint".}
    ## Get the view point in local coordinates. Note, not all NodeVisitor
    ## implement this method, it is mainly cull visitors which will
    ## implement.

proc getDistanceToEyePoint*(this: NodeVisitor, Vec3, bool): cfloat  {.importcpp: "getDistanceToEyePoint".}
    ## Get the distance from a point to the eye point, distance value in
    ## local coordinate system. Note, not all NodeVisitor implement this
    ## method, it is mainly cull visitors which will implement. If the
    ## getDistanceFromEyePoint(pos) is not implemented then a default value
    ## of 0.0 is returned.

proc getDistanceFromEyePoint*(this: NodeVisitor, Vec3, bool): cfloat  {.importcpp: "getDistanceFromEyePoint".}
    ## Get the distance of a point from the eye point, distance value in the
    ## eye coordinate system. Note, not all NodeVisitor implement this
    ## method, it is mainly cull visitors which will implement. If the
    ## getDistanceFromEyePoint(pos) is not implemented than a default value
    ## of 0.0 is returned.

proc getDistanceToViewPoint*(this: NodeVisitor, Vec3, bool): cfloat  {.importcpp: "getDistanceToViewPoint".}
    ## Get the distance from a point to the view point, distance value in
    ## local coordinate system. Note, not all NodeVisitor implement this
    ## method, it is mainly cull visitors which will implement. If the
    ## getDistanceToViewPoint(pos) is not implemented then a default value of
    ## 0.0 is returned.

proc apply*(this: var NodeVisitor, drawable: Drawable)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, geometry: Geometry)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Node)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Geode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Billboard)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Group)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Proxynode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Projection)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Coordinatesystemnode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Clipnode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Texgennode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Lightsource)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Transform)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Camera)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Cameraview)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Matrixtransform)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Positionattitudetransform)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Autotransform)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Switch)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Sequence)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Lod)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Pagedlod)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Clearnode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Occludernode)  {.importcpp: "apply".}

proc apply*(this: var NodeVisitor, node: Occlusionquerynode)  {.importcpp: "apply".}

proc requestNodeFile*(this: var DatabaseRequestHandler, fileName: String, nodePath: Nodepath, priority: cfloat, framestamp: ptr Framestamp , databaseRequest: Ref_ptr[Referenced], options: ptr Referenced  = 0)  {.importcpp: "requestNodeFile".}

proc setDatabaseRequestHandler*(this: var NodeVisitor, handler: ptr Databaserequesthandler )  {.importcpp: "setDatabaseRequestHandler".}
    ## Set the handler for database requests.

proc getDatabaseRequestHandler*(this: var NodeVisitor): ptr Databaserequesthandler   {.importcpp: "getDatabaseRequestHandler".}
    ## Get the handler for database requests.

proc getDatabaseRequestHandler*(this: NodeVisitor): ptr Databaserequesthandler   {.importcpp: "getDatabaseRequestHandler".}
    ## Get the const handler for database requests.

proc getPreLoadTime*(this: ImageRequestHandler): cdouble  {.importcpp: "getPreLoadTime".}

proc readRefImageFile*(this: var ImageRequestHandler, fileName: String, options: ptr Referenced  = 0): Ref_ptr[Image]  {.importcpp: "readRefImageFile".}

proc requestImageFile*(this: var ImageRequestHandler, fileName: String, attachmentPoint: ptr Object , attachmentIndex: cint, timeToMergeBy: cdouble, framestamp: ptr Framestamp , imageRequest: Ref_ptr[Referenced], options: ptr Referenced  = 0)  {.importcpp: "requestImageFile".}

proc setImageRequestHandler*(this: var NodeVisitor, handler: ptr Imagerequesthandler )  {.importcpp: "setImageRequestHandler".}
    ## Set the handler for image requests.

proc getImageRequestHandler*(this: var NodeVisitor): ptr Imagerequesthandler   {.importcpp: "getImageRequestHandler".}
    ## Get the handler for image requests.

proc getImageRequestHandler*(this: NodeVisitor): ptr Imagerequesthandler   {.importcpp: "getImageRequestHandler".}
    ## Get the const handler for image requests.

proc `()`*(this: var NodeAcceptOp, node: ptr Node )  {.importcpp: "# () #".}

proc `()`*(this: var NodeAcceptOp, node: Ref_ptr[Node])  {.importcpp: "# () #".}

proc `=`*(this: var NodeAcceptOp, Nodeacceptop): Nodeacceptop  {.importcpp: "# = #".}

proc pushPopValue*[T](this: var PushPopValue, nv: ptr Nodevisitor , key: ptr Referenced , value: T)  {.importcpp: "PushPopValue".}

proc pushPopValue*[T](this: var PushPopValue, valueStack: ptr Valuestack , key: ptr Referenced , value: T)  {.importcpp: "PushPopValue".}

{.pop.} # header: "NodeVisitor
