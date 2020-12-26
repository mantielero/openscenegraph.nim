import /usr/include/osg/BoundingSphere  # provides: osg::BoundingSphere
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/ConvexPlanarOccluder  # provides: osg::ConvexPlanarOccluder
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
{.push header: "OccluderNode".}

proc constructOccluderNode*(): OccluderNode {.constructor,importcpp: "osg::OccluderNode::OccluderNode".}

proc constructOccluderNode*(Occludernode, copyop: Copyop = SHALLOW_COPY): OccluderNode {.constructor,importcpp: "osg::OccluderNode::OccluderNode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: OccluderNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: OccluderNode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: OccluderNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: OccluderNode): cstring  {.importcpp: "className".}

proc libraryName*(this: OccluderNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var OccluderNode, nv: Nodevisitor)  {.importcpp: "accept".}

proc setOccluder*(this: var OccluderNode, occluder: ptr Convexplanaroccluder )  {.importcpp: "setOccluder".}
    ## Attach a ConvexPlanarOccluder to an OccluderNode.

proc getOccluder*(this: var OccluderNode): ptr Convexplanaroccluder   {.importcpp: "getOccluder".}
    ## Get the ConvexPlanarOccluder* attached to a OccluderNode.

proc getOccluder*(this: OccluderNode): ptr Convexplanaroccluder   {.importcpp: "getOccluder".}
    ## Get the const ConvexPlanarOccluder* attached to a OccluderNode.

proc computeBound*(this: OccluderNode): Boundingsphere  {.importcpp: "computeBound".}
    ## Overrides Group's computeBound.

{.pop.}  # header: "OccluderNode"
