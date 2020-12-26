const
  num_components* = 2


type
  Value_type* {.header: "Vec2f", importcpp: "osg::Vec2f::value_type".} = cfloat


{.push header: "Vec2f".}

proc constructVec2f*(): Vec2f {.constructor,importcpp: "osg::Vec2f::Vec2f".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2f*(x: Value_type, y: Value_type): Vec2f {.constructor,importcpp: "osg::Vec2f::Vec2f(@)".}

proc `==`*(this: Vec2f, v: Vec2f): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2f, v: Vec2f): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2f, v: Vec2f): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2f): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2f): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2f, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2f, rhs: Vec2f)  {.importcpp: "set".}

proc `[]`*(this: var Vec2f, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2f, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2f): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2f): Value_type  {.importcpp: "y".}

proc x*(this: Vec2f): Value_type  {.importcpp: "x".}

proc y*(this: Vec2f): Value_type  {.importcpp: "y".}

proc valid*(this: Vec2f): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec2f): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec2f, rhs: Vec2f): Value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `*`*(this: Vec2f, rhs: Value_type): Vec2f  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec2f, rhs: Value_type): Vec2f  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec2f, rhs: Value_type): Vec2f  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec2f, rhs: Value_type): Vec2f  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec2f, rhs: Vec2f): Vec2f  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec2f, rhs: Vec2f): Vec2f  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec2f, rhs: Vec2f): Vec2f  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec2f, rhs: Vec2f): Vec2f  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec2f): Vec2f  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec2f.

proc length*(this: Vec2f): Value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec2f): Value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec2f): Value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector.

{.pop.}  # header: "Vec2f"
