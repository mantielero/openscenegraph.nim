import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: LOD  was providing: osg::LOD
  # File: Projection  was providing: osg::Projection
  # File: Switch  was providing: osg::Switch
  # File: Object  was providing: osg::Object
  # File: Transform  was providing: osg::Transform
  # File: Node  was providing: osg::Node
  # File: OccluderNode  was providing: osg::OccluderNode
type
  CollectOccludersVisitor* {.header: "CollectOccludersVisitor", importcpp: "osg::CollectOccludersVisitor", byref.} = object #of osg::NodeVisitor

  ShadowVolumeOccluderSet* {.header: "CollectOccludersVisitor", importcpp: "osg::CollectOccludersVisitor::ShadowVolumeOccluderSet".} = cint


{.push header: "CollectOccludersVisitor".}

proc constructCollectOccludersVisitor*(): CollectOccludersVisitor {.constructor,importcpp: "osg::CollectOccludersVisitor::CollectOccludersVisitor".}

proc libraryName*(this: CollectOccludersVisitor): cstring  {.importcpp: "libraryName".}

proc className*(this: CollectOccludersVisitor): cstring  {.importcpp: "className".}

proc cloneType*(this: CollectOccludersVisitor): ptr Object   {.importcpp: "cloneType".}

proc reset*(this: var CollectOccludersVisitor)  {.importcpp: "reset".}

proc getDistanceToEyePoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceToEyePoint".}

proc getDistanceToViewPoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceToViewPoint".}

proc getDistanceFromEyePoint*(this: CollectOccludersVisitor, pos: Vec3, withLODScale: bool): cfloat  {.importcpp: "getDistanceFromEyePoint".}

proc apply*(this: var CollectOccludersVisitor, a00: Node)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Transform)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Projection)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: Switch)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: LOD)  {.importcpp: "apply".}

proc apply*(this: var CollectOccludersVisitor, node: OccluderNode)  {.importcpp: "apply".}

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

proc setCollectedOccluderSet*(this: var CollectOccludersVisitor, svol: ShadowVolumeOccluderSet)  {.importcpp: "setCollectedOccluderSet".}

proc getCollectedOccluderSet*(this: var CollectOccludersVisitor): ShadowVolumeOccluderSet  {.importcpp: "getCollectedOccluderSet".}

proc getCollectedOccluderSet*(this: CollectOccludersVisitor): ShadowVolumeOccluderSet  {.importcpp: "getCollectedOccluderSet".}

proc removeOccludedOccluders*(this: var CollectOccludersVisitor)  {.importcpp: "removeOccludedOccluders".}
    ## Removes occluded occluders for the collected occluders list, then
    ## discards all but MaximumNumberOfActiveOccluders of occluders,
    ## discarding the occluders with the lowest shadow occluder volume.

proc `=`*(this: var CollectOccludersVisitor, a00: CollectOccludersVisitor): CollectOccludersVisitor  {.importcpp: "# = #".}
    ## Prevents unwanted copy operator.

proc handle_cull_callbacks_and_traverse*(this: var CollectOccludersVisitor, node: Node)  {.importcpp: "handle_cull_callbacks_and_traverse".}

proc handle_cull_callbacks_and_accept*(this: var CollectOccludersVisitor, node: Node, acceptNode: ptr Node )  {.importcpp: "handle_cull_callbacks_and_accept".}

{.pop.}  # header: "CollectOccludersVisitor"
