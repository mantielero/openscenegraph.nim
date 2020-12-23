import Vec2f # Provides Vec2f


type
  Value_type* {.header: "Vec3f", importcpp: "osg::Vec3f::value_type".} = cfloat
{.push header: "Vec3f".}


# Constructors and methods
proc constructVec3f*(): Vec3f {.constructor,importcpp: "Vec3f".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3f*(x: Value_type, y: Value_type, z: Value_type): Vec3f {.constructor,importcpp: "Vec3f(@)".}

proc constructVec3f*(v2: Vec2f, zz: Value_type): Vec3f {.constructor,importcpp: "Vec3f(@)".}

proc `==`*(this: Vec3f, v: Vec3f): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3f, v: Vec3f): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3f, v: Vec3f): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3f): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3f): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3f, x: Value_type, y: Value_type, z: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec3f, rhs: Vec3f)  {.importcpp: "set".}

proc `[]`*(this: var Vec3f, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3f, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3f): Value_type  {.importcpp: "x".}

proc y*(this: var Vec3f): Value_type  {.importcpp: "y".}

proc z*(this: var Vec3f): Value_type  {.importcpp: "z".}

proc x*(this: Vec3f): Value_type  {.importcpp: "x".}

proc y*(this: Vec3f): Value_type  {.importcpp: "y".}

proc z*(this: Vec3f): Value_type  {.importcpp: "z".}

proc valid*(this: Vec3f): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec3f): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec3f, rhs: Vec3f): Value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `^`*(this: Vec3f, rhs: Vec3f): Vec3f  {.importcpp: "# ^ #".}
    ## Cross product.

proc `*`*(this: Vec3f, rhs: Value_type): Vec3f  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3f, rhs: Value_type): Vec3f  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3f, rhs: Value_type): Vec3f  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3f, rhs: Value_type): Vec3f  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec3f, rhs: Vec3f): Vec3f  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3f, rhs: Vec3f): Vec3f  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3f, rhs: Vec3f): Vec3f  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3f, rhs: Vec3f): Vec3f  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec3f): Vec3f  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec3f.

proc length*(this: Vec3f): Value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec3f): Value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec3f): Value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector.

{.pop.} # header: "Vec3f
