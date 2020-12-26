const
  num_components* = 2


type
  Value_type* {.header: "Vec2b", importcpp: "osg::Vec2b::value_type".} = cschar


{.push header: "Vec2b".}

proc constructVec2b*(): Vec2b {.constructor,importcpp: "osg::Vec2b::Vec2b".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2b*(r: Value_type, g: Value_type): Vec2b {.constructor,importcpp: "osg::Vec2b::Vec2b(@)".}

proc `==`*(this: Vec2b, v: Vec2b): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2b, v: Vec2b): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2b, v: Vec2b): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2b): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2b): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2b, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2b, rhs: Vec2b)  {.importcpp: "set".}

proc `[]`*(this: var Vec2b, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2b, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2b): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2b): Value_type  {.importcpp: "y".}

proc x*(this: Vec2b): Value_type  {.importcpp: "x".}

proc y*(this: Vec2b): Value_type  {.importcpp: "y".}

proc r*(this: var Vec2b): Value_type  {.importcpp: "r".}

proc g*(this: var Vec2b): Value_type  {.importcpp: "g".}

proc r*(this: Vec2b): Value_type  {.importcpp: "r".}

proc g*(this: Vec2b): Value_type  {.importcpp: "g".}

proc `*`*(this: Vec2b, rhs: cfloat): Vec2b  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec2b, rhs: cfloat): Vec2b  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec2b, rhs: cfloat): Vec2b  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec2b, rhs: cfloat): Vec2b  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec2b, rhs: Vec2b): Vec2b  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec2b, rhs: Vec2b): Vec2b  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec2b, rhs: Vec2b): Vec2b  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec2b, rhs: Vec2b): Vec2b  {.importcpp: "# -= #".}
    ## Unary vector subtract.

{.pop.}  # header: "Vec2b"
