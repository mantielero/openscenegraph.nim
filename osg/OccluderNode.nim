import CopyOp # Provides CopyOp
import Object # Provides Object
import BoundingSphere # Provides BoundingSphere
import NodeVisitor # Provides NodeVisitor
import ConvexPlanarOccluder # Provides ConvexPlanarOccluder


{.push header: "OccluderNode".}


# Constructors and methods
proc constructOccluderNode*(): OccluderNode {.constructor,importcpp: "OccluderNode".}

proc constructOccluderNode*(Occludernode, copyop: Copyop = SHALLOW_COPY): OccluderNode {.constructor,importcpp: "OccluderNode(@)".}
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

{.pop.} # header: "OccluderNode
