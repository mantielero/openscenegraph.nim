const
  num_components* = 2


type
  Value_type* {.header: "Vec2ub", importcpp: "osg::Vec2ub::value_type".} = cuchar


{.push header: "Vec2ub".}

proc constructVec2ub*(): Vec2ub {.constructor,importcpp: "osg::Vec2ub::Vec2ub".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2ub*(r: Value_type, g: Value_type): Vec2ub {.constructor,importcpp: "osg::Vec2ub::Vec2ub(@)".}

proc `==`*(this: Vec2ub, v: Vec2ub): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2ub, v: Vec2ub): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2ub, v: Vec2ub): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2ub): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2ub): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2ub, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2ub, rhs: Vec2ub)  {.importcpp: "set".}

proc `[]`*(this: var Vec2ub, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2ub, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2ub): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2ub): Value_type  {.importcpp: "y".}

proc x*(this: Vec2ub): Value_type  {.importcpp: "x".}

proc y*(this: Vec2ub): Value_type  {.importcpp: "y".}

proc r*(this: var Vec2ub): Value_type  {.importcpp: "r".}

proc g*(this: var Vec2ub): Value_type  {.importcpp: "g".}

proc r*(this: Vec2ub): Value_type  {.importcpp: "r".}

proc g*(this: Vec2ub): Value_type  {.importcpp: "g".}

proc `*`*(this: Vec2ub, rhs: cfloat): Vec2ub  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec2ub, rhs: cfloat): Vec2ub  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec2ub, rhs: cfloat): Vec2ub  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec2ub, rhs: cfloat): Vec2ub  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec2ub, rhs: Vec2ub): Vec2ub  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec2ub, rhs: Vec2ub): Vec2ub  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec2ub, rhs: Vec2ub): Vec2ub  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec2ub, rhs: Vec2ub): Vec2ub  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec2ub"
