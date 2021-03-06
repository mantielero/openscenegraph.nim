import osg_types
  # File: State  was providing: osg::State
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Switch  was providing: osg::Switch
  # File: Geode  was providing: osg::Geode
  # File: Object  was providing: osg::Object
  # File: Transform  was providing: osg::Transform
  # File: Geometry  was providing: osg::Geometry
  # File: Drawable  was providing: osg::Drawable
  # File: Callback  was providing: osg::Callback
  # File: Group  was providing: osg::Group
  # File: StateSet  was providing: osg::StateSet
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  NodePathList* {.header: "Node", importcpp: "osg::NodePathList".} = cint
  ParentList* {.header: "Node", importcpp: "osg::Node::ParentList".} = cint
  DescriptionList* {.header: "Node", importcpp: "osg::Node::DescriptionList".} = cint


{.push header: "Node".}

proc constructNode*(): Node {.constructor,importcpp: "osg::Node::Node".}
    ## Construct a node. Initialize the parent list to empty, node name to ""
    ## and bounding sphere dirty flag to true.

proc constructNode*(a00: Node, copyop: CopyOp = SHALLOW_COPY): Node {.constructor,importcpp: "osg::Node::Node(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructComputeBoundingSphereCallback*(): ComputeBoundingSphereCallback {.constructor,importcpp: "osg::Node::ComputeBoundingSphereCallback::ComputeBoundingSphereCallback".}

proc constructComputeBoundingSphereCallback*(org: ComputeBoundingSphereCallback, copyop: CopyOp): ComputeBoundingSphereCallback {.constructor,importcpp: "osg::Node::ComputeBoundingSphereCallback::ComputeBoundingSphereCallback(@)".}

proc cloneType*(this: Node): ptr Object   {.importcpp: "cloneType".}
    ## clone an object of the same type as the node.

proc clone*(this: Node, copyop: CopyOp): ptr Object   {.importcpp: "clone".}
    ## return a clone of a node, with Object* return type.

proc isSameKindAs*(this: Node, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}
    ## return true if this and obj are of the same kind of object.

proc libraryName*(this: Node): cstring  {.importcpp: "libraryName".}
    ## return the name of the node's library.

proc className*(this: Node): cstring  {.importcpp: "className".}
    ## return the name of the node's class type.

proc asNode*(this: var Node): ptr Node   {.importcpp: "asNode".}
    ## Convert 'this' into a Node pointer if Object is a Node, otherwise
    ## return 0. Equivalent to dynamic_cast<Node*>(this).

proc asNode*(this: Node): ptr Node   {.importcpp: "asNode".}
    ## convert 'const this' into a const Node pointer if Object is a Node,
    ## otherwise return 0. Equivalent to dynamic_cast<const Node*>(this).

proc asDrawable*(this: var Node): ptr Drawable   {.importcpp: "asDrawable".}
    ## convert 'this' into a Drawable pointer if Node is a Drawable,
    ## otherwise return 0. Equivalent to dynamic_cast<Group*>(this).

proc asDrawable*(this: Node): ptr Drawable   {.importcpp: "asDrawable".}
    ## convert 'const this' into a const Drawable pointer if Node is a
    ## Drawable, otherwise return 0. Equivalent to dynamic_cast<const
    ## Group*>(this).

proc asGeometry*(this: var Node): ptr Geometry   {.importcpp: "asGeometry".}
    ## convert 'this' into a Geometry pointer if Node is a Geometry,
    ## otherwise return 0. Equivalent to dynamic_cast<Group*>(this).

proc asGeometry*(this: Node): ptr Geometry   {.importcpp: "asGeometry".}
    ## convert 'const this' into a const Geometry pointer if Node is a
    ## Geometry, otherwise return 0. Equivalent to dynamic_cast<const
    ## Group*>(this).

proc asGroup*(this: var Node): ptr Group   {.importcpp: "asGroup".}
    ## convert 'this' into a Group pointer if Node is a Group, otherwise
    ## return 0. Equivalent to dynamic_cast<Group*>(this).

proc asGroup*(this: Node): ptr Group   {.importcpp: "asGroup".}
    ## convert 'const this' into a const Group pointer if Node is a Group,
    ## otherwise return 0. Equivalent to dynamic_cast<const Group*>(this).

proc asTransform*(this: var Node): ptr Transform   {.importcpp: "asTransform".}
    ## Convert 'this' into a Transform pointer if Node is a Transform,
    ## otherwise return 0. Equivalent to dynamic_cast<Transform*>(this).

proc asTransform*(this: Node): ptr Transform   {.importcpp: "asTransform".}
    ## convert 'const this' into a const Transform pointer if Node is a
    ## Transform, otherwise return 0. Equivalent to dynamic_cast<const
    ## Transform*>(this).

proc asSwitch*(this: var Node): ptr Switch   {.importcpp: "asSwitch".}
    ## Convert 'this' into a Switch pointer if Node is a Switch, otherwise
    ## return 0. Equivalent to dynamic_cast<Switch*>(this).

proc asSwitch*(this: Node): ptr Switch   {.importcpp: "asSwitch".}
    ## convert 'const this' into a const Switch pointer if Node is a Switch,
    ## otherwise return 0. Equivalent to dynamic_cast<const Switch*>(this).

proc asGeode*(this: var Node): ptr Geode   {.importcpp: "asGeode".}
    ## Convert 'this' into a Geode pointer if Node is a Geode, otherwise
    ## return 0. Equivalent to dynamic_cast<Geode*>(this).

proc asGeode*(this: Node): ptr Geode   {.importcpp: "asGeode".}
    ## convert 'const this' into a const Geode pointer if Node is a Geode,
    ## otherwise return 0. Equivalent to dynamic_cast<const Geode*>(this).

proc asTerrain*(this: var Node): ptr Terrain   {.importcpp: "asTerrain".}
    ## Convert 'this' into a Transform pointer if Node is a Terrain,
    ## otherwise return 0. Equivalent to dynamic_cast<Terrrain*>(this).

proc asTerrain*(this: Node): ptr Terrain   {.importcpp: "asTerrain".}
    ## convert 'const this' into a const Terrain pointer if Node is a
    ## Terrain, otherwise return 0. Equivalent to dynamic_cast<const
    ## Terrain*>(this).

proc accept*(this: var Node, nv: NodeVisitor)  {.importcpp: "accept".}
    ## Visitor Pattern : calls the apply method of a NodeVisitor with this
    ## node's type.

proc ascend*(this: var Node, nv: NodeVisitor)  {.importcpp: "ascend".}
    ## Traverse upwards : calls parents' accept method with NodeVisitor.

proc traverse*(this: var Node, a00: NodeVisitor)  {.importcpp: "traverse".}
    ## Traverse downwards : calls children's accept method with NodeVisitor.

proc getParents*(this: Node): ParentList  {.importcpp: "getParents".}
    ## Get the parent list of node.

proc getParents*(this: var Node): ParentList  {.importcpp: "getParents".}
    ## Get the a copy of parent list of node. A copy is returned to prevent
    ## modification of the parent list.

proc getParent*(this: var Node, i: cuint): ptr Group   {.importcpp: "getParent".}

proc getParent*(this: Node, i: cuint): ptr Group   {.importcpp: "getParent".}
    ## Get a single const parent of node.

proc getNumParents*(this: Node): cuint  {.importcpp: "getNumParents".}
    ## Get the number of parents of node.

proc getParentalNodePaths*(this: Node, haltTraversalAtNode: ptr Node  = 0): NodePathList  {.importcpp: "getParentalNodePaths".}
    ## Get the list of node paths parent paths. The optional Node*
    ## haltTraversalAtNode allows the user to prevent traversal beyond a
    ## specified node.

proc getWorldMatrices*(this: Node, haltTraversalAtNode: ptr Node  = 0): MatrixList  {.importcpp: "getWorldMatrices".}
    ## Get the list of matrices that transform this node from local
    ## coordinates to world coordinates. The optional Node*
    ## haltTraversalAtNode allows the user to prevent traversal beyond a
    ## specified node.

proc setUpdateCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "setUpdateCallback".}
    ## Set update node callback, called during update traversal.

