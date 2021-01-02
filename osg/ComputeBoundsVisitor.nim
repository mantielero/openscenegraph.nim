import osg_types
  # File: Polytope  was providing: osg::Polytope
  # File: Transform  was providing: osg::Transform
  # File: Drawable  was providing: osg::Drawable
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: Matrix  was providing: osg::Matrix
  # File: NodeVisitor  was providing: osg::NodeVisitor::TraversalMode
type
  ComputeBoundsVisitor* {.header: "ComputeBoundsVisitor", importcpp: "osg::ComputeBoundsVisitor", byref.} = object #of osg::NodeVisitor

  MatrixStack* {.header: "ComputeBoundsVisitor", importcpp: "osg::ComputeBoundsVisitor::MatrixStack".} = cint


{.push header: "ComputeBoundsVisitor".}

proc constructComputeBoundsVisitor*(traversalMode: TraversalMode): ComputeBoundsVisitor {.constructor,importcpp: "osg::ComputeBoundsVisitor::ComputeBoundsVisitor(@)".}

proc libraryName*(this: ComputeBoundsVisitor): cstring  {.importcpp: "libraryName".}

proc className*(this: ComputeBoundsVisitor): cstring  {.importcpp: "className".}

proc reset*(this: var ComputeBoundsVisitor)  {.importcpp: "reset".}

proc getBoundingBox*(this: var ComputeBoundsVisitor): BoundingBox  {.importcpp: "getBoundingBox".}

proc getPolytope*(this: ComputeBoundsVisitor, polytope: Polytope, margin: cfloat)  {.importcpp: "getPolytope".}

proc getBase*(this: ComputeBoundsVisitor, polytope: Polytope, margin: cfloat)  {.importcpp: "getBase".}

proc apply*(this: var ComputeBoundsVisitor, drawable: Drawable)  {.importcpp: "apply".}

proc apply*(this: var ComputeBoundsVisitor, transform: Transform)  {.importcpp: "apply".}

proc pushMatrix*(this: var ComputeBoundsVisitor, matrix: Matrix)  {.importcpp: "pushMatrix".}

proc popMatrix*(this: var ComputeBoundsVisitor)  {.importcpp: "popMatrix".}

proc applyBoundingBox*(this: var ComputeBoundsVisitor, a00: BoundingBox)  {.importcpp: "applyBoundingBox".}

proc getMatrixStack*(this: ComputeBoundsVisitor): MatrixStack  {.importcpp: "getMatrixStack".}

{.pop.}  # header: "ComputeBoundsVisitor"
