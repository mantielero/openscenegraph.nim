import Object  # provides: osg::Object
import Vec3f  # provides: osg::Vec3f
import CopyOp  # provides: osg::CopyOp
import Matrixd  # provides: osg::Matrixd
import Vec4d  # provides: osg::Vec4d
import Vec3d  # provides: osg::Vec3d
import Quat  # provides: osg::Quat
import Vec4f  # provides: osg::Vec4f
type
  Value_type* {.header: "Matrixf", importcpp: "osg::Matrixf::value_type".} = cfloat
  Other_value_type* {.header: "Matrixf", importcpp: "osg::Matrixf::other_value_type".} = cdouble
  RefMatrixf* {.header: "Matrixf", importcpp: "osg::RefMatrixf", byref.} = object #of class osg::Object



{.push header: "Matrixf".}

proc constructMatrixf*(): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf".}

proc constructMatrixf*(mat: Matrixf): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructMatrixf*(mat: Matrixd): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructMatrixf*(`ptr`: float *const): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructMatrixf*(`ptr`: double *const): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructMatrixf*(quat: Quat): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructMatrixf*(a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a23: Value_type, a30: Value_type, a31: Value_type, a32: Value_type, a33: Value_type): Matrixf {.constructor,importcpp: "osg::Matrixf::Matrixf(@)".}

proc constructRefMatrixf*(): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf".}

proc constructRefMatrixf*(other: Matrixf): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf(@)".}

proc constructRefMatrixf*(other: Matrixd): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf(@)".}

proc constructRefMatrixf*(other: Refmatrixf): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf(@)".}

proc constructRefMatrixf*(def: Value_type *const): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf(@)".}

proc constructRefMatrixf*(a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a23: Value_type, a30: Value_type, a31: Value_type, a32: Value_type, a33: Value_type): RefMatrixf {.constructor,importcpp: "osg::RefMatrixf::RefMatrixf(@)".}

proc compare*(this: Matrixf, m: Matrixf): cint  {.importcpp: "compare".}

proc `<`*(this: Matrixf, m: Matrixf): bool  {.importcpp: "# < #".}

proc `==`*(this: Matrixf, m: Matrixf): bool  {.importcpp: "# == #".}

proc `!=`*(this: Matrixf, m: Matrixf): bool  {.importcpp: "# != #".}

proc `()`*(this: var Matrixf, row: cint, col: cint): Value_type  {.importcpp: "# () #".}

proc `()`*(this: Matrixf, row: cint, col: cint): Value_type  {.importcpp: "# () #".}

proc valid*(this: Matrixf): bool  {.importcpp: "valid".}

proc isNaN*(this: Matrixf): bool  {.importcpp: "isNaN".}

proc `=`*(this: var Matrixf, rhs: Matrixf): Matrixf  {.importcpp: "# = #".}

proc `=`*(this: var Matrixf, other: Matrixd): Matrixf  {.importcpp: "# = #".}

proc set*(this: var Matrixf, rhs: Matrixf)  {.importcpp: "set".}

proc set*(this: var Matrixf, rhs: Matrixd)  {.importcpp: "set".}

proc set*(this: var Matrixf, `ptr`: float *const)  {.importcpp: "set".}

proc set*(this: var Matrixf, `ptr`: double *const)  {.importcpp: "set".}

proc set*(this: var Matrixf, a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a23: Value_type, a30: Value_type, a31: Value_type, a32: Value_type, a33: Value_type)  {.importcpp: "set".}

proc `ptr`*(this: var Matrixf): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Matrixf): ptr Value_type   {.importcpp: "ptr".}

proc isIdentity*(this: Matrixf): bool  {.importcpp: "isIdentity".}

proc makeIdentity*(this: var Matrixf)  {.importcpp: "makeIdentity".}

proc makeScale*(this: var Matrixf, Vec3f)  {.importcpp: "makeScale".}

proc makeScale*(this: var Matrixf, Vec3d)  {.importcpp: "makeScale".}

proc makeScale*(this: var Matrixf, Value_type, Value_type, Value_type)  {.importcpp: "makeScale".}

