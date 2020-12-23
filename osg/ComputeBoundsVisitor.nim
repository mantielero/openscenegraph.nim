import Matrix # Provides Matrix
import BoundingBox # Provides BoundingBox
import NodeVisitor # Provides TraversalMode
import Polytope # Provides Polytope
import Transform # Provides Transform
import Drawable # Provides Drawable


type
  MatrixStack* {.header: "ComputeBoundsVisitor", importcpp: "osg::ComputeBoundsVisitor::MatrixStack".} = cint
{.push header: "ComputeBoundsVisitor".}


# Constructors and methods
proc constructComputeBoundsVisitor*(traversalMode: Traversalmode): ComputeBoundsVisitor {.constructor,importcpp: "ComputeBoundsVisitor(@)".}

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

{.pop.} # header: "ComputeBoundsVisitor
