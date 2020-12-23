

type
  VertexList* {.header: "ConvexPlanarPolygon", importcpp: "osg::ConvexPlanarPolygon::VertexList".} = cint
{.push header: "ConvexPlanarPolygon".}


# Constructors and methods
proc constructConvexPlanarPolygon*(): ConvexPlanarPolygon {.constructor,importcpp: "ConvexPlanarPolygon".}

proc add*(this: var ConvexPlanarPolygon, v: Vec3)  {.importcpp: "add".}

proc setVertexList*(this: var ConvexPlanarPolygon, vertexList: Vertexlist)  {.importcpp: "setVertexList".}

proc getVertexList*(this: var ConvexPlanarPolygon): Vertexlist  {.importcpp: "getVertexList".}

proc getVertexList*(this: ConvexPlanarPolygon): Vertexlist  {.importcpp: "getVertexList".}

{.pop.} # header: "ConvexPlanarPolygon
