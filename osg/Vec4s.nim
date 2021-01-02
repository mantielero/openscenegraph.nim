const
  num_components* = 4


type
  Value_type* {.header: "Vec4s", importcpp: "osg::Vec4s::value_type".} = cshort


{.push header: "Vec4s".}

proc constructVec4s*(): Vec4s {.constructor,importcpp: "osg::Vec4s::Vec4s".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4s*(x: value_type, y: value_type, z: value_type, w: value_type): Vec4s {.constructor,importcpp: "osg::Vec4s::Vec4s(@)".}

proc `==`*(this: Vec4s, v: Vec4s): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4s, v: Vec4s): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4s, v: Vec4s): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4s): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4s): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4s, x: value_type, y: value_type, z: value_type, w: value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4s, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4s, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4s): value_type  {.importcpp: "x".}

proc y*(this: var Vec4s): value_type  {.importcpp: "y".}

proc z*(this: var Vec4s): value_type  {.importcpp: "z".}

proc w*(this: var Vec4s): value_type  {.importcpp: "w".}

proc x*(this: Vec4s): value_type  {.importcpp: "x".}

proc y*(this: Vec4s): value_type  {.importcpp: "y".}

proc z*(this: Vec4s): value_type  {.importcpp: "z".}

proc w*(this: Vec4s): value_type  {.importcpp: "w".}

proc r*(this: var Vec4s): value_type  {.importcpp: "r".}

proc g*(this: var Vec4s): value_type  {.importcpp: "g".}

proc b*(this: var Vec4s): value_type  {.importcpp: "b".}

proc a*(this: var Vec4s): value_type  {.importcpp: "a".}

proc r*(this: Vec4s): value_type  {.importcpp: "r".}

proc g*(this: Vec4s): value_type  {.importcpp: "g".}

proc b*(this: Vec4s): value_type  {.importcpp: "b".}

proc a*(this: Vec4s): value_type  {.importcpp: "a".}

proc `*`*(this: Vec4s, rhs: value_type): Vec4s  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4s, rhs: value_type): Vec4s  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4s, rhs: value_type): Vec4s  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4s, rhs: value_type): Vec4s  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `*`*(this: Vec4s, rhs: Vec4s): Vec4s  {.importcpp: "# * #".}
    ## Binary vector multiply.

proc `+`*(this: Vec4s, rhs: Vec4s): Vec4s  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4s, rhs: Vec4s): Vec4s  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4s, rhs: Vec4s): Vec4s  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4s, rhs: Vec4s): Vec4s  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec4s): Vec4s  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec4s.

{.pop.}  # header: "Vec4s"