proc makeTranslate*(this: var Matrixf, Vec3f)  {.importcpp: "makeTranslate".}

proc makeTranslate*(this: var Matrixf, Vec3d)  {.importcpp: "makeTranslate".}

proc makeTranslate*(this: var Matrixf, Value_type, Value_type, Value_type)  {.importcpp: "makeTranslate".}

proc makeRotate*(this: var Matrixf, `from`: Vec3f, to: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, `from`: Vec3d, to: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, angle: Value_type, axis: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, angle: Value_type, axis: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, angle: Value_type, x: Value_type, y: Value_type, z: Value_type)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, Quat)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3f, angle2: Value_type, axis2: Vec3f, angle3: Value_type, axis3: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3d, angle2: Value_type, axis2: Vec3d, angle3: Value_type, axis3: Vec3d)  {.importcpp: "makeRotate".}

proc decompose*(this: Matrixf, translation: Vec3f, rotation: Quat, scale: Vec3f, so: Quat)  {.importcpp: "decompose".}
    ## decompose the matrix into translation, rotation, scale and scale
    ## orientation.

proc decompose*(this: Matrixf, translation: Vec3d, rotation: Quat, scale: Vec3d, so: Quat)  {.importcpp: "decompose".}
    ## decompose the matrix into translation, rotation, scale and scale
    ## orientation.

proc makeOrtho*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makeOrtho".}
    ## Set to an orthographic projection. See glOrtho for further details.

proc getOrtho*(this: Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getOrtho".}
    ## Get the orthographic settings of the orthographic projection matrix.
    ## Note, if matrix is not an orthographic matrix then invalid values will
    ## be returned.

proc getOrtho*(this: Matrixf, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getOrtho".}
    ## float version of getOrtho(..)

proc makeOrtho2D*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble)  {.importcpp: "makeOrtho2D".}
    ## Set to a 2D orthographic projection. See glOrtho2D for further
    ## details.

proc makeFrustum*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makeFrustum".}
    ## Set to a perspective projection. See glFrustum for further details.

proc getFrustum*(this: Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getFrustum".}
    ## Get the frustum settings of a perspective projection matrix. Note, if
    ## matrix is not a perspective matrix then invalid values will be
    ## returned.

proc getFrustum*(this: Matrixf, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getFrustum".}
    ## float version of getFrustum(..)

proc makePerspective*(this: var Matrixf, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makePerspective".}
    ## Set to a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc getPerspective*(this: Matrixf, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getPerspective".}
    ## Get the frustum settings of a symmetric perspective projection matrix.
    ## Return false if matrix is not a perspective matrix, where parameter
    ## values are undefined. Note, if matrix is not a symmetric perspective
    ## matrix then the shear will be lost. Asymmetric matrices occur when
    ## stereo, power walls, caves and reality center display are used. In
    ## these configuration one should use the AsFrustum method instead.

proc getPerspective*(this: Matrixf, fovy: cfloat, aspectRatio: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getPerspective".}
    ## float version of getPerspective(..)

proc makeLookAt*(this: var Matrixf, eye: Vec3d, center: Vec3d, up: Vec3d)  {.importcpp: "makeLookAt".}
    ## Set the position and orientation to be a view matrix, using the same
    ## convention as gluLookAt.

proc getLookAt*(this: Matrixf, eye: Vec3f, center: Vec3f, up: Vec3f, lookDistance: Value_type)  {.importcpp: "getLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc getLookAt*(this: Matrixf, eye: Vec3d, center: Vec3d, up: Vec3d, lookDistance: Value_type)  {.importcpp: "getLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc invert*(this: var Matrixf, rhs: Matrixf): bool  {.importcpp: "invert".}
    ## invert the matrix rhs, automatically select invert_4x3 or invert_4x4.

proc invert_4x3*(this: var Matrixf, rhs: Matrixf): bool  {.importcpp: "invert_4x3".}
    ## 4x3 matrix invert, not right hand column is assumed to be 0,0,0,1.

proc invert_4x4*(this: var Matrixf, rhs: Matrixf): bool  {.importcpp: "invert_4x4".}
    ## full 4x4 matrix invert.

proc transpose*(this: var Matrixf, rhs: Matrixf): bool  {.importcpp: "transpose".}
    ## transpose matrix *

proc transpose3x3*(this: var Matrixf, rhs: Matrixf): bool  {.importcpp: "transpose3x3".}
    ## transpose orthogonal part of the matrix *

proc orthoNormalize*(this: var Matrixf, rhs: Matrixf)  {.importcpp: "orthoNormalize".}
    ## ortho-normalize the 3x3 rotation & scale matrix

proc identity*(this: var Matrixf): Matrixf  {.importcpp: "identity".}

proc scale*(this: var Matrixf, sv: Vec3f): Matrixf  {.importcpp: "scale".}

proc scale*(this: var Matrixf, sv: Vec3d): Matrixf  {.importcpp: "scale".}

proc scale*(this: var Matrixf, sx: Value_type, sy: Value_type, sz: Value_type): Matrixf  {.importcpp: "scale".}

proc translate*(this: var Matrixf, dv: Vec3f): Matrixf  {.importcpp: "translate".}

proc translate*(this: var Matrixf, dv: Vec3d): Matrixf  {.importcpp: "translate".}

proc translate*(this: var Matrixf, x: Value_type, y: Value_type, z: Value_type): Matrixf  {.importcpp: "translate".}

proc rotate*(this: var Matrixf, `from`: Vec3f, to: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, `from`: Vec3d, to: Vec3d): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, x: Value_type, y: Value_type, z: Value_type): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, axis: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, axis: Vec3d): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3f, angle2: Value_type, axis2: Vec3f, angle3: Value_type, axis3: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3d, angle2: Value_type, axis2: Vec3d, angle3: Value_type, axis3: Vec3d): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, quat: Quat): Matrixf  {.importcpp: "rotate".}

proc inverse*(this: var Matrixf, matrix: Matrixf): Matrixf  {.importcpp: "inverse".}

proc orthoNormal*(this: var Matrixf, matrix: Matrixf): Matrixf  {.importcpp: "orthoNormal".}

proc ortho*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "ortho".}
    ## Create an orthographic projection matrix. See glOrtho for further
    ## details.

proc ortho2D*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble): Matrixf  {.importcpp: "ortho2D".}
    ## Create a 2D orthographic projection. See glOrtho for further details.

