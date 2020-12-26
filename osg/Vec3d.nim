const
  num_components* = 3


type
  Value_type* {.header: "Vec3d", importcpp: "osg::Vec3d::value_type".} = cdouble


{.push header: "Vec3d".}

proc constructVec3d*(): Vec3d {.constructor,importcpp: "osg::Vec3d::Vec3d".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3d*(vec: Vec3f): Vec3d {.constructor,importcpp: "osg::Vec3d::Vec3d(@)".}

proc constructVec3d*(x: Value_type, y: Value_type, z: Value_type): Vec3d {.constructor,importcpp: "osg::Vec3d::Vec3d(@)".}

proc constructVec3d*(v2: Vec2d, zz: Value_type): Vec3d {.constructor,importcpp: "osg::Vec3d::Vec3d(@)".}

proc `==`*(this: Vec3d, v: Vec3d): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3d, v: Vec3d): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3d, v: Vec3d): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3d): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3d): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3d, x: Value_type, y: Value_type, z: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec3d, rhs: Vec3d)  {.importcpp: "set".}

proc `[]`*(this: var Vec3d, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3d, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3d): Value_type  {.importcpp: "x".}

proc y*(this: var Vec3d): Value_type  {.importcpp: "y".}

proc z*(this: var Vec3d): Value_type  {.importcpp: "z".}

proc x*(this: Vec3d): Value_type  {.importcpp: "x".}

proc y*(this: Vec3d): Value_type  {.importcpp: "y".}

proc z*(this: Vec3d): Value_type  {.importcpp: "z".}

proc valid*(this: Vec3d): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec3d): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec3d, rhs: Vec3d): Value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `^`*(this: Vec3d, rhs: Vec3d): Vec3d  {.importcpp: "# ^ #".}
    ## Cross product.

proc `*`*(this: Vec3d, rhs: Value_type): Vec3d  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3d, rhs: Value_type): Vec3d  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3d, rhs: Value_type): Vec3d  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3d, rhs: Value_type): Vec3d  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec3d, rhs: Vec3d): Vec3d  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3d, rhs: Vec3d): Vec3d  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3d, rhs: Vec3d): Vec3d  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3d, rhs: Vec3d): Vec3d  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec3d): Vec3d  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec3d.

proc length*(this: Vec3d): Value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec3d): Value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec3d): Value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector. If the vector is zero length, it is left
    ## unchanged and zero is returned.

{.pop.}  # header: "Vec3d"
