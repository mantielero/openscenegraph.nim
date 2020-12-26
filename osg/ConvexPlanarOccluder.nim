import Object  # provides: osg::Object
import ConvexPlanarPolygon  # provides: osg::ConvexPlanarPolygon
import CopyOp  # provides: osg::CopyOp
type
  HoleList* {.header: "ConvexPlanarOccluder", importcpp: "osg::ConvexPlanarOccluder::HoleList".} = cint


{.push header: "ConvexPlanarOccluder".}

proc constructConvexPlanarOccluder*(): ConvexPlanarOccluder {.constructor,importcpp: "osg::ConvexPlanarOccluder::ConvexPlanarOccluder".}

proc constructConvexPlanarOccluder*(cpo: Convexplanaroccluder, copyop: Copyop = SHALLOW_COPY): ConvexPlanarOccluder {.constructor,importcpp: "osg::ConvexPlanarOccluder::ConvexPlanarOccluder(@)".}

proc cloneType*(this: ConvexPlanarOccluder): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ConvexPlanarOccluder, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ConvexPlanarOccluder, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ConvexPlanarOccluder): cstring  {.importcpp: "libraryName".}

proc className*(this: ConvexPlanarOccluder): cstring  {.importcpp: "className".}

proc setOccluder*(this: var ConvexPlanarOccluder, cpp: Convexplanarpolygon)  {.importcpp: "setOccluder".}

proc getOccluder*(this: var ConvexPlanarOccluder): Convexplanarpolygon  {.importcpp: "getOccluder".}

proc getOccluder*(this: ConvexPlanarOccluder): Convexplanarpolygon  {.importcpp: "getOccluder".}

proc addHole*(this: var ConvexPlanarOccluder, cpp: Convexplanarpolygon)  {.importcpp: "addHole".}

proc setHoleList*(this: var ConvexPlanarOccluder, holeList: Holelist)  {.importcpp: "setHoleList".}

proc getHoleList*(this: var ConvexPlanarOccluder): Holelist  {.importcpp: "getHoleList".}

proc getHoleList*(this: ConvexPlanarOccluder): Holelist  {.importcpp: "getHoleList".}

{.pop.}  # header: "ConvexPlanarOccluder"
