

type
  Value_type* {.header: "Vec3s", importcpp: "osg::Vec3s::value_type".} = cshort
{.push header: "Vec3s".}


# Constructors and methods
proc constructVec3s*(): Vec3s {.constructor,importcpp: "Vec3s".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3s*(r: Value_type, g: Value_type, b: Value_type): Vec3s {.constructor,importcpp: "Vec3s(@)".}

proc `==`*(this: Vec3s, v: Vec3s): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3s, v: Vec3s): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3s, v: Vec3s): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3s): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3s): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3s, r: Value_type, g: Value_type, b: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec3s, rhs: Vec3s)  {.importcpp: "set".}

proc `[]`*(this: var Vec3s, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3s, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3s): Value_type  {.importcpp: "x".}

proc y*(this: var Vec3s): Value_type  {.importcpp: "y".}

proc z*(this: var Vec3s): Value_type  {.importcpp: "z".}

proc x*(this: Vec3s): Value_type  {.importcpp: "x".}

proc y*(this: Vec3s): Value_type  {.importcpp: "y".}

proc z*(this: Vec3s): Value_type  {.importcpp: "z".}

proc r*(this: var Vec3s): Value_type  {.importcpp: "r".}

proc g*(this: var Vec3s): Value_type  {.importcpp: "g".}

proc b*(this: var Vec3s): Value_type  {.importcpp: "b".}

proc r*(this: Vec3s): Value_type  {.importcpp: "r".}

proc g*(this: Vec3s): Value_type  {.importcpp: "g".}

proc b*(this: Vec3s): Value_type  {.importcpp: "b".}

proc `*`*(this: Vec3s, rhs: Value_type): Vec3s  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3s, rhs: Value_type): Vec3s  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3s, rhs: Value_type): Vec3s  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3s, rhs: Value_type): Vec3s  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `*`*(this: Vec3s, rhs: Vec3s): Vec3s  {.importcpp: "# * #".}
    ## Binary vector multiply.

proc `+`*(this: Vec3s, rhs: Vec3s): Vec3s  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3s, rhs: Vec3s): Vec3s  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3s, rhs: Vec3s): Vec3s  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3s, rhs: Vec3s): Vec3s  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec3s): Vec3s  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec3s.

{.pop.} # header: "Vec3s
