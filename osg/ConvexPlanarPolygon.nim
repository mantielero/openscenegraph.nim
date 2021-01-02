import osg_types
  # File: Vec3  was providing: osg::Vec3
type
  VertexList* {.header: "ConvexPlanarPolygon", importcpp: "osg::ConvexPlanarPolygon::VertexList".} = cint


{.push header: "ConvexPlanarPolygon".}

proc constructConvexPlanarPolygon*(): ConvexPlanarPolygon {.constructor,importcpp: "osg::ConvexPlanarPolygon::ConvexPlanarPolygon".}

proc add*(this: var ConvexPlanarPolygon, v: Vec3)  {.importcpp: "add".}

proc setVertexList*(this: var ConvexPlanarPolygon, vertexList: VertexList)  {.importcpp: "setVertexList".}

proc getVertexList*(this: var ConvexPlanarPolygon): VertexList  {.importcpp: "getVertexList".}

proc getVertexList*(this: ConvexPlanarPolygon): VertexList  {.importcpp: "getVertexList".}

{.pop.}  # header: "ConvexPlanarPolygon"
