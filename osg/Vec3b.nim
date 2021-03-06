const
  num_components* = 3


type
  Value_type* {.header: "Vec3b", importcpp: "osg::Vec3b::value_type".} = cschar


{.push header: "Vec3b".}

proc constructVec3b*(): Vec3b {.constructor,importcpp: "osg::Vec3b::Vec3b".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3b*(r: value_type, g: value_type, b: value_type): Vec3b {.constructor,importcpp: "osg::Vec3b::Vec3b(@)".}

proc `==`*(this: Vec3b, v: Vec3b): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3b, v: Vec3b): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3b, v: Vec3b): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3b): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3b): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3b, r: value_type, g: value_type, b: value_type)  {.importcpp: "set".}

proc set*(this: var Vec3b, rhs: Vec3b)  {.importcpp: "set".}

proc `[]`*(this: var Vec3b, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3b, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3b): value_type  {.importcpp: "x".}

proc y*(this: var Vec3b): value_type  {.importcpp: "y".}

proc z*(this: var Vec3b): value_type  {.importcpp: "z".}

proc x*(this: Vec3b): value_type  {.importcpp: "x".}

proc y*(this: Vec3b): value_type  {.importcpp: "y".}

proc z*(this: Vec3b): value_type  {.importcpp: "z".}

proc r*(this: var Vec3b): value_type  {.importcpp: "r".}

proc g*(this: var Vec3b): value_type  {.importcpp: "g".}

proc b*(this: var Vec3b): value_type  {.importcpp: "b".}

proc r*(this: Vec3b): value_type  {.importcpp: "r".}

proc g*(this: Vec3b): value_type  {.importcpp: "g".}

proc b*(this: Vec3b): value_type  {.importcpp: "b".}

proc `*`*(this: Vec3b, rhs: cfloat): Vec3b  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3b, rhs: cfloat): Vec3b  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3b, rhs: cfloat): Vec3b  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3b, rhs: cfloat): Vec3b  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec3b, rhs: Vec3b): Vec3b  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3b, rhs: Vec3b): Vec3b  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3b, rhs: Vec3b): Vec3b  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3b, rhs: Vec3b): Vec3b  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec3b"
