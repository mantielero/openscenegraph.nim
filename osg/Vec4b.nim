const
  num_components* = 4


type
  Value_type* {.header: "Vec4b", importcpp: "osg::Vec4b::value_type".} = cschar


{.push header: "Vec4b".}

proc constructVec4b*(): Vec4b {.constructor,importcpp: "osg::Vec4b::Vec4b".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4b*(x: Value_type, y: Value_type, z: Value_type, w: Value_type): Vec4b {.constructor,importcpp: "osg::Vec4b::Vec4b(@)".}

proc `==`*(this: Vec4b, v: Vec4b): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4b, v: Vec4b): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4b, v: Vec4b): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4b): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4b): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4b, x: Value_type, y: Value_type, z: Value_type, w: Value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4b, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4b, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4b): Value_type  {.importcpp: "x".}

proc y*(this: var Vec4b): Value_type  {.importcpp: "y".}

proc z*(this: var Vec4b): Value_type  {.importcpp: "z".}

proc w*(this: var Vec4b): Value_type  {.importcpp: "w".}

proc x*(this: Vec4b): Value_type  {.importcpp: "x".}

proc y*(this: Vec4b): Value_type  {.importcpp: "y".}

proc z*(this: Vec4b): Value_type  {.importcpp: "z".}

proc w*(this: Vec4b): Value_type  {.importcpp: "w".}

proc r*(this: var Vec4b): Value_type  {.importcpp: "r".}

proc g*(this: var Vec4b): Value_type  {.importcpp: "g".}

proc b*(this: var Vec4b): Value_type  {.importcpp: "b".}

proc a*(this: var Vec4b): Value_type  {.importcpp: "a".}

proc r*(this: Vec4b): Value_type  {.importcpp: "r".}

proc g*(this: Vec4b): Value_type  {.importcpp: "g".}

proc b*(this: Vec4b): Value_type  {.importcpp: "b".}

proc a*(this: Vec4b): Value_type  {.importcpp: "a".}

proc `*`*(this: Vec4b, rhs: cfloat): Vec4b  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4b, rhs: cfloat): Vec4b  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4b, rhs: cfloat): Vec4b  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4b, rhs: cfloat): Vec4b  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec4b, rhs: Vec4b): Vec4b  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4b, rhs: Vec4b): Vec4b  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4b, rhs: Vec4b): Vec4b  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4b, rhs: Vec4b): Vec4b  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec4b"
