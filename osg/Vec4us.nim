import osg_types

const
  num_components* = 4


type
  Value_type* {.header: "Vec4us", importcpp: "osg::Vec4us::value_type".} = cushort


{.push header: "Vec4us".}

proc constructVec4us*(): Vec4us {.constructor,importcpp: "osg::Vec4us::Vec4us".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4us*(x: Value_type, y: Value_type, z: Value_type, w: Value_type): Vec4us {.constructor,importcpp: "osg::Vec4us::Vec4us(@)".}

proc `==`*(this: Vec4us, v: Vec4us): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4us, v: Vec4us): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4us, v: Vec4us): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4us): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4us): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4us, x: Value_type, y: Value_type, z: Value_type, w: Value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4us, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4us, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4us): Value_type  {.importcpp: "x".}

proc y*(this: var Vec4us): Value_type  {.importcpp: "y".}

proc z*(this: var Vec4us): Value_type  {.importcpp: "z".}

proc w*(this: var Vec4us): Value_type  {.importcpp: "w".}

proc x*(this: Vec4us): Value_type  {.importcpp: "x".}

proc y*(this: Vec4us): Value_type  {.importcpp: "y".}

proc z*(this: Vec4us): Value_type  {.importcpp: "z".}

proc w*(this: Vec4us): Value_type  {.importcpp: "w".}

proc r*(this: var Vec4us): Value_type  {.importcpp: "r".}

proc g*(this: var Vec4us): Value_type  {.importcpp: "g".}

proc b*(this: var Vec4us): Value_type  {.importcpp: "b".}

proc a*(this: var Vec4us): Value_type  {.importcpp: "a".}

proc r*(this: Vec4us): Value_type  {.importcpp: "r".}

proc g*(this: Vec4us): Value_type  {.importcpp: "g".}

proc b*(this: Vec4us): Value_type  {.importcpp: "b".}

proc a*(this: Vec4us): Value_type  {.importcpp: "a".}

proc `*`*(this: Vec4us, rhs: Value_type): Vec4us  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4us, rhs: Value_type): Vec4us  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4us, rhs: Value_type): Vec4us  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4us, rhs: Value_type): Vec4us  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `*`*(this: Vec4us, rhs: Vec4us): Vec4us  {.importcpp: "# * #".}
    ## Binary vector multiply.

proc `+`*(this: Vec4us, rhs: Vec4us): Vec4us  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4us, rhs: Vec4us): Vec4us  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4us, rhs: Vec4us): Vec4us  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4us, rhs: Vec4us): Vec4us  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec4us"
