import osg_types
  # File: Object  was providing: osg::Object
  # File: ConvexPlanarPolygon  was providing: osg::ConvexPlanarPolygon
  # File: CopyOp  was providing: osg::CopyOp
type
  HoleList* {.header: "ConvexPlanarOccluder", importcpp: "osg::ConvexPlanarOccluder::HoleList".} = cint


{.push header: "ConvexPlanarOccluder".}

proc constructConvexPlanarOccluder*(): ConvexPlanarOccluder {.constructor,importcpp: "osg::ConvexPlanarOccluder::ConvexPlanarOccluder".}

proc constructConvexPlanarOccluder*(cpo: ConvexPlanarOccluder, copyop: CopyOp = SHALLOW_COPY): ConvexPlanarOccluder {.constructor,importcpp: "osg::ConvexPlanarOccluder::ConvexPlanarOccluder(@)".}

proc cloneType*(this: ConvexPlanarOccluder): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ConvexPlanarOccluder, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ConvexPlanarOccluder, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ConvexPlanarOccluder): cstring  {.importcpp: "libraryName".}

proc className*(this: ConvexPlanarOccluder): cstring  {.importcpp: "className".}

proc setOccluder*(this: var ConvexPlanarOccluder, cpp: ConvexPlanarPolygon)  {.importcpp: "setOccluder".}

proc getOccluder*(this: var ConvexPlanarOccluder): ConvexPlanarPolygon  {.importcpp: "getOccluder".}

proc getOccluder*(this: ConvexPlanarOccluder): ConvexPlanarPolygon  {.importcpp: "getOccluder".}

proc addHole*(this: var ConvexPlanarOccluder, cpp: ConvexPlanarPolygon)  {.importcpp: "addHole".}

proc setHoleList*(this: var ConvexPlanarOccluder, holeList: HoleList)  {.importcpp: "setHoleList".}

proc getHoleList*(this: var ConvexPlanarOccluder): HoleList  {.importcpp: "getHoleList".}

proc getHoleList*(this: ConvexPlanarOccluder): HoleList  {.importcpp: "getHoleList".}

{.pop.}  # header: "ConvexPlanarOccluder"
