const
  num_components* = 2


type
  Value_type* {.header: "Vec2us", importcpp: "osg::Vec2us::value_type".} = cushort


{.push header: "Vec2us".}

proc constructVec2us*(): Vec2us {.constructor,importcpp: "osg::Vec2us::Vec2us".}
    ## Constructor that sets all components of the vector to zero

proc constructVec2us*(x: Value_type, y: Value_type): Vec2us {.constructor,importcpp: "osg::Vec2us::Vec2us(@)".}

proc `==`*(this: Vec2us, v: Vec2us): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2us, v: Vec2us): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2us, v: Vec2us): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2us): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2us): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2us, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2us, rhs: Vec2us)  {.importcpp: "set".}

proc `[]`*(this: var Vec2us, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2us, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2us): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2us): Value_type  {.importcpp: "y".}

proc x*(this: Vec2us): Value_type  {.importcpp: "x".}

proc y*(this: Vec2us): Value_type  {.importcpp: "y".}

proc r*(this: var Vec2us): Value_type  {.importcpp: "r".}

proc g*(this: var Vec2us): Value_type  {.importcpp: "g".}

proc r*(this: Vec2us): Value_type  {.importcpp: "r".}

proc g*(this: Vec2us): Value_type  {.importcpp: "g".}

proc `*`*(this: Vec2us, rhs: Value_type): Vec2us  {.importcpp: "# * #".}

proc `*=`*(this: var Vec2us, rhs: Value_type): Vec2us  {.importcpp: "# *= #".}

proc `/`*(this: Vec2us, rhs: Value_type): Vec2us  {.importcpp: "# / #".}

proc `/=`*(this: var Vec2us, rhs: Value_type): Vec2us  {.importcpp: "# /= #".}

proc `+`*(this: Vec2us, rhs: Vec2us): Vec2us  {.importcpp: "# + #".}

proc `+=`*(this: var Vec2us, rhs: Vec2us): Vec2us  {.importcpp: "# += #".}

proc `-`*(this: Vec2us, rhs: Vec2us): Vec2us  {.importcpp: "# - #".}

proc `-=`*(this: var Vec2us, rhs: Vec2us): Vec2us  {.importcpp: "# -= #".}

{.pop.}  # header: "Vec2us"