proc frustum*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "frustum".}
    ## Create a perspective projection. See glFrustum for further details.

proc perspective*(this: var Matrixf, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "perspective".}
    ## Create a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc lookAt*(this: var Matrixf, eye: Vec3f, center: Vec3f, up: Vec3f): Matrixf  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc lookAt*(this: var Matrixf, eye: Vec3d, center: Vec3d, up: Vec3d): Matrixf  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc preMult*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "preMult".}

proc preMult*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "preMult".}

proc postMult*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "postMult".}

proc postMult*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "postMult".}

proc `*`*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "# * #".}

proc preMult*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "preMult".}

proc preMult*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "preMult".}

proc postMult*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "postMult".}

proc postMult*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "postMult".}

proc `*`*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "# * #".}

proc set*(this: var Matrixf, q: Quat)  {.importcpp: "set".}

proc get*(this: Matrixf, q: Quat)  {.importcpp: "get".}

proc setRotate*(this: var Matrixf, q: Quat)  {.importcpp: "setRotate".}

proc getRotate*(this: Matrixf): Quat  {.importcpp: "getRotate".}
    ## Get the matrix rotation as a Quat. Note that this function assumes a
    ## non-scaled matrix and will return incorrect results for scaled
    ## matrixces. Consider decompose() instead.

proc setTrans*(this: var Matrixf, tx: Value_type, ty: Value_type, tz: Value_type)  {.importcpp: "setTrans".}

proc setTrans*(this: var Matrixf, v: Vec3f)  {.importcpp: "setTrans".}

proc setTrans*(this: var Matrixf, v: Vec3d)  {.importcpp: "setTrans".}

proc getTrans*(this: Matrixf): Vec3d  {.importcpp: "getTrans".}

