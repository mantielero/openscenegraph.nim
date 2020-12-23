

type
  Value_type* {.header: "Vec3i", importcpp: "osg::Vec3i::value_type".} = cint
{.push header: "Vec3i".}


# Constructors and methods
proc constructVec3i*(): Vec3i {.constructor,importcpp: "Vec3i".}

proc constructVec3i*(r: Value_type, g: Value_type, b: Value_type): Vec3i {.constructor,importcpp: "Vec3i(@)".}

proc `==`*(this: Vec3i, v: Vec3i): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3i, v: Vec3i): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3i, v: Vec3i): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3i): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3i): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3i, r: Value_type, g: Value_type, b: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec3i, rhs: Vec3i)  {.importcpp: "set".}

proc `[]`*(this: var Vec3i, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3i, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3i): Value_type  {.importcpp: "x".}

proc y*(this: var Vec3i): Value_type  {.importcpp: "y".}

proc z*(this: var Vec3i): Value_type  {.importcpp: "z".}

proc x*(this: Vec3i): Value_type  {.importcpp: "x".}

proc y*(this: Vec3i): Value_type  {.importcpp: "y".}

proc z*(this: Vec3i): Value_type  {.importcpp: "z".}

proc r*(this: var Vec3i): Value_type  {.importcpp: "r".}

proc g*(this: var Vec3i): Value_type  {.importcpp: "g".}

proc b*(this: var Vec3i): Value_type  {.importcpp: "b".}

proc r*(this: Vec3i): Value_type  {.importcpp: "r".}

proc g*(this: Vec3i): Value_type  {.importcpp: "g".}

proc b*(this: Vec3i): Value_type  {.importcpp: "b".}

proc `*`*(this: Vec3i, rhs: Value_type): Vec3i  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `/`*(this: Vec3i, rhs: Value_type): Vec3i  {.importcpp: "# / #".}

proc `+`*(this: Vec3i, rhs: Value_type): Vec3i  {.importcpp: "# + #".}

proc `-`*(this: Vec3i, rhs: Value_type): Vec3i  {.importcpp: "# - #".}

proc `+`*(this: Vec3i, rhs: Vec3i): Vec3i  {.importcpp: "# + #".}

proc `-`*(this: Vec3i, rhs: Vec3i): Vec3i  {.importcpp: "# - #".}

proc `*`*(this: Vec3i, rhs: Vec3i): Vec3i  {.importcpp: "# * #".}

{.pop.} # header: "Vec3i
