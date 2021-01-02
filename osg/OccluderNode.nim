import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: ConvexPlanarOccluder  was providing: osg::ConvexPlanarOccluder
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "OccluderNode".}

proc constructOccluderNode*(): OccluderNode {.constructor,importcpp: "osg::OccluderNode::OccluderNode".}

proc constructOccluderNode*(a00: OccluderNode, copyop: CopyOp = SHALLOW_COPY): OccluderNode {.constructor,importcpp: "osg::OccluderNode::OccluderNode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: OccluderNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: OccluderNode, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: OccluderNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: OccluderNode): cstring  {.importcpp: "className".}

proc libraryName*(this: OccluderNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var OccluderNode, nv: NodeVisitor)  {.importcpp: "accept".}

proc setOccluder*(this: var OccluderNode, occluder: ptr ConvexPlanarOccluder )  {.importcpp: "setOccluder".}
    ## Attach a ConvexPlanarOccluder to an OccluderNode.

proc getOccluder*(this: var OccluderNode): ptr ConvexPlanarOccluder   {.importcpp: "getOccluder".}
    ## Get the ConvexPlanarOccluder* attached to a OccluderNode.

proc getOccluder*(this: OccluderNode): ptr ConvexPlanarOccluder   {.importcpp: "getOccluder".}
    ## Get the const ConvexPlanarOccluder* attached to a OccluderNode.

proc computeBound*(this: OccluderNode): BoundingSphere  {.importcpp: "computeBound".}
    ## Overrides Group's computeBound.

{.pop.}  # header: "OccluderNode"
