const
  num_components* = 4


type
  Value_type* {.header: "Vec4ub", importcpp: "osg::Vec4ub::value_type".} = cuchar


{.push header: "Vec4ub".}

proc constructVec4ub*(): Vec4ub {.constructor,importcpp: "osg::Vec4ub::Vec4ub".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4ub*(x: value_type, y: value_type, z: value_type, w: value_type): Vec4ub {.constructor,importcpp: "osg::Vec4ub::Vec4ub(@)".}

proc `==`*(this: Vec4ub, v: Vec4ub): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4ub, v: Vec4ub): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4ub, v: Vec4ub): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4ub): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4ub): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4ub, r: value_type, g: value_type, b: value_type, a: value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4ub, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4ub, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4ub): value_type  {.importcpp: "x".}

proc y*(this: var Vec4ub): value_type  {.importcpp: "y".}

proc z*(this: var Vec4ub): value_type  {.importcpp: "z".}

proc w*(this: var Vec4ub): value_type  {.importcpp: "w".}

proc x*(this: Vec4ub): value_type  {.importcpp: "x".}

proc y*(this: Vec4ub): value_type  {.importcpp: "y".}

proc z*(this: Vec4ub): value_type  {.importcpp: "z".}

proc w*(this: Vec4ub): value_type  {.importcpp: "w".}

proc r*(this: var Vec4ub): value_type  {.importcpp: "r".}

proc g*(this: var Vec4ub): value_type  {.importcpp: "g".}

proc b*(this: var Vec4ub): value_type  {.importcpp: "b".}

proc a*(this: var Vec4ub): value_type  {.importcpp: "a".}

proc r*(this: Vec4ub): value_type  {.importcpp: "r".}

proc g*(this: Vec4ub): value_type  {.importcpp: "g".}

proc b*(this: Vec4ub): value_type  {.importcpp: "b".}

proc a*(this: Vec4ub): value_type  {.importcpp: "a".}

proc `*`*(this: Vec4ub, rhs: cfloat): Vec4ub  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4ub, rhs: cfloat): Vec4ub  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4ub, rhs: cfloat): Vec4ub  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4ub, rhs: cfloat): Vec4ub  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec4ub, rhs: Vec4ub): Vec4ub  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4ub, rhs: Vec4ub): Vec4ub  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4ub, rhs: Vec4ub): Vec4ub  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4ub, rhs: Vec4ub): Vec4ub  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec4ub"
