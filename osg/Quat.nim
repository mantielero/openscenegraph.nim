import osg_types
  # File: Matrixf  was providing: osg::Matrixf
  # File: Vec3f  was providing: osg::Vec3f
  # File: Matrixd  was providing: osg::Matrixd
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec4f  was providing: osg::Vec4f
const
  num_components* = 4


type
  Value_type* {.header: "Quat", importcpp: "osg::Quat::value_type".} = cdouble


{.push header: "Quat".}

proc constructQuat*(): Quat {.constructor,importcpp: "osg::Quat::Quat".}

proc constructQuat*(x: value_type, y: value_type, z: value_type, w: value_type): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(v: Vec4f): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(v: Vec4d): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(angle: value_type, axis: Vec3f): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(angle: value_type, axis: Vec3d): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(angle1: value_type, axis1: Vec3f, angle2: value_type, axis2: Vec3f, angle3: value_type, axis3: Vec3f): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc constructQuat*(angle1: value_type, axis1: Vec3d, angle2: value_type, axis2: Vec3d, angle3: value_type, axis3: Vec3d): Quat {.constructor,importcpp: "osg::Quat::Quat(@)".}

proc `=`*(this: var Quat, v: Quat): Quat  {.importcpp: "# = #".}

proc `==`*(this: Quat, v: Quat): bool  {.importcpp: "# == #".}

proc `!=`*(this: Quat, v: Quat): bool  {.importcpp: "# != #".}

proc `<`*(this: Quat, v: Quat): bool  {.importcpp: "# < #".}

proc asVec4*(this: Quat): Vec4d  {.importcpp: "asVec4".}

proc asVec3*(this: Quat): Vec3d  {.importcpp: "asVec3".}

proc set*(this: var Quat, x: value_type, y: value_type, z: value_type, w: value_type)  {.importcpp: "set".}

proc set*(this: var Quat, v: Vec4f)  {.importcpp: "set".}

proc set*(this: var Quat, v: Vec4d)  {.importcpp: "set".}

proc set*(this: var Quat, matrix: Matrixf)  {.importcpp: "set".}

proc set*(this: var Quat, matrix: Matrixd)  {.importcpp: "set".}

proc get*(this: Quat, matrix: Matrixf)  {.importcpp: "get".}

proc get*(this: Quat, matrix: Matrixd)  {.importcpp: "get".}

proc `[]`*(this: var Quat, i: cint): value_type  {.importcpp: "# [] #".}

proc `[]`*(this: Quat, i: cint): value_type  {.importcpp: "# [] #".}

proc x*(this: var Quat): value_type  {.importcpp: "x".}

proc y*(this: var Quat): value_type  {.importcpp: "y".}

proc z*(this: var Quat): value_type  {.importcpp: "z".}

proc w*(this: var Quat): value_type  {.importcpp: "w".}

proc x*(this: Quat): value_type  {.importcpp: "x".}

proc y*(this: Quat): value_type  {.importcpp: "y".}

proc z*(this: Quat): value_type  {.importcpp: "z".}

proc w*(this: Quat): value_type  {.importcpp: "w".}

proc zeroRotation*(this: Quat): bool  {.importcpp: "zeroRotation".}
    ## return true if the Quat represents a zero rotation, and therefore can
    ## be ignored in computations.

proc `*`*(this: Quat, rhs: value_type): Quat  {.importcpp: "# * #".}
    ## Multiply by scalar

proc `*=`*(this: var Quat, rhs: value_type): Quat  {.importcpp: "# *= #".}
    ## Unary multiply by scalar

proc `*`*(this: Quat, rhs: Quat): Quat  {.importcpp: "# * #".}
    ## Binary multiply

proc `*=`*(this: var Quat, rhs: Quat): Quat  {.importcpp: "# *= #".}
    ## Unary multiply

proc `/`*(this: Quat, rhs: value_type): Quat  {.importcpp: "# / #".}
    ## Divide by scalar

