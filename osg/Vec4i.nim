const
  num_components* = 4


type
  Value_type* {.header: "Vec4i", importcpp: "osg::Vec4i::value_type".} = cint


{.push header: "Vec4i".}

proc constructVec4i*(): Vec4i {.constructor,importcpp: "osg::Vec4i::Vec4i".}

proc constructVec4i*(x: value_type, y: value_type, z: value_type, w: value_type): Vec4i {.constructor,importcpp: "osg::Vec4i::Vec4i(@)".}

proc `==`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4i): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4i): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4i, x: value_type, y: value_type, z: value_type, w: value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4i, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4i, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4i): value_type  {.importcpp: "x".}

proc y*(this: var Vec4i): value_type  {.importcpp: "y".}

proc z*(this: var Vec4i): value_type  {.importcpp: "z".}

proc w*(this: var Vec4i): value_type  {.importcpp: "w".}

proc x*(this: Vec4i): value_type  {.importcpp: "x".}

proc y*(this: Vec4i): value_type  {.importcpp: "y".}

proc z*(this: Vec4i): value_type  {.importcpp: "z".}

proc w*(this: Vec4i): value_type  {.importcpp: "w".}

proc r*(this: var Vec4i): value_type  {.importcpp: "r".}

proc g*(this: var Vec4i): value_type  {.importcpp: "g".}

proc b*(this: var Vec4i): value_type  {.importcpp: "b".}

proc a*(this: var Vec4i): value_type  {.importcpp: "a".}

proc r*(this: Vec4i): value_type  {.importcpp: "r".}

proc g*(this: Vec4i): value_type  {.importcpp: "g".}

proc b*(this: Vec4i): value_type  {.importcpp: "b".}

proc a*(this: Vec4i): value_type  {.importcpp: "a".}

proc `*`*(this: Vec4i, rhs: value_type): Vec4i  {.importcpp: "# * #".}

proc `/`*(this: Vec4i, rhs: value_type): Vec4i  {.importcpp: "# / #".}

proc `+`*(this: Vec4i, rhs: value_type): Vec4i  {.importcpp: "# + #".}

proc `-`*(this: Vec4i, rhs: value_type): Vec4i  {.importcpp: "# - #".}

proc `+`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# + #".}

proc `-`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# - #".}

proc `*`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# * #".}

{.pop.}  # header: "Vec4i"
