const
  num_components* = 3


type
  Value_type* {.header: "Vec3ub", importcpp: "osg::Vec3ub::value_type".} = cuchar


{.push header: "Vec3ub".}

proc constructVec3ub*(): Vec3ub {.constructor,importcpp: "osg::Vec3ub::Vec3ub".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3ub*(r: value_type, g: value_type, b: value_type): Vec3ub {.constructor,importcpp: "osg::Vec3ub::Vec3ub(@)".}

proc `==`*(this: Vec3ub, v: Vec3ub): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3ub, v: Vec3ub): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3ub, v: Vec3ub): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3ub): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3ub): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3ub, r: value_type, g: value_type, b: value_type)  {.importcpp: "set".}

proc set*(this: var Vec3ub, rhs: Vec3ub)  {.importcpp: "set".}

proc `[]`*(this: var Vec3ub, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3ub, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3ub): value_type  {.importcpp: "x".}

proc y*(this: var Vec3ub): value_type  {.importcpp: "y".}

proc z*(this: var Vec3ub): value_type  {.importcpp: "z".}

proc x*(this: Vec3ub): value_type  {.importcpp: "x".}

proc y*(this: Vec3ub): value_type  {.importcpp: "y".}

proc z*(this: Vec3ub): value_type  {.importcpp: "z".}

proc r*(this: var Vec3ub): value_type  {.importcpp: "r".}

proc g*(this: var Vec3ub): value_type  {.importcpp: "g".}

proc b*(this: var Vec3ub): value_type  {.importcpp: "b".}

proc r*(this: Vec3ub): value_type  {.importcpp: "r".}

proc g*(this: Vec3ub): value_type  {.importcpp: "g".}

proc b*(this: Vec3ub): value_type  {.importcpp: "b".}

proc `*`*(this: Vec3ub, rhs: cfloat): Vec3ub  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3ub, rhs: cfloat): Vec3ub  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3ub, rhs: cfloat): Vec3ub  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3ub, rhs: cfloat): Vec3ub  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec3ub, rhs: Vec3ub): Vec3ub  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3ub, rhs: Vec3ub): Vec3ub  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3ub, rhs: Vec3ub): Vec3ub  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3ub, rhs: Vec3ub): Vec3ub  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec3ub"
