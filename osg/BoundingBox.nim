import Vec3f  # provides: osg::Vec3f
import Vec3d  # provides: osg::Vec3d
{.push header: "BoundingBox".}

proc constructBoundingBoxImpl*[VT](): BoundingBoxImpl {.constructor,importcpp: "osg::BoundingBoxImpl::BoundingBoxImpl<VT>".}
    ## Creates an uninitialized bounding box.

proc constructBoundingBoxImpl*[VT](xmin: Value_type, ymin: Value_type, zmin: Value_type, xmax: Value_type, ymax: Value_type, zmax: Value_type): BoundingBoxImpl {.constructor,importcpp: "osg::BoundingBoxImpl::BoundingBoxImpl<VT>(@)".}
    ## Creates a bounding box initialized to the given extents.

proc constructBoundingBoxImpl*[VT](min: Vec_type, max: Vec_type): BoundingBoxImpl {.constructor,importcpp: "osg::BoundingBoxImpl::BoundingBoxImpl<VT>(@)".}
    ## Creates a bounding box initialized to the given extents.

proc init*(this: var BoundingBoxImpl)  {.importcpp: "init".}
    ## Clear the bounding box. Erases existing minimum and maximum extents.

proc `==`*(this: BoundingBoxImpl, rhs: BoundingBoxImpl[VT]): bool  {.importcpp: "# == #".}

proc `!=`*(this: BoundingBoxImpl, rhs: BoundingBoxImpl[VT]): bool  {.importcpp: "# != #".}

proc valid*(this: BoundingBoxImpl): bool  {.importcpp: "valid".}
    ## Returns true if the bounding box extents are valid, false otherwise.

proc set*(this: var BoundingBoxImpl, xmin: Value_type, ymin: Value_type, zmin: Value_type, xmax: Value_type, ymax: Value_type, zmax: Value_type)  {.importcpp: "set".}
    ## Sets the bounding box extents.

proc set*(this: var BoundingBoxImpl, min: Vec_type, max: Vec_type)  {.importcpp: "set".}
    ## Sets the bounding box extents.

proc xMin*(this: var BoundingBoxImpl): Value_type  {.importcpp: "xMin".}

proc xMin*(this: BoundingBoxImpl): Value_type  {.importcpp: "xMin".}

proc yMin*(this: var BoundingBoxImpl): Value_type  {.importcpp: "yMin".}

proc yMin*(this: BoundingBoxImpl): Value_type  {.importcpp: "yMin".}

proc zMin*(this: var BoundingBoxImpl): Value_type  {.importcpp: "zMin".}

proc zMin*(this: BoundingBoxImpl): Value_type  {.importcpp: "zMin".}

proc xMax*(this: var BoundingBoxImpl): Value_type  {.importcpp: "xMax".}

proc xMax*(this: BoundingBoxImpl): Value_type  {.importcpp: "xMax".}

proc yMax*(this: var BoundingBoxImpl): Value_type  {.importcpp: "yMax".}

proc yMax*(this: BoundingBoxImpl): Value_type  {.importcpp: "yMax".}

proc zMax*(this: var BoundingBoxImpl): Value_type  {.importcpp: "zMax".}

proc zMax*(this: BoundingBoxImpl): Value_type  {.importcpp: "zMax".}

proc center*(this: BoundingBoxImpl): Vec_type  {.importcpp: "center".}
    ## Calculates and returns the bounding box center.

proc radius*(this: BoundingBoxImpl): Value_type  {.importcpp: "radius".}
    ## Calculates and returns the bounding box radius.

proc radius2*(this: BoundingBoxImpl): Value_type  {.importcpp: "radius2".}
    ## Calculates and returns the squared length of the bounding box radius.
    ## Note, radius2() is faster to calculate than radius().

proc corner*(this: BoundingBoxImpl, pos: cuint): Vec_type  {.importcpp: "corner".}
    ## Returns a specific corner of the bounding box. pos specifies the
    ## corner as a number between 0 and 7. Each bit selects an axis, X, Y, or
    ## Z from least- to most-significant. Unset bits select the minimum value
    ## for that axis, and set bits select the maximum.

proc expandBy*(this: var BoundingBoxImpl, v: Vec_type)  {.importcpp: "expandBy".}
    ## Expands the bounding box to include the given coordinate. If the box
    ## is uninitialized, set its min and max extents to v.

proc expandBy*(this: var BoundingBoxImpl, x: Value_type, y: Value_type, z: Value_type)  {.importcpp: "expandBy".}
    ## Expands the bounding box to include the given coordinate. If the box
    ## is uninitialized, set its min and max extents to Vec3(x,y,z).

proc expandBy*(this: var BoundingBoxImpl, bb: BoundingBoxImpl[VT])  {.importcpp: "expandBy".}
    ## Expands this bounding box to include the given bounding box. If this
    ## box is uninitialized, set it equal to bb.

proc intersect*(this: BoundingBoxImpl, bb: BoundingBoxImpl[VT]): BoundingBoxImpl[VT]  {.importcpp: "intersect".}
    ## Returns the intersection of this bounding box and the specified
    ## bounding box.

proc intersects*(this: BoundingBoxImpl, bb: BoundingBoxImpl[VT]): bool  {.importcpp: "intersects".}
    ## Return true if this bounding box intersects the specified bounding
    ## box.

proc contains*(this: BoundingBoxImpl, v: Vec_type): bool  {.importcpp: "contains".}
    ## Returns true if this bounding box contains the specified coordinate.

proc contains*(this: BoundingBoxImpl, v: Vec_type, epsilon: Value_type): bool  {.importcpp: "contains".}
    ## Returns true if this bounding box contains the specified coordinate
    ## allowing for specific epsilon.

{.pop.}  # header: "BoundingBox"