proc `/=`*(this: var Quat, rhs: value_type): Quat  {.importcpp: "# /= #".}
    ## Unary divide by scalar

proc `/`*(this: Quat, denom: Quat): Quat  {.importcpp: "# / #".}
    ## Binary divide

proc `/=`*(this: var Quat, denom: Quat): Quat  {.importcpp: "# /= #".}
    ## Unary divide

proc `+`*(this: Quat, rhs: Quat): Quat  {.importcpp: "# + #".}
    ## Binary addition

proc `+=`*(this: var Quat, rhs: Quat): Quat  {.importcpp: "# += #".}
    ## Unary addition

proc `-`*(this: Quat, rhs: Quat): Quat  {.importcpp: "# - #".}
    ## Binary subtraction

proc `-=`*(this: var Quat, rhs: Quat): Quat  {.importcpp: "# -= #".}
    ## Unary subtraction

proc `-`*(this: Quat): Quat  {.importcpp: "# - #".}
    ## Negation operator - returns the negative of the quaternion. Basically
    ## just calls operator - () on the Vec4

proc length*(this: Quat): value_type  {.importcpp: "length".}
    ## Length of the quaternion = sqrt( vec . vec )

proc length2*(this: Quat): value_type  {.importcpp: "length2".}
    ## Length of the quaternion = vec . vec

proc conj*(this: Quat): Quat  {.importcpp: "conj".}
    ## Conjugate

proc inverse*(this: Quat): Quat  {.importcpp: "inverse".}
    ## Multiplicative inverse method: q^(-1) = q^*/(q.q^*)

proc makeRotate*(this: var Quat, angle: value_type, x: value_type, y: value_type, z: value_type)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Quat, angle: value_type, vec: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Quat, angle: value_type, vec: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Quat, angle1: value_type, axis1: Vec3f, angle2: value_type, axis2: Vec3f, angle3: value_type, axis3: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Quat, angle1: value_type, axis1: Vec3d, angle2: value_type, axis2: Vec3d, angle3: value_type, axis3: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Quat, vec1: Vec3f, vec2: Vec3f)  {.importcpp: "makeRotate".}
    ## Make a rotation Quat which will rotate vec1 to vec2. Generally take a
    ## dot product to get the angle between these and then use a cross
    ## product to get the rotation axis Watch out for the two special cases
    ## when the vectors are co-incident or opposite in direction.

proc makeRotate*(this: var Quat, vec1: Vec3d, vec2: Vec3d)  {.importcpp: "makeRotate".}
    ## Make a rotation Quat which will rotate vec1 to vec2. Generally take a
    ## dot product to get the angle between these and then use a cross
    ## product to get the rotation axis Watch out for the two special cases
    ## of when the vectors are co-incident or opposite in direction.

proc makeRotate_original*(this: var Quat, vec1: Vec3d, vec2: Vec3d)  {.importcpp: "makeRotate_original".}

proc getRotate*(this: Quat, angle: value_type, x: value_type, y: value_type, z: value_type)  {.importcpp: "getRotate".}
    ## Return the angle and vector components represented by the quaternion.

proc getRotate*(this: Quat, angle: value_type, vec: Vec3f)  {.importcpp: "getRotate".}
    ## Return the angle and vector represented by the quaternion.

proc getRotate*(this: Quat, angle: value_type, vec: Vec3d)  {.importcpp: "getRotate".}
    ## Return the angle and vector represented by the quaternion.

proc slerp*(this: var Quat, t: value_type, `from`: Quat, to: Quat)  {.importcpp: "slerp".}
    ## Spherical Linear Interpolation. As t goes from 0 to 1, the Quat object
    ## goes from "from" to "to".

proc `*`*(this: Quat, v: Vec3f): Vec3f  {.importcpp: "# * #".}
    ## Rotate a vector by this quaternion.

proc `*`*(this: Quat, v: Vec3d): Vec3d  {.importcpp: "# * #".}
    ## Rotate a vector by this quaternion.

{.pop.}  # header: "Quat"
