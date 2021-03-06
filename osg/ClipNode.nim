import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: ClipPlane  was providing: osg::ClipPlane
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: StateSet  was providing: osg::StateSet
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  ReferenceFrame* {.size:sizeof(cuint),header: "ClipNode", importcpp: "osg::ClipNode::ReferenceFrame", pure.} = enum
    RELATIVE_RF = 0,
    ABSOLUTE_RF = 1

  ClipPlaneList* {.header: "ClipNode", importcpp: "osg::ClipNode::ClipPlaneList".} = cint


{.push header: "ClipNode".}

proc constructClipNode*(): ClipNode {.constructor,importcpp: "osg::ClipNode::ClipNode".}

proc constructClipNode*(es: ClipNode, copyop: CopyOp = SHALLOW_COPY): ClipNode {.constructor,importcpp: "osg::ClipNode::ClipNode(@)".}

proc cloneType*(this: ClipNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClipNode, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClipNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: ClipNode): cstring  {.importcpp: "className".}

proc libraryName*(this: ClipNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var ClipNode, nv: NodeVisitor)  {.importcpp: "accept".}

proc setReferenceFrame*(this: var ClipNode, rf: ReferenceFrame)  {.importcpp: "setReferenceFrame".}
    ## Set the ClipNode's ReferenceFrame, either to be relative to its parent
    ## reference frame, or relative to an absolute coordinate frame.
    ## RELATIVE_RF is the default. Note: setting the ReferenceFrame to be
    ## ABSOLUTE_RF will also set the CullingActive flag to false on the
    ## ClipNode (and consequently all of its parents), thereby disabling
    ## culling of it and all its parents. This is necessary to prevent
    ## inappropriate culling, but may impact cull times if the absolute
    ## ClipNode is deep in the scene graph. It is therefore recommended to
    ## only use absolute ClipNode at the top of the scene.

proc getReferenceFrame*(this: ClipNode): ReferenceFrame  {.importcpp: "getReferenceFrame".}

proc createClipBox*(this: var ClipNode, bb: BoundingBox, clipPlaneNumberBase: cuint = 0)  {.importcpp: "createClipBox".}
    ## Creates six clip planes corresponding to the given BoundingBox.

proc addClipPlane*(this: var ClipNode, clipplane: ptr ClipPlane ): bool  {.importcpp: "addClipPlane".}
    ## Adds the clipplane. Returns true on success, and false if the plane
    ## has already been added, or if clipplane is NULL.

proc removeClipPlane*(this: var ClipNode, clipplane: ptr ClipPlane ): bool  {.importcpp: "removeClipPlane".}
    ## Removes the clipplane. Returns true on success, false if clipplane
    ## isn't in this ClipNode.

proc removeClipPlane*(this: var ClipNode, pos: cuint): bool  {.importcpp: "removeClipPlane".}
    ## Remove the ClipPlane with the given index. Returns true on success,
    ## false if pos is not a valid plane index.

proc getNumClipPlanes*(this: ClipNode): cuint  {.importcpp: "getNumClipPlanes".}
    ## Returns the number of ClipPlanes.

proc getClipPlane*(this: var ClipNode, pos: cuint): ptr ClipPlane   {.importcpp: "getClipPlane".}
    ## Get ClipPlane at the given index position.

proc getClipPlane*(this: ClipNode, pos: cuint): ptr ClipPlane   {.importcpp: "getClipPlane".}
    ## Get const ClipPlane at the given index position.

proc setClipPlaneList*(this: var ClipNode, cpl: ClipPlaneList)  {.importcpp: "setClipPlaneList".}
    ## Set the ClipPlaneList.

proc getClipPlaneList*(this: var ClipNode): ClipPlaneList  {.importcpp: "getClipPlaneList".}
    ## Get the ClipPlaneList.

proc getClipPlaneList*(this: ClipNode): ClipPlaneList  {.importcpp: "getClipPlaneList".}
    ## Get the const ClipPlaneList.

proc setStateSetModes*(this: ClipNode, a00: StateSet, a01: GLModeValue)  {.importcpp: "setStateSetModes".}
    ## Set the GLModes for all ClipPlanes, on the StateSet.

proc setLocalStateSetModes*(this: var ClipNode, a00: GLModeValue)  {.importcpp: "setLocalStateSetModes".}
    ## Set up the local StateSet.

proc computeBound*(this: ClipNode): BoundingSphere  {.importcpp: "computeBound".}

{.pop.}  # header: "ClipNode"
