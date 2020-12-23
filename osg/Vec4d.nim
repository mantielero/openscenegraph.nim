import Vec3d # Provides Vec3d
import Vec4f # Provides Vec4f


type
  Value_type* {.header: "Vec4d", importcpp: "osg::Vec4d::value_type".} = cdouble
{.push header: "Vec4d".}


# Constructors and methods
proc constructVec4d*(): Vec4d {.constructor,importcpp: "Vec4d".}
    ## Constructor that sets all components of the vector to zero

proc constructVec4d*(x: Value_type, y: Value_type, z: Value_type, w: Value_type): Vec4d {.constructor,importcpp: "Vec4d(@)".}

proc constructVec4d*(v3: Vec3d, w: Value_type): Vec4d {.constructor,importcpp: "Vec4d(@)".}

proc constructVec4d*(vec: Vec4f): Vec4d {.constructor,importcpp: "Vec4d(@)".}

proc `==`*(this: Vec4d, v: Vec4d): bool  {.importcpp: "# == #".}

proc `!=`*(this: Vec4d, v: Vec4d): bool  {.importcpp: "# != #".}

proc `<`*(this: Vec4d, v: Vec4d): bool  {.importcpp: "# < #".}

proc `ptr`*(this: var Vec4d): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Vec4d): ptr Value_type   {.importcpp: "ptr".}

proc set*(this: var Vec4d, x: Value_type, y: Value_type, z: Value_type, w: Value_type)  {.importcpp: "set".}

proc `[]`*(this: var Vec4d, i: cuint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Vec4d, i: cuint): Value_type  {.importcpp: "# [] #".}

proc x*(this: var Vec4d): Value_type  {.importcpp: "x".}

proc y*(this: var Vec4d): Value_type  {.importcpp: "y".}

proc z*(this: var Vec4d): Value_type  {.importcpp: "z".}

proc w*(this: var Vec4d): Value_type  {.importcpp: "w".}

proc x*(this: Vec4d): Value_type  {.importcpp: "x".}

proc y*(this: Vec4d): Value_type  {.importcpp: "y".}

proc z*(this: Vec4d): Value_type  {.importcpp: "z".}

proc w*(this: Vec4d): Value_type  {.importcpp: "w".}

proc r*(this: var Vec4d): Value_type  {.importcpp: "r".}

proc g*(this: var Vec4d): Value_type  {.importcpp: "g".}

proc b*(this: var Vec4d): Value_type  {.importcpp: "b".}

proc a*(this: var Vec4d): Value_type  {.importcpp: "a".}

proc r*(this: Vec4d): Value_type  {.importcpp: "r".}

proc g*(this: Vec4d): Value_type  {.importcpp: "g".}

proc b*(this: Vec4d): Value_type  {.importcpp: "b".}

proc a*(this: Vec4d): Value_type  {.importcpp: "a".}

proc asABGR*(this: Vec4d): cuint  {.importcpp: "asABGR".}

proc asRGBA*(this: Vec4d): cuint  {.importcpp: "asRGBA".}

proc valid*(this: Vec4d): bool  {.importcpp: "valid".}
    ## Returns true if all components have values that are not NaN.

proc isNaN*(this: Vec4d): bool  {.importcpp: "isNaN".}
    ## Returns true if at least one component has value NaN.

proc `*`*(this: Vec4d, rhs: Vec4d): Value_type  {.importcpp: "# * #".}
    ## Dot product.

proc `*`*(this: Vec4d, rhs: Value_type): Vec4d  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Vec4d, rhs: Value_type): Vec4d  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Vec4d, rhs: Value_type): Vec4d  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Vec4d, rhs: Value_type): Vec4d  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Vec4d, rhs: Vec4d): Vec4d  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Vec4d, rhs: Vec4d): Vec4d  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc `-`*(this: Vec4d, rhs: Vec4d): Vec4d  {.importcpp: "# - #".}
    ## Binary vector subtract.

proc `-=`*(this: var Vec4d, rhs: Vec4d): Vec4d  {.importcpp: "# -= #".}
    ## Unary vector subtract.

proc `-`*(this: Vec4d): Vec4d  {.importcpp: "# - #".}
    ## Negation operator. Returns the negative of the Vec4d.

proc length*(this: Vec4d): Value_type  {.importcpp: "length".}
    ## Length of the vector = sqrt( vec . vec )

proc length2*(this: Vec4d): Value_type  {.importcpp: "length2".}
    ## Length squared of the vector = vec . vec

proc normalize*(this: var Vec4d): Value_type  {.importcpp: "normalize".}
    ## Normalize the vector so that it has length unity. Returns the previous
    ## length of the vector.

{.pop.} # header: "Vec4d
