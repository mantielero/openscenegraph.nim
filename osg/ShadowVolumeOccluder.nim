import Polytope # Provides Polytope
import Node # Provides NodePath


type
  # Typedefs
  HoleList* {.header: "ShadowVolumeOccluder", importcpp: "osg::ShadowVolumeOccluder::HoleList".} = cint
  ShadowVolumeOccluderList* {.header: "ShadowVolumeOccluder", importcpp: "osg::ShadowVolumeOccluderList".} = cint
{.push header: "ShadowVolumeOccluder".}


# Constructors and methods
proc constructShadowVolumeOccluder*(svo: Shadowvolumeoccluder): ShadowVolumeOccluder {.constructor,importcpp: "ShadowVolumeOccluder(@)".}

proc constructShadowVolumeOccluder*(): ShadowVolumeOccluder {.constructor,importcpp: "ShadowVolumeOccluder".}

proc `<`*(this: ShadowVolumeOccluder, svo: Shadowvolumeoccluder): bool  {.importcpp: "# < #".}

proc computeOccluder*(this: var ShadowVolumeOccluder, nodePath: Nodepath, occluder: Convexplanaroccluder, cullStack: Cullstack, createDrawables: bool): bool  {.importcpp: "computeOccluder".}
    ## compute the shadow volume occluder.

proc disableResultMasks*(this: var ShadowVolumeOccluder)  {.importcpp: "disableResultMasks".}

proc pushCurrentMask*(this: var ShadowVolumeOccluder)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var ShadowVolumeOccluder)  {.importcpp: "popCurrentMask".}

proc matchProjectionMatrix*(this: ShadowVolumeOccluder, matrix: Matrix): bool  {.importcpp: "matchProjectionMatrix".}
    ## return true if the matrix passed in matches the projection matrix that
    ## this ShadowVolumeOccluder is associated with.

proc setNodePath*(this: var ShadowVolumeOccluder, nodePath: Nodepath)  {.importcpp: "setNodePath".}
    ## Set the NodePath which describes which node in the scene graph that
    ## this occluder is attached to.

proc getNodePath*(this: var ShadowVolumeOccluder): Nodepath  {.importcpp: "getNodePath".}

proc getNodePath*(this: ShadowVolumeOccluder): Nodepath  {.importcpp: "getNodePath".}

proc getVolume*(this: ShadowVolumeOccluder): cfloat  {.importcpp: "getVolume".}
    ## get the volume of the occluder minus its holes, in eye coords, the
    ## volume is normalized by dividing by the volume of the view frustum in
    ## eye coords.

proc getOccluder*(this: var ShadowVolumeOccluder): Polytope  {.importcpp: "getOccluder".}
    ## return the occluder polytope.

proc getOccluder*(this: ShadowVolumeOccluder): Polytope  {.importcpp: "getOccluder".}
    ## return the const occluder polytope.

proc getHoleList*(this: var ShadowVolumeOccluder): Holelist  {.importcpp: "getHoleList".}
    ## return the list of holes.

proc getHoleList*(this: ShadowVolumeOccluder): Holelist  {.importcpp: "getHoleList".}
    ## return the const list of holes.

proc contains*(this: var ShadowVolumeOccluder, vertices: cint): bool  {.importcpp: "contains".}
    ## return true if the specified vertex list is contained entirely within
    ## this shadow occluder volume.

proc contains*(this: var ShadowVolumeOccluder, bound: Boundingsphere): bool  {.importcpp: "contains".}
    ## return true if the specified bounding sphere is contained entirely
    ## within this shadow occluder volume.

proc contains*(this: var ShadowVolumeOccluder, bound: Boundingbox): bool  {.importcpp: "contains".}
    ## return true if the specified bounding box is contained entirely within
    ## this shadow occluder volume.

proc transformProvidingInverse*(this: var ShadowVolumeOccluder, matrix: Matrix)  {.importcpp: "transformProvidingInverse".}

proc disableResultMasks*(this: var ShadowVolumeOccluder)  {.importcpp: "disableResultMasks".}

proc pushCurrentMask*(this: var ShadowVolumeOccluder)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var ShadowVolumeOccluder)  {.importcpp: "popCurrentMask".}

{.pop.} # header: "ShadowVolumeOccluder
