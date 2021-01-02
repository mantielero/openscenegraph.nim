const
  num_components* = 4


type
  Value_type* {.header: "Vec4ui", importcpp: "osg::Vec4ui::value_type".} = cuint


{.push header: "Vec4ui".}

proc constructVec4ui*(): Vec4ui {.constructor,importcpp: "osg::Vec4ui::Vec4ui".}

proc constructVec4ui*(x: value_type, y: value_type, z: value_type, w: value_type): Vec4ui {.constructor,importcpp: "osg::Vec4ui::Vec4ui(@)".}

proc `==`*(this: Vec4ui, v: Vec4ui): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4ui, v: Vec4ui): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4ui, v: Vec4ui): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4ui): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4ui): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4ui, x: value_type, y: value_type, z: value_type, w: value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4ui, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4ui, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4ui): value_type  {.importcpp: "x".}

proc y*(this: var Vec4ui): value_type  {.importcpp: "y".}

proc z*(this: var Vec4ui): value_type  {.importcpp: "z".}

proc w*(this: var Vec4ui): value_type  {.importcpp: "w".}

proc x*(this: Vec4ui): value_type  {.importcpp: "x".}

proc y*(this: Vec4ui): value_type  {.importcpp: "y".}

proc z*(this: Vec4ui): value_type  {.importcpp: "z".}

proc w*(this: Vec4ui): value_type  {.importcpp: "w".}

proc r*(this: var Vec4ui): value_type  {.importcpp: "r".}

proc g*(this: var Vec4ui): value_type  {.importcpp: "g".}

proc b*(this: var Vec4ui): value_type  {.importcpp: "b".}

proc a*(this: var Vec4ui): value_type  {.importcpp: "a".}

proc r*(this: Vec4ui): value_type  {.importcpp: "r".}

proc g*(this: Vec4ui): value_type  {.importcpp: "g".}

proc b*(this: Vec4ui): value_type  {.importcpp: "b".}

proc a*(this: Vec4ui): value_type  {.importcpp: "a".}

proc `*`*(this: Vec4ui, rhs: value_type): Vec4ui  {.importcpp: "# * #".}

proc `/`*(this: Vec4ui, rhs: value_type): Vec4ui  {.importcpp: "# / #".}

proc `+`*(this: Vec4ui, rhs: value_type): Vec4ui  {.importcpp: "# + #".}

proc `-`*(this: Vec4ui, rhs: value_type): Vec4ui  {.importcpp: "# - #".}

proc `+`*(this: Vec4ui, rhs: Vec4ui): Vec4ui  {.importcpp: "# + #".}

proc `-`*(this: Vec4ui, rhs: Vec4ui): Vec4ui  {.importcpp: "# - #".}

proc `*`*(this: Vec4ui, rhs: Vec4ui): Vec4ui  {.importcpp: "# * #".}

{.pop.}  # header: "Vec4ui"
