const
  num_components* = 2


type
  Value_type* {.header: "Vec2i", importcpp: "osg::Vec2i::value_type".} = cint


{.push header: "Vec2i".}

proc constructVec2i*(): Vec2i {.constructor,importcpp: "osg::Vec2i::Vec2i".}

proc constructVec2i*(x: value_type, y: value_type): Vec2i {.constructor,importcpp: "osg::Vec2i::Vec2i(@)".}

proc `==`*(this: Vec2i, v: Vec2i): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2i, v: Vec2i): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2i, v: Vec2i): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2i): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2i): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2i, x: value_type, y: value_type)  {.importcpp: "set".}

proc set*(this: var Vec2i, rhs: Vec2i)  {.importcpp: "set".}

proc `[]`*(this: var Vec2i, i: cint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2i, i: cint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2i): value_type  {.importcpp: "x".}

proc y*(this: var Vec2i): value_type  {.importcpp: "y".}

proc x*(this: Vec2i): value_type  {.importcpp: "x".}

proc y*(this: Vec2i): value_type  {.importcpp: "y".}

proc r*(this: var Vec2i): value_type  {.importcpp: "r".}

proc g*(this: var Vec2i): value_type  {.importcpp: "g".}

proc r*(this: Vec2i): value_type  {.importcpp: "r".}

proc g*(this: Vec2i): value_type  {.importcpp: "g".}

proc `*`*(this: Vec2i, rhs: value_type): Vec2i  {.importcpp: "# * #".}

proc `/`*(this: Vec2i, rhs: value_type): Vec2i  {.importcpp: "# / #".}

proc `+`*(this: Vec2i, rhs: value_type): Vec2i  {.importcpp: "# + #".}

proc `-`*(this: Vec2i, rhs: value_type): Vec2i  {.importcpp: "# - #".}

proc `+`*(this: Vec2i, rhs: Vec2i): Vec2i  {.importcpp: "# + #".}

proc `-`*(this: Vec2i, rhs: Vec2i): Vec2i  {.importcpp: "# - #".}

proc `*`*(this: Vec2i, rhs: Vec2i): Vec2i  {.importcpp: "# * #".}

{.pop.}  # header: "Vec2i"