proc getUpdateCallback*(this: var Node): ptr Callback   {.importcpp: "getUpdateCallback".}
    ## Get update node callback, called during update traversal.

proc getUpdateCallback*(this: Node): ptr Callback   {.importcpp: "getUpdateCallback".}
    ## Get const update node callback, called during update traversal.

proc addUpdateCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "addUpdateCallback".}
    ## Convenience method that sets the update callback of the node if it
    ## doesn't exist, or nest it into the existing one.

proc removeUpdateCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "removeUpdateCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc getNumChildrenRequiringUpdateTraversal*(this: Node): cuint  {.importcpp: "getNumChildrenRequiringUpdateTraversal".}
    ## Get the number of Children of this node which require Update
    ## traversal, since they have an Update Callback attached to them or
    ## their children.

proc setEventCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "setEventCallback".}
    ## Set event node callback, called during event traversal.

proc getEventCallback*(this: var Node): ptr Callback   {.importcpp: "getEventCallback".}
    ## Get event node callback, called during event traversal.

proc getEventCallback*(this: Node): ptr Callback   {.importcpp: "getEventCallback".}
    ## Get const event node callback, called during event traversal.

proc addEventCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "addEventCallback".}
    ## Convenience method that sets the event callback of the node if it
    ## doesn't exist, or nest it into the existing one.

