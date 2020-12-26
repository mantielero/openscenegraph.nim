type
  Vec_type* {.header: "BoundingSphere", importcpp: "osg::BoundingSphereImpl::vec_type".} = VT
  Value_type* {.header: "BoundingSphere", importcpp: "osg::BoundingSphereImpl::value_type".} = Value_type
  BoundingSphereImpl* {.header: "BoundingSphere", importcpp: "osg::BoundingSphereImpl", byref.} [VT] = object
    ## General purpose bounding sphere class for enclosing
    ## nodes/objects/vertices. Bounds internal osg::Nodes in the scene,
    ## assists in view frustum culling, etc. Similar in function to
    ## BoundingBox, it's quicker for evaluating culling but generally will
    ## not cull as aggressively because it encloses a greater volume.



{.push header: "BoundingSphere".}

proc constructBoundingSphereImpl*[VT](): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>".}
    ## Construct a default bounding sphere with radius to -1.0f, representing
    ## an invalid/unset bounding sphere.

proc constructBoundingSphereImpl*[VT](cntr: Vec_type, rad: Value_type): BoundingSphereImpl {.constructor,importcpp: "osg::BoundingSphereImpl::BoundingSphereImpl<VT>(@)".}
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

proc set*(this: var BoundingSphereImpl, center: Vec_type, radius: Value_type)  {.importcpp: "set".}
    ## Set the bounding sphere to the given center/radius using floats.

proc center*(this: var BoundingSphereImpl): Vec_type  {.importcpp: "center".}
    ## Returns the center of the bounding sphere.

proc center*(this: BoundingSphereImpl): Vec_type  {.importcpp: "center".}
    ## Returns the const center of the bounding sphere.

proc radius*(this: var BoundingSphereImpl): Value_type  {.importcpp: "radius".}
    ## Returns the radius of the bounding sphere.

proc radius*(this: BoundingSphereImpl): Value_type  {.importcpp: "radius".}
    ## Returns the const radius of the bounding sphere.

proc radius2*(this: BoundingSphereImpl): Value_type  {.importcpp: "radius2".}
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

proc contains*(this: BoundingSphereImpl, v: Vec_type): bool  {.importcpp: "contains".}
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
