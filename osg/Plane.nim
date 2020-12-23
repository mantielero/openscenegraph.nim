import Vec3f # Provides Vec3f
import Vec4f # Provides Vec4f
import Vec3d # Provides Vec3d
import Vec4d # Provides Vec4d
import Matrix # Provides Matrix
import BoundingSphere # Provides BoundingSphere
import BoundingBox # Provides BoundingBox


type
  # Typedefs
  Value_type* {.header: "Plane", importcpp: "osg::Plane::value_type".} = cdouble
  Vec3_type* {.header: "Plane", importcpp: "osg::Plane::Vec3_type".} = Vec3d
  Vec4_type* {.header: "Plane", importcpp: "osg::Plane::Vec4_type".} = Vec4d
{.push header: "Plane".}


# Constructors and methods
proc constructPlane*(): Plane {.constructor,importcpp: "Plane".}
    ## Default constructor The default constructor initializes all values to
    ## zero.

proc constructPlane*(pl: Plane): Plane {.constructor,importcpp: "Plane(@)".}

proc constructPlane*(a: Value_type, b: Value_type, c: Value_type, d: Value_type): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor The plane is described as a*x+b*y+c*z+d = 0.

proc constructPlane*(vec: Vec4f): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor The plane can also be described as vec*[x,y,z,1].

proc constructPlane*(vec: Vec4d): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor The plane can also be described as vec*[x,y,z,1].

proc constructPlane*(norm: Vec3_type, d: Value_type): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor This constructor initializes the internal values directly
    ## without any checking or manipulation.

proc constructPlane*(v1: Vec3_type, v2: Vec3_type, v3: Vec3_type): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor This constructor calculates from the three points
    ## describing an infinite plane the internal values.

proc constructPlane*(norm: Vec3_type, point: Vec3_type): Plane {.constructor,importcpp: "Plane(@)".}
    ## Constructor This constructor initializes the internal values directly
    ## without any checking or manipulation.

proc `=`*(this: var Plane, pl: Plane): Plane  {.importcpp: "# = #".}

proc set*(this: var Plane, pl: Plane)  {.importcpp: "set".}

proc set*(this: var Plane, a: Value_type, b: Value_type, c: Value_type, d: Value_type)  {.importcpp: "set".}

proc set*(this: var Plane, vec: Vec4f)  {.importcpp: "set".}

proc set*(this: var Plane, vec: Vec4d)  {.importcpp: "set".}

proc set*(this: var Plane, norm: Vec3_type, d: cdouble)  {.importcpp: "set".}

proc set*(this: var Plane, v1: Vec3_type, v2: Vec3_type, v3: Vec3_type)  {.importcpp: "set".}

proc set*(this: var Plane, norm: Vec3_type, point: Vec3_type)  {.importcpp: "set".}

proc flip*(this: var Plane)  {.importcpp: "flip".}
    ## flip/reverse the orientation of the plane.

proc makeUnitLength*(this: var Plane)  {.importcpp: "makeUnitLength".}
    ## This method multiplies the coefficients of the plane equation with a
    ## constant factor so that the equation a^2+b^2+c^2 = 1 holds.

proc calculateUpperLowerBBCorners*(this: var Plane)  {.importcpp: "calculateUpperLowerBBCorners".}
    ## calculate the upper and lower bounding box corners to be used in the
    ## intersect(BoundingBox&) method for speeding calculations.

proc valid*(this: Plane): bool  {.importcpp: "valid".}
    ## Checks if all internal values describing the plane have valid numbers

proc isNaN*(this: Plane): bool  {.importcpp: "isNaN".}

proc `==`*(this: Plane, plane: Plane): bool  {.importcpp: "# == #".}

proc `!=`*(this: Plane, plane: Plane): bool  {.importcpp: "# != #".}

proc `<`*(this: Plane, plane: Plane): bool  {.importcpp: "# < #".}
    ## A plane is said to be smaller than another plane if the first non-
    ## identical element of the internal array is smaller than the
    ## corresponding element of the other plane.

proc `ptr`*(this: var Plane): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Plane): ptr Value_type   {.importcpp: "ptr".}

proc asVec4*(this: Plane): Vec4_type  {.importcpp: "asVec4".}

proc `[]`*(this: var Plane, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Plane, i: cuint): Value_type  {.importcpp: "# [] #".}

proc getNormal*(this: Plane): Vec3_type  {.importcpp: "getNormal".}

proc distance*(this: Plane, v: Vec3f): cfloat  {.importcpp: "distance".}
    ## Calculate the distance between a point and the plane.

proc distance*(this: Plane, v: Vec3d): cdouble  {.importcpp: "distance".}
    ## Calculate the distance between a point and the plane.

proc dotProductNormal*(this: Plane, v: Vec3f): cfloat  {.importcpp: "dotProductNormal".}
    ## calculate the dot product of the plane normal and a point.

proc dotProductNormal*(this: Plane, v: Vec3d): cdouble  {.importcpp: "dotProductNormal".}
    ## calculate the dot product of the plane normal and a point.

proc intersect*(this: Plane, vertices: cint): cint  {.importcpp: "intersect".}
    ## intersection test between plane and vertex list return 1 if the bs is
    ## completely above plane, return 0 if the bs intersects the plane,
    ## return -1 if the bs is completely below the plane.

proc intersect*(this: Plane, vertices: cint): cint  {.importcpp: "intersect".}
    ## intersection test between plane and vertex list return 1 if the bs is
    ## completely above plane, return 0 if the bs intersects the plane,
    ## return -1 if the bs is completely below the plane.

proc intersect*(this: Plane, bs: Boundingsphere): cint  {.importcpp: "intersect".}
    ## intersection test between plane and bounding sphere. return 1 if the
    ## bs is completely above plane, return 0 if the bs intersects the plane,
    ## return -1 if the bs is completely below the plane.

proc intersect*(this: Plane, bb: Boundingbox): cint  {.importcpp: "intersect".}
    ## intersection test between plane and bounding sphere. return 1 if the
    ## bs is completely above plane, return 0 if the bs intersects the plane,
    ## return -1 if the bs is completely below the plane.

proc transform*(this: var Plane, matrix: Matrix)  {.importcpp: "transform".}
    ## Transform the plane by matrix. Note, this operation carries out the
    ## calculation of the inverse of the matrix since a plane must be
    ## multiplied by the inverse transposed to transform it. This make this
    ## operation expensive. If the inverse has been already calculated
    ## elsewhere then use transformProvidingInverse() instead. See http://www
    ## .worldserver.com/turk/computergraphics/NormalTransformations.pdf

proc transformProvidingInverse*(this: var Plane, matrix: Matrix)  {.importcpp: "transformProvidingInverse".}
    ## Transform the plane by providing a pre inverted matrix. see transform
    ## for details.

{.pop.} # header: "Plane
