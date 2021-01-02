const
  num_components* = 3


type
  Value_type* {.header: "Vec3ui", importcpp: "osg::Vec3ui::value_type".} = cuint


{.push header: "Vec3ui".}

proc constructVec3ui*(): Vec3ui {.constructor,importcpp: "osg::Vec3ui::Vec3ui".}

proc constructVec3ui*(r: value_type, g: value_type, b: value_type): Vec3ui {.constructor,importcpp: "osg::Vec3ui::Vec3ui(@)".}

proc `==`*(this: Vec3ui, v: Vec3ui): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec3ui, v: Vec3ui): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec3ui, v: Vec3ui): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec3ui): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec3ui): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec3ui, r: value_type, g: value_type, b: value_type)  {.importcpp: "set".}

proc set*(this: var Vec3ui, rhs: Vec3ui)  {.importcpp: "set".}

proc `[]`*(this: var Vec3ui, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec3ui, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec3ui): value_type  {.importcpp: "x".}

proc y*(this: var Vec3ui): value_type  {.importcpp: "y".}

proc z*(this: var Vec3ui): value_type  {.importcpp: "z".}

proc x*(this: Vec3ui): value_type  {.importcpp: "x".}

proc y*(this: Vec3ui): value_type  {.importcpp: "y".}

proc z*(this: Vec3ui): value_type  {.importcpp: "z".}

proc r*(this: var Vec3ui): value_type  {.importcpp: "r".}

proc g*(this: var Vec3ui): value_type  {.importcpp: "g".}

proc b*(this: var Vec3ui): value_type  {.importcpp: "b".}

proc r*(this: Vec3ui): value_type  {.importcpp: "r".}

proc g*(this: Vec3ui): value_type  {.importcpp: "g".}

proc b*(this: Vec3ui): value_type  {.importcpp: "b".}

proc `*`*(this: Vec3ui, rhs: value_type): Vec3ui  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `/`*(this: Vec3ui, rhs: value_type): Vec3ui  {.importcpp: "# / #".}

proc `+`*(this: Vec3ui, rhs: value_type): Vec3ui  {.importcpp: "# + #".}

proc `-`*(this: Vec3ui, rhs: value_type): Vec3ui  {.importcpp: "# - #".}

proc `+`*(this: Vec3ui, rhs: Vec3ui): Vec3ui  {.importcpp: "# + #".}

proc `-`*(this: Vec3ui, rhs: Vec3ui): Vec3ui  {.importcpp: "# - #".}

proc `*`*(this: Vec3ui, rhs: Vec3ui): Vec3ui  {.importcpp: "# * #".}

{.pop.}  # header: "Vec3ui"
