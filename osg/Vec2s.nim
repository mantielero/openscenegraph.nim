const
  num_components* = 2


type
  Value_type* {.header: "Vec2s", importcpp: "osg::Vec2s::value_type".} = cshort


{.push header: "Vec2s".}

proc constructVec2s*(): Vec2s {.constructor,importcpp: "osg::Vec2s::Vec2s".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2s*(x: Value_type, y: Value_type): Vec2s {.constructor,importcpp: "osg::Vec2s::Vec2s(@)".}

proc `==`*(this: Vec2s, v: Vec2s): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2s, v: Vec2s): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2s, v: Vec2s): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2s): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2s): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2s, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2s, rhs: Vec2s)  {.importcpp: "set".}

proc `[]`*(this: var Vec2s, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2s, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2s): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2s): Value_type  {.importcpp: "y".}

proc x*(this: Vec2s): Value_type  {.importcpp: "x".}

proc y*(this: Vec2s): Value_type  {.importcpp: "y".}

proc r*(this: var Vec2s): Value_type  {.importcpp: "r".}

proc g*(this: var Vec2s): Value_type  {.importcpp: "g".}

proc r*(this: Vec2s): Value_type  {.importcpp: "r".}

proc g*(this: Vec2s): Value_type  {.importcpp: "g".}

proc `*`*(this: Vec2s, rhs: Value_type): Vec2s  {.importcpp: "# * #".}

proc `*=`*(this: var Vec2s, rhs: Value_type): Vec2s  {.importcpp: "# *= #".}

proc `/`*(this: Vec2s, rhs: Value_type): Vec2s  {.importcpp: "# / #".}

proc `/=`*(this: var Vec2s, rhs: Value_type): Vec2s  {.importcpp: "# /= #".}

proc `*`*(this: Vec2s, rhs: Vec2s): Vec2s  {.importcpp: "# * #".}

proc `+`*(this: Vec2s, rhs: Vec2s): Vec2s  {.importcpp: "# + #".}

proc `+=`*(this: var Vec2s, rhs: Vec2s): Vec2s  {.importcpp: "# += #".}

proc `-`*(this: Vec2s, rhs: Vec2s): Vec2s  {.importcpp: "# - #".}

proc `-=`*(this: var Vec2s, rhs: Vec2s): Vec2s  {.importcpp: "# -= #".}

proc `-`*(this: Vec2s): Vec2s  {.importcpp: "# - #".}

{.pop.}  # header: "Vec2s"
