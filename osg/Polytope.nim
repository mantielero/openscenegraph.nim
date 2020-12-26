import /usr/include/osg/Vec3  # provides: osg::Vec3
import /usr/include/osg/BoundingSphere  # provides: osg::BoundingSphere
import /usr/include/osg/Plane  # provides: osg::Plane
import /usr/include/osg/Vec3f  # provides: osg::Vec3f
import /usr/include/osg/BoundingBox  # provides: osg::BoundingBox
import /usr/include/osg/Matrix  # provides: osg::Matrix
type
  ClippingMask* {.header: "Polytope", importcpp: "osg::Polytope::ClippingMask".} = cuint
  PlaneList* {.header: "Polytope", importcpp: "osg::Polytope::PlaneList".} = cint
  VertexList* {.header: "Polytope", importcpp: "osg::Polytope::VertexList".} = cint
  MaskStack* {.header: "Polytope", importcpp: "osg::Polytope::MaskStack".} = Fast_back_stack[Clippingmask]


{.push header: "Polytope".}

proc constructPolytope*(): Polytope {.constructor,importcpp: "osg::Polytope::Polytope".}

proc constructPolytope*(cv: Polytope): Polytope {.constructor,importcpp: "osg::Polytope::Polytope(@)".}

proc constructPolytope*(pl: Planelist): Polytope {.constructor,importcpp: "osg::Polytope::Polytope(@)".}

proc clear*(this: var Polytope)  {.importcpp: "clear".}

proc `=`*(this: var Polytope, cv: Polytope): Polytope  {.importcpp: "# = #".}

proc setToUnitFrustum*(this: var Polytope, withNear: bool, withFar: bool)  {.importcpp: "setToUnitFrustum".}
    ## Create a Polytope which is a cube, centered at 0,0,0, with sides of 2
    ## units.

proc setToBoundingBox*(this: var Polytope, bb: Boundingbox)  {.importcpp: "setToBoundingBox".}
    ## Create a Polytope which is a equivalent to BoundingBox.

proc setAndTransformProvidingInverse*(this: var Polytope, pt: Polytope, matrix: Matrix)  {.importcpp: "setAndTransformProvidingInverse".}

proc set*(this: var Polytope, pl: Planelist)  {.importcpp: "set".}

proc add*(this: var Polytope, pl: Plane)  {.importcpp: "add".}

proc flip*(this: var Polytope)  {.importcpp: "flip".}
    ## flip/reverse the orientation of all the planes.

proc empty*(this: Polytope): bool  {.importcpp: "empty".}

proc getPlaneList*(this: var Polytope): Planelist  {.importcpp: "getPlaneList".}

proc getPlaneList*(this: Polytope): Planelist  {.importcpp: "getPlaneList".}

proc setReferenceVertexList*(this: var Polytope, vertices: Vertexlist)  {.importcpp: "setReferenceVertexList".}

proc getReferenceVertexList*(this: var Polytope): Vertexlist  {.importcpp: "getReferenceVertexList".}

proc getReferenceVertexList*(this: Polytope): Vertexlist  {.importcpp: "getReferenceVertexList".}

proc setupMask*(this: var Polytope)  {.importcpp: "setupMask".}

proc getCurrentMask*(this: var Polytope): Clippingmask  {.importcpp: "getCurrentMask".}

proc getCurrentMask*(this: Polytope): Clippingmask  {.importcpp: "getCurrentMask".}

proc setResultMask*(this: var Polytope, mask: Clippingmask)  {.importcpp: "setResultMask".}

proc getResultMask*(this: Polytope): Clippingmask  {.importcpp: "getResultMask".}

proc getMaskStack*(this: var Polytope): Maskstack  {.importcpp: "getMaskStack".}

proc getMaskStack*(this: Polytope): Maskstack  {.importcpp: "getMaskStack".}

proc pushCurrentMask*(this: var Polytope)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var Polytope)  {.importcpp: "popCurrentMask".}

proc contains*(this: Polytope, v: Vec3): bool  {.importcpp: "contains".}
    ## Check whether a vertex is contained within clipping set.

proc contains*(this: var Polytope, vertices: cint): bool  {.importcpp: "contains".}
    ## Check whether any part of vertex list is contained within clipping
    ## set.

proc contains*(this: var Polytope, bs: Boundingsphere): bool  {.importcpp: "contains".}
    ## Check whether any part of a bounding sphere is contained within
    ## clipping set. Using a mask to determine which planes should be used
    ## for the check, and modifying the mask to turn off planes which
    ## wouldn't contribute to clipping of any internal objects. This feature
    ## is used in osgUtil::CullVisitor to prevent redundant plane checking.

proc contains*(this: var Polytope, bb: Boundingbox): bool  {.importcpp: "contains".}
    ## Check whether any part of a bounding box is contained within clipping
    ## set. Using a mask to determine which planes should be used for the
    ## check, and modifying the mask to turn off planes which wouldn't
    ## contribute to clipping of any internal objects. This feature is used
    ## in osgUtil::CullVisitor to prevent redundant plane checking.

proc containsAllOf*(this: var Polytope, vertices: cint): bool  {.importcpp: "containsAllOf".}
    ## Check whether all of vertex list is contained with clipping set.

proc containsAllOf*(this: var Polytope, bs: Boundingsphere): bool  {.importcpp: "containsAllOf".}
    ## Check whether the entire bounding sphere is contained within clipping
    ## set.

proc containsAllOf*(this: var Polytope, bb: Boundingbox): bool  {.importcpp: "containsAllOf".}
    ## Check whether the entire bounding box is contained within clipping
    ## set.

proc contains*(this: Polytope, v0: Vec3f, v1: Vec3f, v2: Vec3f): bool  {.importcpp: "contains".}
    ## Check whether any part of a triangle is contained within the polytope.

proc transform*(this: var Polytope, matrix: Matrix)  {.importcpp: "transform".}
    ## Transform the clipping set by matrix. Note, this operations carries
    ## out the calculation of the inverse of the matrix since a plane must be
    ## multiplied by the inverse transposed to transform it. This makes this
    ## operation expensive. If the inverse has been already calculated
    ## elsewhere then use transformProvidingInverse() instead. See http://www
    ## .worldserver.com/turk/computergraphics/NormalTransformations.pdf

proc transformProvidingInverse*(this: var Polytope, matrix: Matrix)  {.importcpp: "transformProvidingInverse".}
    ## Transform the clipping set by provide a pre inverted matrix. see
    ## transform for details.

{.pop.}  # header: "Polytope"
