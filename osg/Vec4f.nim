const
  num_components* = 4


type
  Value_type* {.header: "Vec4f", importcpp: "osg::Vec4f::value_type".} = cfloat


{.push header: "Vec4f".}

proc constructVec4f*(): Vec4f {.constructor,importcpp: "osg::Vec4f::Vec4f".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4f*(x: value_type, y: value_type, z: value_type, w: value_type): Vec4f {.constructor,importcpp: "osg::Vec4f::Vec4f(@)".}

proc constructVec4f*(v3: Vec3f, w: value_type): Vec4f {.constructor,importcpp: "osg::Vec4f::Vec4f(@)".}

proc `==`*(this: Vec4f, v: Vec4f): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4f, v: Vec4f): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4f, v: Vec4f): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4f): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4f): ptr value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4f, x: value_type, y: value_type, z: value_type, w: value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4f, i: cuint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4f, i: cuint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4f): value_type  {.importcpp: "x".}

proc y*(this: var Vec4f): value_type  {.importcpp: "y".}

proc z*(this: var Vec4f): value_type  {.importcpp: "z".}

proc w*(this: var Vec4f): value_type  {.importcpp: "w".}

proc x*(this: Vec4f): value_type  {.importcpp: "x".}

proc y*(this: Vec4f): value_type  {.importcpp: "y".}

proc z*(this: Vec4f): value_type  {.importcpp: "z".}

proc w*(this: Vec4f): value_type  {.importcpp: "w".}

proc r*(this: var Vec4f): value_type  {.importcpp: "r".}

proc g*(this: var Vec4f): value_type  {.importcpp: "g".}

proc b*(this: var Vec4f): value_type  {.importcpp: "b".}

proc a*(this: var Vec4f): value_type  {.importcpp: "a".}

proc r*(this: Vec4f): value_type  {.importcpp: "r".}

proc g*(this: Vec4f): value_type  {.importcpp: "g".}

proc b*(this: Vec4f): value_type  {.importcpp: "b".}

proc a*(this: Vec4f): value_type  {.importcpp: "a".}

proc asABGR*(this: Vec4f): cuint  {.importcpp: "asABGR".}

proc asRGBA*(this: Vec4f): cuint  {.importcpp: "asRGBA".}

proc valid*(this: Vec4f): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec4f): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec4f, rhs: Vec4f): value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `*`*(this: Vec4f, rhs: value_type): Vec4f  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4f, rhs: value_type): Vec4f  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4f, rhs: value_type): Vec4f  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4f, rhs: value_type): Vec4f  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec4f, rhs: Vec4f): Vec4f  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4f, rhs: Vec4f): Vec4f  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4f, rhs: Vec4f): Vec4f  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4f, rhs: Vec4f): Vec4f  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec4f): Vec4f  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec4f.

proc length*(this: Vec4f): value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec4f): value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec4f): value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector.

{.pop.}  # header: "Vec4f"