proc getScale*(this: Matrixf): Vec3d  {.importcpp: "getScale".}

proc transform3x3*(this: var Matrixf, v: Vec3f, m: Matrixf): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixf, v: Vec3d, m: Matrixf): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixf, m: Matrixf, v: Vec3f): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc transform3x3*(this: var Matrixf, m: Matrixf, v: Vec3d): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc mult*(this: var Matrixf, Matrixf, Matrixf)  {.importcpp: "mult".}

proc preMult*(this: var Matrixf, Matrixf)  {.importcpp: "preMult".}

proc postMult*(this: var Matrixf, Matrixf)  {.importcpp: "postMult".}

proc preMultTranslate*(this: var Matrixf, v: Vec3d)  {.importcpp: "preMultTranslate".}
    ## Optimized version of preMult(translate(v));

proc preMultTranslate*(this: var Matrixf, v: Vec3f)  {.importcpp: "preMultTranslate".}

proc postMultTranslate*(this: var Matrixf, v: Vec3d)  {.importcpp: "postMultTranslate".}
    ## Optimized version of postMult(translate(v));

proc postMultTranslate*(this: var Matrixf, v: Vec3f)  {.importcpp: "postMultTranslate".}

proc preMultScale*(this: var Matrixf, v: Vec3d)  {.importcpp: "preMultScale".}
    ## Optimized version of preMult(scale(v));

proc preMultScale*(this: var Matrixf, v: Vec3f)  {.importcpp: "preMultScale".}

proc postMultScale*(this: var Matrixf, v: Vec3d)  {.importcpp: "postMultScale".}
    ## Optimized version of postMult(scale(v));

proc postMultScale*(this: var Matrixf, v: Vec3f)  {.importcpp: "postMultScale".}

proc preMultRotate*(this: var Matrixf, q: Quat)  {.importcpp: "preMultRotate".}
    ## Optimized version of preMult(rotate(q));

proc postMultRotate*(this: var Matrixf, q: Quat)  {.importcpp: "postMultRotate".}
    ## Optimized version of postMult(rotate(q));

proc `*=`*(this: var Matrixf, other: Matrixf)  {.importcpp: "# *= #".}

proc `*`*(this: Matrixf, m: Matrixf): Matrixf  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, rhs: Value_type): Matrixf  {.importcpp: "# * #".}
    ## Multiply by scalar.

proc `*=`*(this: var Matrixf, rhs: Value_type): Matrixf  {.importcpp: "# *= #".}
    ## Unary multiply by scalar.

proc `/`*(this: Matrixf, rhs: Value_type): Matrixf  {.importcpp: "# / #".}
    ## Divide by scalar.

proc `/=`*(this: var Matrixf, rhs: Value_type): Matrixf  {.importcpp: "# /= #".}
    ## Unary divide by scalar.

proc `+`*(this: Matrixf, rhs: Matrixf): Matrixf  {.importcpp: "# + #".}
    ## Binary vector add.

proc `+=`*(this: var Matrixf, rhs: Matrixf): Matrixf  {.importcpp: "# += #".}
    ## Unary vector add. Slightly more efficient because no temporary
    ## intermediate object.

proc cloneType*(this: RefMatrixf): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: RefMatrixf, Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: RefMatrixf, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: RefMatrixf): cstring  {.importcpp: "libraryName".}

proc className*(this: RefMatrixf): cstring  {.importcpp: "className".}

proc identity*(this: var Matrixf): Matrixf  {.importcpp: "identity".}

proc scale*(this: var Matrixf, sx: Value_type, sy: Value_type, sz: Value_type): Matrixf  {.importcpp: "scale".}

proc scale*(this: var Matrixf, v: Vec3f): Matrixf  {.importcpp: "scale".}

proc scale*(this: var Matrixf, v: Vec3d): Matrixf  {.importcpp: "scale".}

proc translate*(this: var Matrixf, tx: Value_type, ty: Value_type, tz: Value_type): Matrixf  {.importcpp: "translate".}

proc translate*(this: var Matrixf, v: Vec3f): Matrixf  {.importcpp: "translate".}

