import osg_types
  # File: State  was providing: osg::State
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: Node  was providing: osg::Node
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "Group".}

proc constructGroup*(): Group {.constructor,importcpp: "osg::Group::Group".}

proc constructGroup*(a00: Group, copyop: CopyOp = SHALLOW_COPY): Group {.constructor,importcpp: "osg::Group::Group(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Group): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Group, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Group, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Group): cstring  {.importcpp: "className".}

proc libraryName*(this: Group): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Group, nv: NodeVisitor)  {.importcpp: "accept".}

proc asGroup*(this: var Group): ptr Group   {.importcpp: "asGroup".}

proc asGroup*(this: Group): ptr Group   {.importcpp: "asGroup".}

proc traverse*(this: var Group, nv: NodeVisitor)  {.importcpp: "traverse".}

proc addChild*(this: var Group, child: ptr Node ): bool  {.importcpp: "addChild".}
    ## Add Node to Group. If node is not NULL then increment its reference
    ## count, add it to the child list and dirty the bounding sphere to force
    ## it to recompute on next getBound() and return true for success.
    ## Otherwise return false. Scene nodes can't be added as child nodes.

proc insertChild*(this: var Group, index: cuint, child: ptr Node ): bool  {.importcpp: "insertChild".}
    ## Insert Node to Group at specific location. The new child node is
    ## inserted into the child list before the node at the specified index.
    ## No nodes are removed from the group with this operation.

proc removeChild*(this: var Group, child: ptr Node ): bool  {.importcpp: "removeChild".}
    ## Remove Node from Group. If Node is contained in Group then remove it
    ## from the child list, decrement its reference count, and dirty the
    ## bounding sphere to force it to recompute on next getBound() and return
    ## true for success. If Node is not found then return false and do not
    ## change the reference count of the Node. Note, do not override, only
    ## override removeChildren(,) is required.

proc removeChild*(this: var Group, pos: cuint, numChildrenToRemove: cuint = 1): bool  {.importcpp: "removeChild".}
    ## Remove Node from Group. If Node is contained in Group then remove it
    ## from the child list, decrement its reference count, and dirty the
    ## bounding sphere to force it to recompute on next getBound() and return
    ## true for success. If Node is not found then return false and do not
    ## change the reference count of the Node. Note, do not override, only
    ## override removeChildren(,) is required.

proc removeChildren*(this: var Group, pos: cuint, numChildrenToRemove: cuint): bool  {.importcpp: "removeChildren".}
    ## Remove children from Group. Note, must be override by subclasses of
    ## Group which add per child attributes.

proc replaceChild*(this: var Group, origChild: ptr Node , newChild: ptr Node ): bool  {.importcpp: "replaceChild".}
    ## Replace specified child Node with another Node. Equivalent to
    ## setChild(getChildIndex(orignChild),node) See docs for setChild for
    ## further details on implementation.

proc getNumChildren*(this: Group): cuint  {.importcpp: "getNumChildren".}
    ## Return the number of children nodes.

proc setChild*(this: var Group, i: cuint, node: ptr Node ): bool  {.importcpp: "setChild".}
    ## Set child node at position i. Return true if set correctly, false on
    ## failure (if node==NULL || i is out of range). When Set can be
    ## successful applied, the algorithm is : decrement the reference count
    ## origNode and increment the reference count of newNode, and dirty the
    ## bounding sphere to force it to recompute on next getBound() and return
    ## true. If origNode is not found then return false and do not add
    ## newNode. If newNode is NULL then return false and do not remove
    ## origNode. Also returns false if newChild is a Scene node.

proc getChild*(this: var Group, i: cuint): ptr Node   {.importcpp: "getChild".}
    ## Return child node at position i.

proc getChild*(this: Group, i: cuint): ptr Node   {.importcpp: "getChild".}
    ## Return child node at position i.

proc containsNode*(this: Group, node: ptr Node ): bool  {.importcpp: "containsNode".}
    ## Return true if node is contained within Group.

proc getChildIndex*(this: Group, node: ptr Node ): cuint  {.importcpp: "getChildIndex".}
    ## Get the index number of child, return a value between 0 and
    ## _children.size()-1 if found, if not found then return
    ## _children.size().

proc setThreadSafeRefUnref*(this: var Group, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc resizeGLObjectBuffers*(this: var Group, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Group, a00: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc computeBound*(this: Group): BoundingSphere  {.importcpp: "computeBound".}

proc childRemoved*(this: var Group, a00: cuint, a01: cuint)  {.importcpp: "childRemoved".}

proc childInserted*(this: var Group, a00: cuint)  {.importcpp: "childInserted".}

{.pop.}  # header: "Group"