proc removeEventCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "removeEventCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc getNumChildrenRequiringEventTraversal*(this: Node): cuint  {.importcpp: "getNumChildrenRequiringEventTraversal".}
    ## Get the number of Children of this node which require Event traversal,
    ## since they have an Event Callback attached to them or their children.

proc setCullCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "setCullCallback".}
    ## Set cull node callback, called during cull traversal.

proc getCullCallback*(this: var Node): ptr Callback   {.importcpp: "getCullCallback".}
    ## Get cull node callback, called during cull traversal.

proc getCullCallback*(this: Node): ptr Callback   {.importcpp: "getCullCallback".}
    ## Get const cull node callback, called during cull traversal.

proc addCullCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "addCullCallback".}
    ## Convenience method that sets the cull callback of the node if it
    ## doesn't exist, or nest it into the existing one.

proc removeCullCallback*(this: var Node, nc: ptr Callback )  {.importcpp: "removeCullCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc setCullingActive*(this: var Node, active: bool)  {.importcpp: "setCullingActive".}
    ## Set the view frustum/small feature culling of this node to be active
    ## or inactive. The default value is true for _cullingActive. Used as a
    ## guide to the cull traversal.

proc getCullingActive*(this: Node): bool  {.importcpp: "getCullingActive".}
    ## Get the view frustum/small feature _cullingActive flag for this node.
    ## Used as a guide to the cull traversal.

proc getNumChildrenWithCullingDisabled*(this: Node): cuint  {.importcpp: "getNumChildrenWithCullingDisabled".}
    ## Get the number of Children of this node which have culling disabled.

proc isCullingActive*(this: Node): bool  {.importcpp: "isCullingActive".}
    ## Return true if this node can be culled by view frustum, occlusion or
    ## small feature culling during the cull traversal. Note, returns true
    ## only if no children have culling disabled, and the local
    ## _cullingActive flag is true.

proc getNumChildrenWithOccluderNodes*(this: Node): cuint  {.importcpp: "getNumChildrenWithOccluderNodes".}
    ## Get the number of Children of this node which are or have
    ## OccluderNode's.

proc containsOccluderNodes*(this: Node): bool  {.importcpp: "containsOccluderNodes".}
    ## return true if this node is an OccluderNode or the subgraph below this
    ## node are OccluderNodes.

proc setNodeMask*(this: var Node, nm: NodeMask)  {.importcpp: "setNodeMask".}
    ## Set the node mask.

proc getNodeMask*(this: Node): NodeMask  {.importcpp: "getNodeMask".}
    ## Get the node Mask.

proc setStateSet*(this: var Node, stateset: ptr StateSet )  {.importcpp: "setStateSet".}
    ## Set the node's StateSet.

proc getOrCreateStateSet*(this: var Node): ptr StateSet   {.importcpp: "getOrCreateStateSet".}
    ## return the node's StateSet, if one does not already exist create it
    ## set the node and return the newly created StateSet. This ensures that
    ## a valid StateSet is always returned and can be used directly.

proc getStateSet*(this: var Node): ptr StateSet   {.importcpp: "getStateSet".}
    ## Return the node's StateSet. returns NULL if a stateset is not
    ## attached.

proc getStateSet*(this: Node): ptr StateSet   {.importcpp: "getStateSet".}
    ## Return the node's const StateSet. Returns NULL if a stateset is not
    ## attached.

proc setDescriptions*(this: var Node, descriptions: DescriptionList)  {.importcpp: "setDescriptions".}
    ## Set the list of string descriptions.

proc getDescriptions*(this: var Node): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the description list of the node.

proc getDescriptions*(this: Node): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the const description list of the const node.

proc getDescription*(this: Node, i: cuint): string  {.importcpp: "getDescription".}
    ## Get a single const description of the const node.

proc getDescription*(this: var Node, i: cuint): string  {.importcpp: "getDescription".}
    ## Get a single description of the node.

proc getNumDescriptions*(this: Node): cuint  {.importcpp: "getNumDescriptions".}
    ## Get the number of descriptions of the node.

proc addDescription*(this: var Node, desc: string)  {.importcpp: "addDescription".}
    ## Add a description string to the node.

proc setInitialBound*(this: var Node, bsphere: BoundingSphere)  {.importcpp: "setInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc getInitialBound*(this: Node): BoundingSphere  {.importcpp: "getInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc dirtyBound*(this: var Node)  {.importcpp: "dirtyBound".}
    ## Mark this node's bounding sphere dirty. Forcing it to be computed on
    ## the next call to getBound().

proc getBound*(this: Node): BoundingSphere  {.importcpp: "getBound".}

proc computeBound*(this: Node): BoundingSphere  {.importcpp: "computeBound".}
    ## Compute the bounding sphere around Node's geometry or children. This
    ## method is automatically called by getBound() when the bounding sphere
    ## has been marked dirty via dirtyBound().

proc cloneType*(this: ComputeBoundingSphereCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ComputeBoundingSphereCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ComputeBoundingSphereCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ComputeBoundingSphereCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ComputeBoundingSphereCallback): cstring  {.importcpp: "className".}

proc computeBound*(this: ComputeBoundingSphereCallback, a00: Node): BoundingSphere  {.importcpp: "computeBound".}

proc setComputeBoundingSphereCallback*(this: var Node, callback: ptr ComputeBoundingSphereCallback )  {.importcpp: "setComputeBoundingSphereCallback".}
    ## Set the compute bound callback to override the default computeBound.

proc getComputeBoundingSphereCallback*(this: var Node): ptr ComputeBoundingSphereCallback   {.importcpp: "getComputeBoundingSphereCallback".}
    ## Get the compute bound callback.

proc getComputeBoundingSphereCallback*(this: Node): ptr ComputeBoundingSphereCallback   {.importcpp: "getComputeBoundingSphereCallback".}
    ## Get the const compute bound callback.

proc setThreadSafeRefUnref*(this: var Node, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc resizeGLObjectBuffers*(this: var Node, a00: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Node, a00: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc addParent*(this: var Node, parent: ptr Group )  {.importcpp: "addParent".}

proc removeParent*(this: var Node, parent: ptr Group )  {.importcpp: "removeParent".}

proc setNumChildrenRequiringUpdateTraversal*(this: var Node, num: cuint)  {.importcpp: "setNumChildrenRequiringUpdateTraversal".}

proc setNumChildrenRequiringEventTraversal*(this: var Node, num: cuint)  {.importcpp: "setNumChildrenRequiringEventTraversal".}

proc setNumChildrenWithCullingDisabled*(this: var Node, num: cuint)  {.importcpp: "setNumChildrenWithCullingDisabled".}

proc setNumChildrenWithOccluderNodes*(this: var Node, num: cuint)  {.importcpp: "setNumChildrenWithOccluderNodes".}

{.pop.}  # header: "Node"
