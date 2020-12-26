import /usr/include/osg/Vec3  # provides: osg::Vec3
import /usr/include/osg/LOD  # provides: osg::LOD
import /usr/include/osg/Projection  # provides: osg::Projection
import /usr/include/osg/Switch  # provides: osg::Switch
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Transform  # provides: osg::Transform
import /usr/include/osg/Node  # provides: osg::Node
import /usr/include/osg/OccluderNode  # provides: osg::OccluderNode
type
  ShadowVolumeOccluderSet* {.header: "CollectOccludersVisitor", importcpp: "osg::CollectOccludersVisitor::ShadowVolumeOccluderSet".} = cint
  CollectOccludersVisitor* {.header: "CollectOccludersVisitor", importcpp: "osg::CollectOccludersVisitor", byref.} = object #of osg::NodeVisitor



{.push header: "CollectOccludersVisitor".}

proc constructCollectOccludersVisitor*(): CollectOccludersVisitor {.constructor,importcpp: "osg::CollectOccludersVisitor::CollectOccludersVisitor".}

proc libraryName*(this: CollectOccludersVisitor): cstring  {.importcpp: "libraryName".}

proc className*(this: CollectOccludersVisitor): cstring  {.importcpp: "className".}

proc cloneType*(this: CollectOccludersVisitor): ptr Object   {.importcpp: "cloneType".}

proc reset*(this: var CollectOccludersVisitor)  {.importcpp: "reset".}

proc getDistanceToEyePoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceToEyePoint".}

proc getDistanceToViewPoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceToViewPoint".}

proc getDistanceFromEyePoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceFromEyePoint".}

proc apply*(this: var CollectOccludersVisitor, Node)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Transform)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Projection)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Switch)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Lod)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Occludernode)  {.importcpp: "apply".}

proc setMinimumShadowOccluderVolume*(this: var CollectOccludersVisitor, vol: cfloat)  {.importcpp: "setMinimumShadowOccluderVolume".}
    ## Sets the minimum shadow occluder volume that an active occluder must
    ## have. vol is units relative the clip space volume where 1.0 is the
    ## whole clip space.

proc getMinimumShadowOccluderVolume*(this: CollectOccludersVisitor): cfloat  {.importcpp: "getMinimumShadowOccluderVolume".}

proc setMaximumNumberOfActiveOccluders*(this: var CollectOccludersVisitor, num: cuint)  {.importcpp: "setMaximumNumberOfActiveOccluders".}
    ## Sets the maximum number of occluders to have active for culling
    ## purposes.

proc getMaximumNumberOfActiveOccluders*(this: CollectOccludersVisitor): cuint  {.importcpp: "getMaximumNumberOfActiveOccluders".}

proc setCreateDrawablesOnOccludeNodes*(this: var CollectOccludersVisitor, flag: bool)  {.importcpp: "setCreateDrawablesOnOccludeNodes".}

proc getCreateDrawablesOnOccludeNodes*(this: CollectOccludersVisitor): bool  {.importcpp: "getCreateDrawablesOnOccludeNodes".}

proc setCollectedOccluderSet*(this: var CollectOccludersVisitor, svol: Shadowvolumeoccluderset)  {.importcpp: "setCollectedOccluderSet".}

proc getCollectedOccluderSet*(this: var CollectOccludersVisitor): Shadowvolumeoccluderset  {.importcpp: "getCollectedOccluderSet".}

proc getCollectedOccluderSet*(this: CollectOccludersVisitor): Shadowvolumeoccluderset  {.importcpp: "getCollectedOccluderSet".}

proc removeOccludedOccluders*(this: var CollectOccludersVisitor)  {.importcpp: "removeOccludedOccluders".}
    ## Removes occluded occluders for the collected occluders list, then
    ## discards all but MaximumNumberOfActiveOccluders of occluders,
    ## discarding the occluders with the lowest shadow occluder volume.

proc `=`*(this: var CollectOccludersVisitor, Collectoccludersvisitor): Collectoccludersvisitor  {.importcpp: "# = #".}
    ## Prevents unwanted copy operator.

proc handle_cull_callbacks_and_traverse*(this: var CollectOccludersVisitor, node: Node)  {.importcpp: "handle_cull_callbacks_and_traverse".}

proc handle_cull_callbacks_and_accept*(this: var CollectOccludersVisitor, node: Node, acceptNode: ptr Node )  {.importcpp: "handle_cull_callbacks_and_accept".}

{.pop.}  # header: "CollectOccludersVisitor"
