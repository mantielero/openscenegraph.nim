const
  num_components* = 3


type
  Value_type* {.header: "Vec3us", importcpp: "osg::Vec3us::value_type".} = cushort


{.push header: "Vec3us".}

proc constructVec3us*(): Vec3us {.constructor,importcpp: "osg::Vec3us::Vec3us".}
    ## Constructor that sets all components of the vector to zero

proc constructVec3us*(r: value_type, g: value_type, b: value_type): Vec3us {.constructor,importcpp: "osg::Vec3us::Vec3us(@)".}

proc `==`*(this: Vec3us, v: Vec3us): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3us, v: Vec3us): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3us, v: Vec3us): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3us): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3us): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3us, r: value_type, g: value_type, b: value_type)  {.importcpp: "set".}

proc set*(this: var Vec3us, rhs: Vec3us)  {.importcpp: "set".}

proc `[]`*(this: var Vec3us, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3us, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3us): value_type  {.importcpp: "x".}

proc y*(this: var Vec3us): value_type  {.importcpp: "y".}

proc z*(this: var Vec3us): value_type  {.importcpp: "z".}

proc x*(this: Vec3us): value_type  {.importcpp: "x".}

proc y*(this: Vec3us): value_type  {.importcpp: "y".}

proc z*(this: Vec3us): value_type  {.importcpp: "z".}

proc r*(this: var Vec3us): value_type  {.importcpp: "r".}

proc g*(this: var Vec3us): value_type  {.importcpp: "g".}

proc b*(this: var Vec3us): value_type  {.importcpp: "b".}

proc r*(this: Vec3us): value_type  {.importcpp: "r".}

proc g*(this: Vec3us): value_type  {.importcpp: "g".}

proc b*(this: Vec3us): value_type  {.importcpp: "b".}

proc `*`*(this: Vec3us, rhs: value_type): Vec3us  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec3us, rhs: value_type): Vec3us  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec3us, rhs: value_type): Vec3us  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec3us, rhs: value_type): Vec3us  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `*`*(this: Vec3us, rhs: Vec3us): Vec3us  {.importcpp: "# * #".}
    ## Binary vector multiply.

proc `+`*(this: Vec3us, rhs: Vec3us): Vec3us  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec3us, rhs: Vec3us): Vec3us  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec3us, rhs: Vec3us): Vec3us  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec3us, rhs: Vec3us): Vec3us  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec3us"