proc translate*(this: var Matrixf, v: Vec3d): Matrixf  {.importcpp: "translate".}

proc rotate*(this: var Matrixf, q: Quat): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, x: Value_type, y: Value_type, z: Value_type): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, axis: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle: Value_type, axis: Vec3d): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3f, angle2: Value_type, axis2: Vec3f, angle3: Value_type, axis3: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, angle1: Value_type, axis1: Vec3d, angle2: Value_type, axis2: Vec3d, angle3: Value_type, axis3: Vec3d): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, `from`: Vec3f, to: Vec3f): Matrixf  {.importcpp: "rotate".}

proc rotate*(this: var Matrixf, `from`: Vec3d, to: Vec3d): Matrixf  {.importcpp: "rotate".}

proc inverse*(this: var Matrixf, matrix: Matrixf): Matrixf  {.importcpp: "inverse".}

proc orthoNormal*(this: var Matrixf, matrix: Matrixf): Matrixf  {.importcpp: "orthoNormal".}

proc ortho*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "ortho".}
    ## Create an orthographic projection matrix. See glOrtho for further
    ## details.

proc ortho2D*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble): Matrixf  {.importcpp: "ortho2D".}
    ## Create a 2D orthographic projection. See glOrtho for further details.

proc frustum*(this: var Matrixf, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "frustum".}
    ## Create a perspective projection. See glFrustum for further details.

proc perspective*(this: var Matrixf, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): Matrixf  {.importcpp: "perspective".}
    ## Create a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc lookAt*(this: var Matrixf, eye: Vec3f, center: Vec3f, up: Vec3f): Matrixf  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc lookAt*(this: var Matrixf, eye: Vec3d, center: Vec3d, up: Vec3d): Matrixf  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc postMult*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "postMult".}

proc postMult*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "postMult".}

proc preMult*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "preMult".}

proc preMult*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "preMult".}

proc postMult*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "postMult".}

proc postMult*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "postMult".}

proc preMult*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "preMult".}

proc preMult*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "preMult".}

proc transform3x3*(this: var Matrixf, v: Vec3f, m: Matrixf): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixf, v: Vec3d, m: Matrixf): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixf, m: Matrixf, v: Vec3f): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc transform3x3*(this: var Matrixf, m: Matrixf, v: Vec3d): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc preMultTranslate*(this: var Matrixf, v: Vec3d)  {.importcpp: "preMultTranslate".}
    ## Optimized version of preMult(translate(v));

proc preMultTranslate*(this: var Matrixf, v: Vec3f)  {.importcpp: "preMultTranslate".}

proc postMultTranslate*(this: var Matrixf, v: Vec3d)  {.importcpp: "postMultTranslate".}
    ## Optimized version of postMult(translate(v));

proc postMultTranslate*(this: var Matrixf, v: Vec3f)  {.importcpp: "postMultTranslate".}

proc preMultScale*(this: var Matrixf, v: Vec3d)  {.importcpp: "preMultScale".}
    ## Optimized version of preMult(scale(v));

proc preMultScale*(this: var Matrixf, v: Vec3f)  {.importcpp: "preMultScale".}

proc postMultScale*(this: var Matrixf, v: Vec3d)  {.importcpp: "postMultScale".}
    ## Optimized version of postMult(scale(v));

proc postMultScale*(this: var Matrixf, v: Vec3f)  {.importcpp: "postMultScale".}

proc preMultRotate*(this: var Matrixf, q: Quat)  {.importcpp: "preMultRotate".}
    ## Optimized version of preMult(rotate(q));

proc postMultRotate*(this: var Matrixf, q: Quat)  {.importcpp: "postMultRotate".}
    ## Optimized version of postMult(rotate(q));

proc `*`*(this: Matrixf, v: Vec3f): Vec3f  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, v: Vec3d): Vec3d  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, v: Vec4f): Vec4f  {.importcpp: "# * #".}

proc `*`*(this: Matrixf, v: Vec4d): Vec4d  {.importcpp: "# * #".}

{.pop.}  # header: "Matrixf"
