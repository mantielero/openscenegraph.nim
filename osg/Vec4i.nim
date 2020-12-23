

type
  Value_type* {.header: "Vec4i", importcpp: "osg::Vec4i::value_type".} = cint
{.push header: "Vec4i".}


# Constructors and methods
proc constructVec4i*(): Vec4i {.constructor,importcpp: "Vec4i".}

proc constructVec4i*(x: Value_type, y: Value_type, z: Value_type, w: Value_type): Vec4i {.constructor,importcpp: "Vec4i(@)".}

proc `==`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4i, v: Vec4i): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4i): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4i): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4i, x: Value_type, y: Value_type, z: Value_type, w: Value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4i, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4i, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4i): Value_type  {.importcpp: "x".}

proc y*(this: var Vec4i): Value_type  {.importcpp: "y".}

proc z*(this: var Vec4i): Value_type  {.importcpp: "z".}

proc w*(this: var Vec4i): Value_type  {.importcpp: "w".}

proc x*(this: Vec4i): Value_type  {.importcpp: "x".}

proc y*(this: Vec4i): Value_type  {.importcpp: "y".}

proc z*(this: Vec4i): Value_type  {.importcpp: "z".}

proc w*(this: Vec4i): Value_type  {.importcpp: "w".}

proc r*(this: var Vec4i): Value_type  {.importcpp: "r".}

proc g*(this: var Vec4i): Value_type  {.importcpp: "g".}

proc b*(this: var Vec4i): Value_type  {.importcpp: "b".}

proc a*(this: var Vec4i): Value_type  {.importcpp: "a".}

proc r*(this: Vec4i): Value_type  {.importcpp: "r".}

proc g*(this: Vec4i): Value_type  {.importcpp: "g".}

proc b*(this: Vec4i): Value_type  {.importcpp: "b".}

proc a*(this: Vec4i): Value_type  {.importcpp: "a".}

proc `*`*(this: Vec4i, rhs: Value_type): Vec4i  {.importcpp: "# * #".}

proc `/`*(this: Vec4i, rhs: Value_type): Vec4i  {.importcpp: "# / #".}

proc `+`*(this: Vec4i, rhs: Value_type): Vec4i  {.importcpp: "# + #".}

proc `-`*(this: Vec4i, rhs: Value_type): Vec4i  {.importcpp: "# - #".}

proc `+`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# + #".}

proc `-`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# - #".}

proc `*`*(this: Vec4i, rhs: Vec4i): Vec4i  {.importcpp: "# * #".}

{.pop.} # header: "Vec4i
