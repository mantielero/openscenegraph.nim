import Vec2f # Provides Vec2f


type
  Value_type* {.header: "Vec2d", importcpp: "osg::Vec2d::value_type".} = cdouble
{.push header: "Vec2d".}


# Constructors and methods
proc constructVec2d*(): Vec2d {.constructor,importcpp: "Vec2d".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2d*(x: Value_type, y: Value_type): Vec2d {.constructor,importcpp: "Vec2d(@)".}

proc constructVec2d*(vec: Vec2f): Vec2d {.constructor,importcpp: "Vec2d(@)".}

proc `==`*(this: Vec2d, v: Vec2d): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2d, v: Vec2d): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2d, v: Vec2d): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2d): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2d): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2d, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec2d, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2d, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2d): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2d): Value_type  {.importcpp: "y".}

proc x*(this: Vec2d): Value_type  {.importcpp: "x".}

proc y*(this: Vec2d): Value_type  {.importcpp: "y".}

proc valid*(this: Vec2d): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec2d): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec2d, rhs: Vec2d): Value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `*`*(this: Vec2d, rhs: Value_type): Vec2d  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec2d, rhs: Value_type): Vec2d  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec2d, rhs: Value_type): Vec2d  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec2d, rhs: Value_type): Vec2d  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec2d, rhs: Vec2d): Vec2d  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec2d, rhs: Vec2d): Vec2d  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec2d, rhs: Vec2d): Vec2d  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec2d, rhs: Vec2d): Vec2d  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec2d): Vec2d  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec2d.

proc length*(this: Vec2d): Value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec2d): Value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec2d): Value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector.

{.pop.} # header: "Vec2d
