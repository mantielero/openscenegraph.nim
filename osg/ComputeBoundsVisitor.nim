import /usr/include/osg/Polytope  # provides: osg::Polytope
import /usr/include/osg/Transform  # provides: osg::Transform
import /usr/include/osg/Drawable  # provides: osg::Drawable
import /usr/include/osg/BoundingBox  # provides: osg::BoundingBox
import /usr/include/osg/Matrix  # provides: osg::Matrix
type
  MatrixStack* {.header: "ComputeBoundsVisitor", importcpp: "osg::ComputeBoundsVisitor::MatrixStack".} = cint
  ComputeBoundsVisitor* {.header: "ComputeBoundsVisitor", importcpp: "osg::ComputeBoundsVisitor", byref.} = object #of osg::NodeVisitor



{.push header: "ComputeBoundsVisitor".}

proc constructComputeBoundsVisitor*(traversalMode: Traversalmode): ComputeBoundsVisitor {.constructor,importcpp: "osg::ComputeBoundsVisitor::ComputeBoundsVisitor(@)".}

proc libraryName*(this: ComputeBoundsVisitor): cstring  {.importcpp: "libraryName".}

proc className*(this: ComputeBoundsVisitor): cstring  {.importcpp: "className".}

proc reset*(this: var ComputeBoundsVisitor)  {.importcpp: "reset".}

proc getBoundingBox*(this: var ComputeBoundsVisitor): Boundingbox  {.importcpp: "getBoundingBox".}

proc getPolytope*(this: ComputeBoundsVisitor, polytope: Polytope, margin: cfloat)  {.importcpp: "getPolytope".}

proc getBase*(this: ComputeBoundsVisitor, polytope: Polytope, margin: cfloat)  {.importcpp: "getBase".}

proc apply*(this: var ComputeBoundsVisitor, drawable: Drawable)  {.importcpp: "apply".}

proc apply*(this: var ComputeBoundsVisitor, transform: Transform)  {.importcpp: "apply".}

proc pushMatrix*(this: var ComputeBoundsVisitor, matrix: Matrix)  {.importcpp: "pushMatrix".}

proc popMatrix*(this: var ComputeBoundsVisitor)  {.importcpp: "popMatrix".}

proc applyBoundingBox*(this: var ComputeBoundsVisitor, Boundingbox)  {.importcpp: "applyBoundingBox".}

proc getMatrixStack*(this: ComputeBoundsVisitor): Matrixstack  {.importcpp: "getMatrixStack".}

{.pop.}  # header: "ComputeBoundsVisitor"
