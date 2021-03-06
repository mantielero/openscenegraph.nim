import osg_types
  # File: Vec3f  was providing: osg::Vec3f
  # File: Vec3d  was providing: osg::Vec3d
{.push header: "BoundingSphere".}

proc constructBoundingSphereImpl*[VT](): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>".}
    ## Construct a default bounding sphere with radius to -1.0f, representing
    ## an invalid/unset bounding sphere.

proc constructBoundingSphereImpl*[VT](cntr: vec_type, rad: value_type): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>(@)".}
    ## Creates a bounding sphere initialized to the given extents.

proc constructBoundingSphereImpl*[VT](bs: BoundingSphereImpl[VT]): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>(@)".}
    ## Creates a bounding sphere initialized to the given extents.

proc constructBoundingSphereImpl*[VT](bb: BoundingBoxImpl[VT]): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>(@)".}
    ## Creates a bounding sphere initialized to the given extents.

proc init*(this: var BoundingSphereImpl)  {.importcpp: "init".}
    ## Clear the bounding sphere. Reset to default values.

proc valid*(this: BoundingSphereImpl): bool  {.importcpp: "valid".}
    ## Returns true of the bounding sphere extents are valid, false
    ## otherwise.

proc `==`*(this: BoundingSphereImpl, rhs: BoundingSphereImpl[VT]): bool  {.importcpp: "# == #".}

proc `!=`*(this: BoundingSphereImpl, rhs: BoundingSphereImpl[VT]): bool  {.importcpp: "# != #".}

proc set*(this: var BoundingSphereImpl, center: vec_type, radius: value_type)  {.importcpp: "set".}
    ## Set the bounding sphere to the given center/radius using floats.

proc center*(this: var BoundingSphereImpl): vec_type  {.importcpp: "center".}
    ## Returns the center of the bounding sphere.

proc center*(this: BoundingSphereImpl): vec_type  {.importcpp: "center".}
    ## Returns the const center of the bounding sphere.

proc radius*(this: var BoundingSphereImpl): value_type  {.importcpp: "radius".}
    ## Returns the radius of the bounding sphere.

proc radius*(this: BoundingSphereImpl): value_type  {.importcpp: "radius".}
    ## Returns the const radius of the bounding sphere.

proc radius2*(this: BoundingSphereImpl): value_type  {.importcpp: "radius2".}
    ## Returns the squared length of the radius. Note, For performance
    ## reasons, the calling method is responsible for checking to make sure
    ## the sphere is valid.

proc expandBy*(this: var BoundingSphereImpl, sh: BoundingSphereImpl[VT])  {.importcpp: "expandBy".}
    ## Expands the sphere to encompass the given sphere. Repositions the
    ## sphere center to minimize the radius increase. If the sphere is
    ## uninitialized, set its center and radius to match sh.

proc expandRadiusBy*(this: var BoundingSphereImpl, sh: BoundingSphereImpl[VT])  {.importcpp: "expandRadiusBy".}
    ## Expands the sphere to encompass the given sphere. Does not repositions
    ## the sphere center. If the sphere is uninitialized, set its center and
    ## radius to match sh.

proc contains*(this: BoundingSphereImpl, v: vec_type): bool  {.importcpp: "contains".}
    ## Returns true if v is within the sphere.

proc intersects*(this: BoundingSphereImpl, bs: BoundingSphereImpl[VT]): bool  {.importcpp: "intersects".}
    ## Returns true if there is a non-empty intersection with the given
    ## bounding sphere.

proc expandBy*(this: var BoundingSphereImpl, sh: BoundingSphereImpl[VT])  {.importcpp: "expandBy".}
    ## Expands the sphere to encompass the given sphere. Repositions the
    ## sphere center to minimize the radius increase. If the sphere is
    ## uninitialized, set its center and radius to match sh.

proc expandRadiusBy*(this: var BoundingSphereImpl, sh: BoundingSphereImpl[VT])  {.importcpp: "expandRadiusBy".}
    ## Expands the sphere to encompass the given sphere. Does not repositions
    ## the sphere center. If the sphere is uninitialized, set its center and
    ## radius to match sh.

{.pop.}  # header: "BoundingSphere"
