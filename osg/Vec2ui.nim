

type
  Value_type* {.header: "Vec2ui", importcpp: "osg::Vec2ui::value_type".} = cuint
{.push header: "Vec2ui".}


# Constructors and methods
proc constructVec2ui*(): Vec2ui {.constructor,importcpp: "Vec2ui".}

proc constructVec2ui*(x: Value_type, y: Value_type): Vec2ui {.constructor,importcpp: "Vec2ui(@)".}

proc `==`*(this: Vec2ui, v: Vec2ui): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec2ui, v: Vec2ui): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec2ui, v: Vec2ui): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec2ui): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec2ui): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec2ui, x: Value_type, y: Value_type)  {.importcpp: "set".}

proc set*(this: var Vec2ui, rhs: Vec2ui)  {.importcpp: "set".}

proc `[]`*(this: var Vec2ui, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec2ui, i: cint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec2ui): Value_type  {.importcpp: "x".}

proc y*(this: var Vec2ui): Value_type  {.importcpp: "y".}

proc x*(this: Vec2ui): Value_type  {.importcpp: "x".}

proc y*(this: Vec2ui): Value_type  {.importcpp: "y".}

proc r*(this: var Vec2ui): Value_type  {.importcpp: "r".}

proc g*(this: var Vec2ui): Value_type  {.importcpp: "g".}

proc r*(this: Vec2ui): Value_type  {.importcpp: "r".}

proc g*(this: Vec2ui): Value_type  {.importcpp: "g".}

proc `*`*(this: Vec2ui, rhs: Value_type): Vec2ui  {.importcpp: "# * #".}

proc `/`*(this: Vec2ui, rhs: Value_type): Vec2ui  {.importcpp: "# / #".}

proc `+`*(this: Vec2ui, rhs: Value_type): Vec2ui  {.importcpp: "# + #".}

proc `-`*(this: Vec2ui, rhs: Value_type): Vec2ui  {.importcpp: "# - #".}

proc `+`*(this: Vec2ui, rhs: Vec2ui): Vec2ui  {.importcpp: "# + #".}

proc `-`*(this: Vec2ui, rhs: Vec2ui): Vec2ui  {.importcpp: "# - #".}

proc `*`*(this: Vec2ui, rhs: Vec2ui): Vec2ui  {.importcpp: "# * #".}

{.pop.} # header: "Vec2ui
