import osg_types
  # File: Object  was providing: osg::Object
  # File: Matrixf  was providing: osg::Matrixf
  # File: Vec3f  was providing: osg::Vec3f
  # File: CopyOp  was providing: osg::CopyOp
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Quat  was providing: osg::Quat
  # File: Vec4f  was providing: osg::Vec4f
type
  Value_type* {.header: "Matrixd", importcpp: "osg::Matrixd::value_type".} = cdouble
  Other_value_type* {.header: "Matrixd", importcpp: "osg::Matrixd::other_value_type".} = cfloat


{.push header: "Matrixd".}

proc constructMatrixd*(): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd".}

proc constructMatrixd*(mat: Matrixd): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructMatrixd*(mat: Matrixf): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructMatrixd*(`ptr`: float *const): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructMatrixd*(`ptr`: double *const): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructMatrixd*(quat: Quat): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructMatrixd*(a00: value_type, a01: value_type, a02: value_type, a03: value_type, a10: value_type, a11: value_type, a12: value_type, a13: value_type, a20: value_type, a21: value_type, a22: value_type, a23: value_type, a30: value_type, a31: value_type, a32: value_type, a33: value_type): Matrixd {.constructor,importcpp: "osg::Matrixd::Matrixd(@)".}

proc constructRefMatrixd*(): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd".}

proc constructRefMatrixd*(other: Matrixd): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd(@)".}

proc constructRefMatrixd*(other: Matrixf): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd(@)".}

proc constructRefMatrixd*(other: RefMatrixd): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd(@)".}

proc constructRefMatrixd*(def: value_type *const): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd(@)".}

proc constructRefMatrixd*(a00: value_type, a01: value_type, a02: value_type, a03: value_type, a10: value_type, a11: value_type, a12: value_type, a13: value_type, a20: value_type, a21: value_type, a22: value_type, a23: value_type, a30: value_type, a31: value_type, a32: value_type, a33: value_type): RefMatrixd {.constructor,importcpp: "osg::RefMatrixd::RefMatrixd(@)".}

proc compare*(this: Matrixd, m: Matrixd): cint  {.importcpp: "compare".}

proc `<`*(this: Matrixd, m: Matrixd): bool  {.importcpp: "# < #".}

proc `==`*(this: Matrixd, m: Matrixd): bool  {.importcpp: "# == #".}

proc `!=`*(this: Matrixd, m: Matrixd): bool  {.importcpp: "# != #".}

proc `()`*(this: var Matrixd, row: cint, col: cint): value_type  {.importcpp: "# () #".}

proc `()`*(this: Matrixd, row: cint, col: cint): value_type  {.importcpp: "# () #".}

proc valid*(this: Matrixd): bool  {.importcpp: "valid".}

proc isNaN*(this: Matrixd): bool  {.importcpp: "isNaN".}

proc `=`*(this: var Matrixd, rhs: Matrixd): Matrixd  {.importcpp: "# = #".}

proc `=`*(this: var Matrixd, other: Matrixf): Matrixd  {.importcpp: "# = #".}

proc set*(this: var Matrixd, rhs: Matrixd)  {.importcpp: "set".}

proc set*(this: var Matrixd, rhs: Matrixf)  {.importcpp: "set".}

proc set*(this: var Matrixd, `ptr`: float *const)  {.importcpp: "set".}

proc set*(this: var Matrixd, `ptr`: double *const)  {.importcpp: "set".}

proc set*(this: var Matrixd, a00: value_type, a01: value_type, a02: value_type, a03: value_type, a10: value_type, a11: value_type, a12: value_type, a13: value_type, a20: value_type, a21: value_type, a22: value_type, a23: value_type, a30: value_type, a31: value_type, a32: value_type, a33: value_type)  {.importcpp: "set".}

proc `ptr`*(this: var Matrixd): ptr value_type   {.importcpp: "ptr".}

proc `ptr`*(this: Matrixd): ptr value_type   {.importcpp: "ptr".}

proc isIdentity*(this: Matrixd): bool  {.importcpp: "isIdentity".}

proc makeIdentity*(this: var Matrixd)  {.importcpp: "makeIdentity".}

proc makeScale*(this: var Matrixd, a00: Vec3f)  {.importcpp: "makeScale".}

proc makeScale*(this: var Matrixd, a00: Vec3d)  {.importcpp: "makeScale".}

proc makeScale*(this: var Matrixd, a00: value_type, a01: value_type, a02: value_type)  {.importcpp: "makeScale".}

proc makeTranslate*(this: var Matrixd, a00: Vec3f)  {.importcpp: "makeTranslate".}

proc makeTranslate*(this: var Matrixd, a00: Vec3d)  {.importcpp: "makeTranslate".}

proc makeTranslate*(this: var Matrixd, a00: value_type, a01: value_type, a02: value_type)  {.importcpp: "makeTranslate".}

proc makeRotate*(this: var Matrixd, `from`: Vec3f, to: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, `from`: Vec3d, to: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, angle: value_type, axis: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, angle: value_type, axis: Vec3d)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, angle: value_type, x: value_type, y: value_type, z: value_type)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, a00: Quat)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, angle1: value_type, axis1: Vec3f, angle2: value_type, axis2: Vec3f, angle3: value_type, axis3: Vec3f)  {.importcpp: "makeRotate".}

proc makeRotate*(this: var Matrixd, angle1: value_type, axis1: Vec3d, angle2: value_type, axis2: Vec3d, angle3: value_type, axis3: Vec3d)  {.importcpp: "makeRotate".}

proc decompose*(this: Matrixd, translation: Vec3f, rotation: Quat, scale: Vec3f, so: Quat)  {.importcpp: "decompose".}
    ## decompose the matrix into translation, rotation, scale and scale
    ## orientation.

proc decompose*(this: Matrixd, translation: Vec3d, rotation: Quat, scale: Vec3d, so: Quat)  {.importcpp: "decompose".}
    ## decompose the matrix into translation, rotation, scale and scale
    ## orientation.

proc makeOrtho*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makeOrtho".}
    ## Set to an orthographic projection. See glOrtho for further details.

proc getOrtho*(this: Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getOrtho".}
    ## Get the orthographic settings of the orthographic projection matrix.
    ## Note, if matrix is not an orthographic matrix then invalid values will
    ## be returned.

proc getOrtho*(this: Matrixd, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getOrtho".}
    ## float version of getOrtho(..)

proc makeOrtho2D*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble)  {.importcpp: "makeOrtho2D".}
    ## Set to a 2D orthographic projection. See glOrtho2D for further
    ## details.

proc makeFrustum*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makeFrustum".}
    ## Set to a perspective projection. See glFrustum for further details.

proc getFrustum*(this: Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getFrustum".}
    ## Get the frustum settings of a perspective projection matrix. Note, if
    ## matrix is not a perspective matrix then invalid values will be
    ## returned.

proc getFrustum*(this: Matrixd, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getFrustum".}
    ## float version of getFrustum(..)

proc makePerspective*(this: var Matrixd, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "makePerspective".}
    ## Set to a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc getPerspective*(this: Matrixd, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getPerspective".}
    ## Get the frustum settings of a symmetric perspective projection matrix.
    ## Return false if matrix is not a perspective matrix, where parameter
    ## values are undefined. Note, if matrix is not a symmetric perspective
    ## matrix then the shear will be lost. Asymmetric matrices occur when
    ## stereo, power walls, caves and reality center display are used. In
    ## these configuration one should use the AsFrustum method instead.

proc getPerspective*(this: Matrixd, fovy: cfloat, aspectRatio: cfloat, zNear: cfloat, zFar: cfloat): bool  {.importcpp: "getPerspective".}
    ## float version of getPerspective(..)

proc makeLookAt*(this: var Matrixd, eye: Vec3d, center: Vec3d, up: Vec3d)  {.importcpp: "makeLookAt".}
    ## Set the position and orientation to be a view matrix, using the same
    ## convention as gluLookAt.

proc getLookAt*(this: Matrixd, eye: Vec3f, center: Vec3f, up: Vec3f, lookDistance: value_type)  {.importcpp: "getLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc getLookAt*(this: Matrixd, eye: Vec3d, center: Vec3d, up: Vec3d, lookDistance: value_type)  {.importcpp: "getLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc invert*(this: var Matrixd, rhs: Matrixd): bool  {.importcpp: "invert".}
    ## invert the matrix rhs, automatically select invert_4x3 or invert_4x4.

proc invert_4x3*(this: var Matrixd, rhs: Matrixd): bool  {.importcpp: "invert_4x3".}
    ## 4x3 matrix invert, not right hand column is assumed to be 0,0,0,1.

proc invert_4x4*(this: var Matrixd, rhs: Matrixd): bool  {.importcpp: "invert_4x4".}
    ## full 4x4 matrix invert.

proc transpose*(this: var Matrixd, rhs: Matrixd): bool  {.importcpp: "transpose".}
    ## transpose a matrix

proc transpose3x3*(this: var Matrixd, rhs: Matrixd): bool  {.importcpp: "transpose3x3".}
    ## transpose orthogonal part of the matrix *

proc orthoNormalize*(this: var Matrixd, rhs: Matrixd)  {.importcpp: "orthoNormalize".}
    ## ortho-normalize the 3x3 rotation & scale matrix

proc identity*(this: var Matrixd): Matrixd  {.importcpp: "identity".}

proc scale*(this: var Matrixd, sv: Vec3f): Matrixd  {.importcpp: "scale".}

proc scale*(this: var Matrixd, sv: Vec3d): Matrixd  {.importcpp: "scale".}

proc scale*(this: var Matrixd, sx: value_type, sy: value_type, sz: value_type): Matrixd  {.importcpp: "scale".}

proc translate*(this: var Matrixd, dv: Vec3f): Matrixd  {.importcpp: "translate".}

proc translate*(this: var Matrixd, dv: Vec3d): Matrixd  {.importcpp: "translate".}

proc translate*(this: var Matrixd, x: value_type, y: value_type, z: value_type): Matrixd  {.importcpp: "translate".}

proc rotate*(this: var Matrixd, `from`: Vec3f, to: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, `from`: Vec3d, to: Vec3d): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, x: value_type, y: value_type, z: value_type): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, axis: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, axis: Vec3d): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle1: value_type, axis1: Vec3f, angle2: value_type, axis2: Vec3f, angle3: value_type, axis3: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle1: value_type, axis1: Vec3d, angle2: value_type, axis2: Vec3d, angle3: value_type, axis3: Vec3d): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, quat: Quat): Matrixd  {.importcpp: "rotate".}

proc inverse*(this: var Matrixd, matrix: Matrixd): Matrixd  {.importcpp: "inverse".}

proc orthoNormal*(this: var Matrixd, matrix: Matrixd): Matrixd  {.importcpp: "orthoNormal".}

proc ortho*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "ortho".}
    ## Create an orthographic projection matrix. See glOrtho for further
    ## details.

proc ortho2D*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble): Matrixd  {.importcpp: "ortho2D".}
    ## Create a 2D orthographic projection. See glOrtho for further details.

proc frustum*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "frustum".}
    ## Create a perspective projection. See glFrustum for further details.

proc perspective*(this: var Matrixd, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "perspective".}
    ## Create a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc lookAt*(this: var Matrixd, eye: Vec3f, center: Vec3f, up: Vec3f): Matrixd  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc lookAt*(this: var Matrixd, eye: Vec3d, center: Vec3d, up: Vec3d): Matrixd  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc preMult*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "preMult".}

proc preMult*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "preMult".}

proc postMult*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "postMult".}

proc postMult*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "postMult".}

proc `*`*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "# * #".}

proc `*`*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "# * #".}

proc preMult*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "preMult".}

proc preMult*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "preMult".}

proc postMult*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "postMult".}

proc postMult*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "postMult".}

proc `*`*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "# * #".}

proc `*`*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "# * #".}

proc set*(this: var Matrixd, q: Quat)  {.importcpp: "set".}

proc get*(this: Matrixd, q: Quat)  {.importcpp: "get".}
    ## deprecated, replace with makeRotate(q)

proc setRotate*(this: var Matrixd, q: Quat)  {.importcpp: "setRotate".}

proc getRotate*(this: Matrixd): Quat  {.importcpp: "getRotate".}
    ## Get the matrix rotation as a Quat. Note that this function assumes a
    ## non-scaled matrix and will return incorrect results for scaled
    ## matrixces. Consider decompose() instead.

proc setTrans*(this: var Matrixd, tx: value_type, ty: value_type, tz: value_type)  {.importcpp: "setTrans".}

proc setTrans*(this: var Matrixd, v: Vec3f)  {.importcpp: "setTrans".}

proc setTrans*(this: var Matrixd, v: Vec3d)  {.importcpp: "setTrans".}

proc getTrans*(this: Matrixd): Vec3d  {.importcpp: "getTrans".}

proc getScale*(this: Matrixd): Vec3d  {.importcpp: "getScale".}

proc transform3x3*(this: var Matrixd, v: Vec3f, m: Matrixd): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixd, v: Vec3d, m: Matrixd): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixd, m: Matrixd, v: Vec3f): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc transform3x3*(this: var Matrixd, m: Matrixd, v: Vec3d): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc mult*(this: var Matrixd, a00: Matrixd, a01: Matrixd)  {.importcpp: "mult".}

proc preMult*(this: var Matrixd, a00: Matrixd)  {.importcpp: "preMult".}

proc postMult*(this: var Matrixd, a00: Matrixd)  {.importcpp: "postMult".}

proc preMultTranslate*(this: var Matrixd, v: Vec3d)  {.importcpp: "preMultTranslate".}
    ## Optimized version of preMult(translate(v));

proc preMultTranslate*(this: var Matrixd, v: Vec3f)  {.importcpp: "preMultTranslate".}

proc postMultTranslate*(this: var Matrixd, v: Vec3d)  {.importcpp: "postMultTranslate".}
    ## Optimized version of postMult(translate(v));

proc postMultTranslate*(this: var Matrixd, v: Vec3f)  {.importcpp: "postMultTranslate".}

proc preMultScale*(this: var Matrixd, v: Vec3d)  {.importcpp: "preMultScale".}
    ## Optimized version of preMult(scale(v));

proc preMultScale*(this: var Matrixd, v: Vec3f)  {.importcpp: "preMultScale".}

proc postMultScale*(this: var Matrixd, v: Vec3d)  {.importcpp: "postMultScale".}
    ## Optimized version of postMult(scale(v));

proc postMultScale*(this: var Matrixd, v: Vec3f)  {.importcpp: "postMultScale".}

proc preMultRotate*(this: var Matrixd, q: Quat)  {.importcpp: "preMultRotate".}
    ## Optimized version of preMult(rotate(q));

proc postMultRotate*(this: var Matrixd, q: Quat)  {.importcpp: "postMultRotate".}
    ## Optimized version of postMult(rotate(q));

proc `*=`*(this: var Matrixd, other: Matrixd)  {.importcpp: "# *= #".}

proc `*`*(this: Matrixd, m: Matrixd): Matrixd  {.importcpp: "# * #".}

proc cloneType*(this: RefMatrixd): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: RefMatrixd, a00: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: RefMatrixd, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: RefMatrixd): cstring  {.importcpp: "libraryName".}

proc className*(this: RefMatrixd): cstring  {.importcpp: "className".}

proc identity*(this: var Matrixd): Matrixd  {.importcpp: "identity".}

proc scale*(this: var Matrixd, sx: value_type, sy: value_type, sz: value_type): Matrixd  {.importcpp: "scale".}

proc scale*(this: var Matrixd, v: Vec3f): Matrixd  {.importcpp: "scale".}

proc scale*(this: var Matrixd, v: Vec3d): Matrixd  {.importcpp: "scale".}

proc translate*(this: var Matrixd, tx: value_type, ty: value_type, tz: value_type): Matrixd  {.importcpp: "translate".}

proc translate*(this: var Matrixd, v: Vec3f): Matrixd  {.importcpp: "translate".}

proc translate*(this: var Matrixd, v: Vec3d): Matrixd  {.importcpp: "translate".}

proc rotate*(this: var Matrixd, q: Quat): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, x: value_type, y: value_type, z: value_type): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, axis: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle: value_type, axis: Vec3d): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle1: value_type, axis1: Vec3f, angle2: value_type, axis2: Vec3f, angle3: value_type, axis3: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, angle1: value_type, axis1: Vec3d, angle2: value_type, axis2: Vec3d, angle3: value_type, axis3: Vec3d): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, `from`: Vec3f, to: Vec3f): Matrixd  {.importcpp: "rotate".}

proc rotate*(this: var Matrixd, `from`: Vec3d, to: Vec3d): Matrixd  {.importcpp: "rotate".}

proc inverse*(this: var Matrixd, matrix: Matrixd): Matrixd  {.importcpp: "inverse".}

proc orthoNormal*(this: var Matrixd, matrix: Matrixd): Matrixd  {.importcpp: "orthoNormal".}

proc ortho*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "ortho".}
    ## Create an orthographic projection matrix. See glOrtho for further
    ## details.

proc ortho2D*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble): Matrixd  {.importcpp: "ortho2D".}
    ## Create a 2D orthographic projection. See glOrtho for further details.

proc frustum*(this: var Matrixd, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "frustum".}
    ## Create a perspective projection. See glFrustum for further details.

proc perspective*(this: var Matrixd, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): Matrixd  {.importcpp: "perspective".}
    ## Create a symmetrical perspective projection. See gluPerspective for
    ## further details. Aspect ratio is defined as width/height.

proc lookAt*(this: var Matrixd, eye: Vec3f, center: Vec3f, up: Vec3f): Matrixd  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc lookAt*(this: var Matrixd, eye: Vec3d, center: Vec3d, up: Vec3d): Matrixd  {.importcpp: "lookAt".}
    ## Create the position and orientation as per a camera, using the same
    ## convention as gluLookAt.

proc postMult*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "postMult".}

proc postMult*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "postMult".}

proc preMult*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "preMult".}

proc preMult*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "preMult".}

proc postMult*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "postMult".}

proc postMult*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "postMult".}

proc preMult*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "preMult".}

proc preMult*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "preMult".}

proc transform3x3*(this: var Matrixd, v: Vec3f, m: Matrixd): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixd, v: Vec3d, m: Matrixd): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of v*M[0..2,0..2].

proc transform3x3*(this: var Matrixd, m: Matrixd, v: Vec3f): Vec3f  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc transform3x3*(this: var Matrixd, m: Matrixd, v: Vec3d): Vec3d  {.importcpp: "transform3x3".}
    ## apply a 3x3 transform of M[0..2,0..2]*v.

proc preMultTranslate*(this: var Matrixd, v: Vec3d)  {.importcpp: "preMultTranslate".}
    ## Optimized version of preMult(translate(v));

proc preMultTranslate*(this: var Matrixd, v: Vec3f)  {.importcpp: "preMultTranslate".}

proc postMultTranslate*(this: var Matrixd, v: Vec3d)  {.importcpp: "postMultTranslate".}
    ## Optimized version of postMult(translate(v));

proc postMultTranslate*(this: var Matrixd, v: Vec3f)  {.importcpp: "postMultTranslate".}

proc preMultScale*(this: var Matrixd, v: Vec3d)  {.importcpp: "preMultScale".}
    ## Optimized version of preMult(scale(v));

proc preMultScale*(this: var Matrixd, v: Vec3f)  {.importcpp: "preMultScale".}

proc postMultScale*(this: var Matrixd, v: Vec3d)  {.importcpp: "postMultScale".}
    ## Optimized version of postMult(scale(v));

proc postMultScale*(this: var Matrixd, v: Vec3f)  {.importcpp: "postMultScale".}

proc preMultRotate*(this: var Matrixd, q: Quat)  {.importcpp: "preMultRotate".}
    ## Optimized version of preMult(rotate(q));

proc postMultRotate*(this: var Matrixd, q: Quat)  {.importcpp: "postMultRotate".}
    ## Optimized version of postMult(rotate(q));

proc `*`*(this: Matrixd, v: Vec3f): Vec3f  {.importcpp: "# * #".}

proc `*`*(this: Matrixd, v: Vec3d): Vec3d  {.importcpp: "# * #".}

proc `*`*(this: Matrixd, v: Vec4f): Vec4f  {.importcpp: "# * #".}

proc `*`*(this: Matrixd, v: Vec4d): Vec4d  {.importcpp: "# * #".}

{.pop.}  # header: "Matrixd"
