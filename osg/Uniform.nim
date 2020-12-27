import Vec3  # provides: osg::Vec3
import GLExtensions  # provides: osg::GLExtensions
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import Matrixf  # provides: osg::Matrixf
import Array  # provides: osg::UIntArray, osg::Int64Array, osg::IntArray, osg::DoubleArray, osg::FloatArray, osg::UInt64Array
import Callback  # provides: osg::UniformCallback
import Vec2  # provides: osg::Vec2
import StateSet  # provides: osg::StateSet
import CopyOp  # provides: osg::CopyOp
import Matrixd  # provides: osg::Matrixd
import Vec4d  # provides: osg::Vec4d
import Vec3d  # provides: osg::Vec3d
import Vec2d  # provides: osg::Vec2d
const
  col_count* = 0
  row_count* = 0
  value_count* = 0


type
  Type* {.size:sizeof(cuint),header: "Uniform", importcpp: "osg::Uniform::Type".} = enum
    UNDEFINED = 0,
    INT = 5124,
    UNSIGNED_INT = 5125,
    FLOAT = 5126,
    DOUBLE = 5130,
    INT64 = 5134,
    UNSIGNED_INT64 = 5135,
    FLOAT_VEC2 = 35664,
    FLOAT_VEC3 = 35665,
    FLOAT_VEC4 = 35666,
    INT_VEC2 = 35667,
    INT_VEC3 = 35668,
    INT_VEC4 = 35669,
    BOOL = 35670,
    BOOL_VEC2 = 35671,
    BOOL_VEC3 = 35672,
    BOOL_VEC4 = 35673,
    FLOAT_MAT2 = 35674,
    FLOAT_MAT3 = 35675,
    FLOAT_MAT4 = 35676,
    SAMPLER_1D = 35677,
    SAMPLER_2D = 35678,
    SAMPLER_3D = 35679,
    SAMPLER_CUBE = 35680,
    SAMPLER_1D_SHADOW = 35681,
    SAMPLER_2D_SHADOW = 35682,
    SAMPLER_2D_RECT = 35683,
    SAMPLER_2D_RECT_SHADOW = 35684,
    FLOAT_MAT2x3 = 35685,
    FLOAT_MAT2x4 = 35686,
    FLOAT_MAT3x2 = 35687,
    FLOAT_MAT3x4 = 35688,
    FLOAT_MAT4x2 = 35689,
    FLOAT_MAT4x3 = 35690,
    SAMPLER_1D_ARRAY = 36288,
    SAMPLER_2D_ARRAY = 36289,
    SAMPLER_BUFFER = 36290,
    SAMPLER_1D_ARRAY_SHADOW = 36291,
    SAMPLER_2D_ARRAY_SHADOW = 36292,
    SAMPLER_CUBE_SHADOW = 36293,
    UNSIGNED_INT_VEC2 = 36294,
    UNSIGNED_INT_VEC3 = 36295,
    UNSIGNED_INT_VEC4 = 36296,
    INT_SAMPLER_1D = 36297,
    INT_SAMPLER_2D = 36298,
    INT_SAMPLER_3D = 36299,
    INT_SAMPLER_CUBE = 36300,
    INT_SAMPLER_2D_RECT = 36301,
    INT_SAMPLER_1D_ARRAY = 36302,
    INT_SAMPLER_2D_ARRAY = 36303,
    INT_SAMPLER_BUFFER = 36304,
    UNSIGNED_INT_SAMPLER_1D = 36305,
    UNSIGNED_INT_SAMPLER_2D = 36306,
    UNSIGNED_INT_SAMPLER_3D = 36307,
    UNSIGNED_INT_SAMPLER_CUBE = 36308,
    UNSIGNED_INT_SAMPLER_2D_RECT = 36309,
    UNSIGNED_INT_SAMPLER_1D_ARRAY = 36310,
    UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311,
    UNSIGNED_INT_SAMPLER_BUFFER = 36312,
    DOUBLE_MAT2 = 36678,
    DOUBLE_MAT3 = 36679,
    DOUBLE_MAT4 = 36680,
    DOUBLE_MAT2x3 = 36681,
    DOUBLE_MAT2x4 = 36682,
    DOUBLE_MAT3x2 = 36683,
    DOUBLE_MAT3x4 = 36684,
    DOUBLE_MAT4x2 = 36685,
    DOUBLE_MAT4x3 = 36686,
    DOUBLE_VEC2 = 36860,
    DOUBLE_VEC3 = 36861,
    DOUBLE_VEC4 = 36862,
    SAMPLER_CUBE_MAP_ARRAY = 36876,
    SAMPLER_CUBE_MAP_ARRAY_SHADOW = 36877,
    INT_SAMPLER_CUBE_MAP_ARRAY = 36878,
    UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 36879,
    IMAGE_1D = 36940,
    IMAGE_2D = 36941,
    IMAGE_3D = 36942,
    IMAGE_2D_RECT = 36943,
    IMAGE_CUBE = 36944,
    IMAGE_BUFFER = 36945,
    IMAGE_1D_ARRAY = 36946,
    IMAGE_2D_ARRAY = 36947,
    IMAGE_CUBE_MAP_ARRAY = 36948,
    IMAGE_2D_MULTISAMPLE = 36949,
    IMAGE_2D_MULTISAMPLE_ARRAY = 36950,
    INT_IMAGE_1D = 36951,
    INT_IMAGE_2D = 36952,
    INT_IMAGE_3D = 36953,
    INT_IMAGE_2D_RECT = 36954,
    INT_IMAGE_CUBE = 36955,
    INT_IMAGE_BUFFER = 36956,
    INT_IMAGE_1D_ARRAY = 36957,
    INT_IMAGE_2D_ARRAY = 36958,
    INT_IMAGE_CUBE_MAP_ARRAY = 36959,
    INT_IMAGE_2D_MULTISAMPLE = 36960,
    INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36961,
    UNSIGNED_INT_IMAGE_1D = 36962,
    UNSIGNED_INT_IMAGE_2D = 36963,
    UNSIGNED_INT_IMAGE_3D = 36964,
    UNSIGNED_INT_IMAGE_2D_RECT = 36965,
    UNSIGNED_INT_IMAGE_CUBE = 36966,
    UNSIGNED_INT_IMAGE_BUFFER = 36967,
    UNSIGNED_INT_IMAGE_1D_ARRAY = 36968,
    UNSIGNED_INT_IMAGE_2D_ARRAY = 36969,
    UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 36970,
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 36971,
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36972,
    SAMPLER_2D_MULTISAMPLE = 37128,
    INT_SAMPLER_2D_MULTISAMPLE = 37129,
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 37130,
    SAMPLER_2D_MULTISAMPLE_ARRAY = 37131,
    INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37132,
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37133

  MatrixTemplate* {.header: "Uniform", importcpp: "osg::MatrixTemplate", byref.} [T, RowN:cuint, ColN:cuint]= object

  Matrix2Template* {.header: "Uniform", importcpp: "osg::Matrix2Template", byref.} [T]= object #of MatrixTemplate<T, 2, 2>

  Matrix2x3Template* {.header: "Uniform", importcpp: "osg::Matrix2x3Template", byref.} [T]= object #of MatrixTemplate<T, 2, 3>

  Matrix2x4Template* {.header: "Uniform", importcpp: "osg::Matrix2x4Template", byref.} [T]= object #of MatrixTemplate<T, 2, 4>

  Matrix3x2Template* {.header: "Uniform", importcpp: "osg::Matrix3x2Template", byref.} [T]= object #of MatrixTemplate<T, 3, 2>

  Matrix3Template* {.header: "Uniform", importcpp: "osg::Matrix3Template", byref.} [T]= object #of MatrixTemplate<T, 3, 3>

  Matrix3x4Template* {.header: "Uniform", importcpp: "osg::Matrix3x4Template", byref.} [T]= object #of MatrixTemplate<T, 3, 4>

  Matrix4x2Template* {.header: "Uniform", importcpp: "osg::Matrix4x2Template", byref.} [T]= object #of MatrixTemplate<T, 4, 2>

  Matrix4x3Template* {.header: "Uniform", importcpp: "osg::Matrix4x3Template", byref.} [T]= object #of MatrixTemplate<T, 4, 3>

  Value_type* {.header: "Uniform", importcpp: "osg::Matrix4x3Template::value_type".} = Value_type
  Base_class* {.header: "Uniform", importcpp: "osg::Matrix4x3Template::base_class".} = MatrixTemplate[T, 4, 3]
  Matrix2* {.header: "Uniform", importcpp: "osg::Matrix2".} = Matrix2Template[float]
  Matrix2x3* {.header: "Uniform", importcpp: "osg::Matrix2x3".} = Matrix2x3Template[float]
  Matrix2x4* {.header: "Uniform", importcpp: "osg::Matrix2x4".} = Matrix2x4Template[float]
  Matrix3x2* {.header: "Uniform", importcpp: "osg::Matrix3x2".} = Matrix3x2Template[float]
  Matrix3* {.header: "Uniform", importcpp: "osg::Matrix3".} = Matrix3Template[float]
  Matrix3x4* {.header: "Uniform", importcpp: "osg::Matrix3x4".} = Matrix3x4Template[float]
  Matrix4x2* {.header: "Uniform", importcpp: "osg::Matrix4x2".} = Matrix4x2Template[float]
  Matrix4x3* {.header: "Uniform", importcpp: "osg::Matrix4x3".} = Matrix4x3Template[float]
  Matrix2d* {.header: "Uniform", importcpp: "osg::Matrix2d".} = Matrix2Template[double]
  Matrix2x3d* {.header: "Uniform", importcpp: "osg::Matrix2x3d".} = Matrix2x3Template[double]
  Matrix2x4d* {.header: "Uniform", importcpp: "osg::Matrix2x4d".} = Matrix2x4Template[double]
  Matrix3x2d* {.header: "Uniform", importcpp: "osg::Matrix3x2d".} = Matrix3x2Template[double]
  Matrix3d* {.header: "Uniform", importcpp: "osg::Matrix3d".} = Matrix3Template[double]
  Matrix3x4d* {.header: "Uniform", importcpp: "osg::Matrix3x4d".} = Matrix3x4Template[double]
  Matrix4x2d* {.header: "Uniform", importcpp: "osg::Matrix4x2d".} = Matrix4x2Template[double]
  Matrix4x3d* {.header: "Uniform", importcpp: "osg::Matrix4x3d".} = Matrix4x3Template[double]
  ParentList* {.header: "Uniform", importcpp: "osg::Uniform::ParentList".} = cint
  Callback* {.header: "Uniform", importcpp: "osg::Uniform::Callback".} = Uniformcallback


{.push header: "Uniform".}

proc constructMatrixTemplate*[T, RowN, ColN](): MatrixTemplate {.constructor,importcpp: "osg::MatrixTemplate::MatrixTemplate<T, RowN, ColN>".}

proc constructMatrix2Template*[T](): Matrix2Template {.constructor,importcpp: "osg::Matrix2Template::Matrix2Template<T>".}

proc constructMatrix2Template*[T](mat: Matrix2Template[T]): Matrix2Template {.constructor,importcpp: "osg::Matrix2Template::Matrix2Template<T>(@)".}

proc constructMatrix2Template*[T](a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type): Matrix2Template {.constructor,importcpp: "osg::Matrix2Template::Matrix2Template<T>(@)".}

proc constructMatrix2x3Template*[T](): Matrix2x3Template {.constructor,importcpp: "osg::Matrix2x3Template::Matrix2x3Template<T>".}

proc constructMatrix2x3Template*[T](mat: Matrix2x3Template[T]): Matrix2x3Template {.constructor,importcpp: "osg::Matrix2x3Template::Matrix2x3Template<T>(@)".}

proc constructMatrix2x3Template*[T](a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type): Matrix2x3Template {.constructor,importcpp: "osg::Matrix2x3Template::Matrix2x3Template<T>(@)".}

proc constructMatrix2x4Template*[T](): Matrix2x4Template {.constructor,importcpp: "osg::Matrix2x4Template::Matrix2x4Template<T>".}

proc constructMatrix2x4Template*[T](mat: Matrix2x4Template[T]): Matrix2x4Template {.constructor,importcpp: "osg::Matrix2x4Template::Matrix2x4Template<T>(@)".}

proc constructMatrix2x4Template*[T](a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type): Matrix2x4Template {.constructor,importcpp: "osg::Matrix2x4Template::Matrix2x4Template<T>(@)".}

proc constructMatrix3x2Template*[T](): Matrix3x2Template {.constructor,importcpp: "osg::Matrix3x2Template::Matrix3x2Template<T>".}

proc constructMatrix3x2Template*[T](mat: Matrix3x2Template[T]): Matrix3x2Template {.constructor,importcpp: "osg::Matrix3x2Template::Matrix3x2Template<T>(@)".}

proc constructMatrix3x2Template*[T](a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type, a20: Value_type, a21: Value_type): Matrix3x2Template {.constructor,importcpp: "osg::Matrix3x2Template::Matrix3x2Template<T>(@)".}

proc constructMatrix3Template*[T](): Matrix3Template {.constructor,importcpp: "osg::Matrix3Template::Matrix3Template<T>".}

proc constructMatrix3Template*[T](mat: Matrix3Template[T]): Matrix3Template {.constructor,importcpp: "osg::Matrix3Template::Matrix3Template<T>(@)".}

proc constructMatrix3Template*[T](a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a20: Value_type, a21: Value_type, a22: Value_type): Matrix3Template {.constructor,importcpp: "osg::Matrix3Template::Matrix3Template<T>(@)".}

proc constructMatrix3x4Template*[T](): Matrix3x4Template {.constructor,importcpp: "osg::Matrix3x4Template::Matrix3x4Template<T>".}

proc constructMatrix3x4Template*[T](mat: Matrix3x4Template[T]): Matrix3x4Template {.constructor,importcpp: "osg::Matrix3x4Template::Matrix3x4Template<T>(@)".}

proc constructMatrix3x4Template*[T](a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a23: Value_type): Matrix3x4Template {.constructor,importcpp: "osg::Matrix3x4Template::Matrix3x4Template<T>(@)".}

proc constructMatrix4x2Template*[T](): Matrix4x2Template {.constructor,importcpp: "osg::Matrix4x2Template::Matrix4x2Template<T>".}

proc constructMatrix4x2Template*[T](mat: Matrix4x2Template[T]): Matrix4x2Template {.constructor,importcpp: "osg::Matrix4x2Template::Matrix4x2Template<T>(@)".}

proc constructMatrix4x2Template*[T](a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type, a20: Value_type, a21: Value_type, a30: Value_type, a31: Value_type): Matrix4x2Template {.constructor,importcpp: "osg::Matrix4x2Template::Matrix4x2Template<T>(@)".}

proc constructMatrix4x3Template*[T](): Matrix4x3Template {.constructor,importcpp: "osg::Matrix4x3Template::Matrix4x3Template<T>".}

proc constructMatrix4x3Template*[T](mat: Matrix4x3Template[T]): Matrix4x3Template {.constructor,importcpp: "osg::Matrix4x3Template::Matrix4x3Template<T>(@)".}

proc constructMatrix4x3Template*[T](a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a30: Value_type, a31: Value_type, a32: Value_type): Matrix4x3Template {.constructor,importcpp: "osg::Matrix4x3Template::Matrix4x3Template<T>(@)".}

proc constructUniform*(): Uniform {.constructor,importcpp: "osg::Uniform::Uniform".}

proc constructUniform*(`type`: Type, name: String, numElements: cint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(rhs: Uniform, copyop: Copyop = SHALLOW_COPY): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructUniform*(name: cstring, f: cfloat): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}
    ## convenient scalar (non-array) constructors w/ assignment

proc constructUniform*(name: cstring, d: cdouble): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, i: cint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ui: cuint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, b: bool): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ull: culonglong): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ll: clonglong): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v2: Vec2): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v3: Vec3): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v4: Vec4): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v2: Vec2d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v3: Vec3d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, v4: Vec4d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2: Matrix2): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3: Matrix3): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4: Matrixf): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2x3: Matrix2x3): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2x4: Matrix2x4): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3x2: Matrix3x2): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3x4: Matrix3x4): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4x2: Matrix4x2): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4x3: Matrix4x3): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2: Matrix2d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3: Matrix3d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4: Matrixd): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2x3: Matrix2x3d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m2x4: Matrix2x4d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3x2: Matrix3x2d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m3x4: Matrix3x4d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4x2: Matrix4x2d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, m4x3: Matrix4x3d): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, i0: cint, i1: cint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, i0: cint, i1: cint, i2: cint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, i0: cint, i1: cint, i2: cint, i3: cint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ui0: cuint, ui1: cuint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ui0: cuint, ui1: cuint, ui2: cuint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, ui0: cuint, ui1: cuint, ui2: cuint, ui3: cuint): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, b0: bool, b1: bool): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, b0: bool, b1: bool, b2: bool): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc constructUniform*(name: cstring, b0: bool, b1: bool, b2: bool, b3: bool): Uniform {.constructor,importcpp: "osg::Uniform::Uniform(@)".}

proc `()`*(this: var MatrixTemplate, row: cint, col: cint): Value_type  {.importcpp: "# () #".}

proc `()`*(this: MatrixTemplate, row: cint, col: cint): Value_type  {.importcpp: "# () #".}

proc `=`*(this: var MatrixTemplate, rhs: MatrixTemplate[T, RowN, ColN]): MatrixTemplate[T, RowN, ColN]  {.importcpp: "# = #".}

proc set*(this: var MatrixTemplate, rhs: MatrixTemplate[T, RowN, ColN])  {.importcpp: "set".}

proc set*(this: var MatrixTemplate, `ptr`: Value_type *const)  {.importcpp: "set".}

proc `ptr`*(this: var MatrixTemplate): ptr Value_type   {.importcpp: "ptr".}

proc `ptr`*(this: MatrixTemplate): ptr Value_type   {.importcpp: "ptr".}

proc `[]`*(this: var MatrixTemplate, i: cint): Value_type  {.importcpp: "# [] #".}

proc `[]`*(this: MatrixTemplate, i: cint): Value_type  {.importcpp: "# [] #".}

proc reset*(this: var MatrixTemplate)  {.importcpp: "reset".}

proc set*(this: var Matrix2Template, a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type)  {.importcpp: "set".}

proc makeIdentity*(this: var Matrix2Template)  {.importcpp: "makeIdentity".}

proc set*(this: var Matrix2x3Template, a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type)  {.importcpp: "set".}

proc set*(this: var Matrix2x4Template, a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type)  {.importcpp: "set".}

proc set*(this: var Matrix3x2Template, a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type, a20: Value_type, a21: Value_type)  {.importcpp: "set".}

proc set*(this: var Matrix3Template, a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a20: Value_type, a21: Value_type, a22: Value_type)  {.importcpp: "set".}

proc makeIdentity*(this: var Matrix3Template)  {.importcpp: "makeIdentity".}

proc set*(this: var Matrix3x4Template, a00: Value_type, a01: Value_type, a02: Value_type, a03: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a13: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a23: Value_type)  {.importcpp: "set".}

proc set*(this: var Matrix4x2Template, a00: Value_type, a01: Value_type, a10: Value_type, a11: Value_type, a20: Value_type, a21: Value_type, a30: Value_type, a31: Value_type)  {.importcpp: "set".}

proc set*(this: var Matrix4x3Template, a00: Value_type, a01: Value_type, a02: Value_type, a10: Value_type, a11: Value_type, a12: Value_type, a20: Value_type, a21: Value_type, a22: Value_type, a30: Value_type, a31: Value_type, a32: Value_type)  {.importcpp: "set".}

proc cloneType*(this: Uniform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Uniform, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Uniform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Uniform): cstring  {.importcpp: "libraryName".}

proc className*(this: Uniform): cstring  {.importcpp: "className".}

proc asUniform*(this: var Uniform): ptr Uniform   {.importcpp: "asUniform".}
    ## Convert 'this' into a Uniform pointer if Object is a Uniform,
    ## otherwise return 0. Equivalent to dynamic_cast<Uniform*>(this).

proc asUniform*(this: Uniform): ptr Uniform   {.importcpp: "asUniform".}
    ## convert 'const this' into a const Uniform pointer if Object is a
    ## Uniform, otherwise return 0. Equivalent to dynamic_cast<const
    ## Uniform*>(this).

proc setType*(this: var Uniform, t: Type): bool  {.importcpp: "setType".}
    ## Set the type of glUniform, ensuring it is only set once.

proc getType*(this: Uniform): Type  {.importcpp: "getType".}
    ## Get the type of glUniform as enum.

proc setName*(this: var Uniform, name: String)  {.importcpp: "setName".}
    ## Set the name of the glUniform, ensuring it is only set once.

proc setNumElements*(this: var Uniform, numElements: cuint)  {.importcpp: "setNumElements".}
    ## Set the length of a uniform, ensuring it is only set once (1==scalar)

proc getNumElements*(this: Uniform): cuint  {.importcpp: "getNumElements".}
    ## Get the number of GLSL elements of the osg::Uniform (1==scalar)

proc getInternalArrayNumElements*(this: Uniform): cuint  {.importcpp: "getInternalArrayNumElements".}
    ## Get the number of elements required for the internal data array.
    ## Returns 0 if the osg::Uniform is not properly configured.

proc getTypename*(this: var Uniform, t: Type): cstring  {.importcpp: "getTypename".}
    ## Return the name of a Type enum as string.

proc getTypeNumComponents*(this: var Uniform, t: Type): cint  {.importcpp: "getTypeNumComponents".}
    ## Return the number of components for a GLSL type.

proc getTypeId*(this: var Uniform, tname: String): Type  {.importcpp: "getTypeId".}
    ## Return the Type enum of a Uniform typename string

proc getGlApiType*(this: var Uniform, t: Type): Type  {.importcpp: "getGlApiType".}
    ## Return the GL API type corresponding to a GLSL type

proc getInternalArrayType*(this: var Uniform, t: Type): GLenum  {.importcpp: "getInternalArrayType".}
    ## Return the internal data array type corresponding to a GLSL type

proc getNameID*(this: var Uniform, name: String): cuint  {.importcpp: "getNameID".}
    ## Return the number that the name maps to uniquely

proc compare*(this: Uniform, rhs: Uniform): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc compareData*(this: Uniform, rhs: Uniform): cint  {.importcpp: "compareData".}

proc `<`*(this: Uniform, rhs: Uniform): bool  {.importcpp: "# < #".}

proc `==`*(this: Uniform, rhs: Uniform): bool  {.importcpp: "# == #".}

proc `!=`*(this: Uniform, rhs: Uniform): bool  {.importcpp: "# != #".}

proc copyData*(this: var Uniform, rhs: Uniform)  {.importcpp: "copyData".}

proc getParents*(this: Uniform): Parentlist  {.importcpp: "getParents".}
    ## Get the parent list of this Uniform.

proc getParents*(this: var Uniform): Parentlist  {.importcpp: "getParents".}
    ## Get the a copy of parent list of node. A copy is returned to prevent
    ## modification of the parent list.

proc getParent*(this: var Uniform, i: cuint): ptr Stateset   {.importcpp: "getParent".}

proc getParent*(this: Uniform, i: cuint): ptr Stateset   {.importcpp: "getParent".}
    ## Get a single const parent of this Uniform.

proc getNumParents*(this: Uniform): cuint  {.importcpp: "getNumParents".}
    ## Get the number of parents of this Uniform.

proc set*(this: var Uniform, f: cfloat): bool  {.importcpp: "set".}
    ## convenient scalar (non-array) value assignment

proc set*(this: var Uniform, d: cdouble): bool  {.importcpp: "set".}

proc set*(this: var Uniform, i: cint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ui: cuint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, b: bool): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ull: culonglong): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ll: clonglong): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v2: Vec2): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v3: Vec3): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v4: Vec4): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v2: Vec2d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v3: Vec3d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, v4: Vec4d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2: Matrix2): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3: Matrix3): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4: Matrixf): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2x3: Matrix2x3): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2x4: Matrix2x4): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3x2: Matrix3x2): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3x4: Matrix3x4): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4x2: Matrix4x2): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4x3: Matrix4x3): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2: Matrix2d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3: Matrix3d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4: Matrixd): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2x3: Matrix2x3d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m2x4: Matrix2x4d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3x2: Matrix3x2d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m3x4: Matrix3x4d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4x2: Matrix4x2d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, m4x3: Matrix4x3d): bool  {.importcpp: "set".}

proc set*(this: var Uniform, i0: cint, i1: cint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, i0: cint, i1: cint, i2: cint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, i0: cint, i1: cint, i2: cint, i3: cint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ui0: cuint, ui1: cuint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ui0: cuint, ui1: cuint, ui2: cuint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, ui0: cuint, ui1: cuint, ui2: cuint, ui3: cuint): bool  {.importcpp: "set".}

proc set*(this: var Uniform, b0: bool, b1: bool): bool  {.importcpp: "set".}

proc set*(this: var Uniform, b0: bool, b1: bool, b2: bool): bool  {.importcpp: "set".}

proc set*(this: var Uniform, b0: bool, b1: bool, b2: bool, b3: bool): bool  {.importcpp: "set".}

proc get*(this: Uniform, f: cfloat): bool  {.importcpp: "get".}
    ## convenient scalar (non-array) value query

proc get*(this: Uniform, d: cdouble): bool  {.importcpp: "get".}

proc get*(this: Uniform, i: cint): bool  {.importcpp: "get".}

proc get*(this: Uniform, ui: cuint): bool  {.importcpp: "get".}

proc get*(this: Uniform, b: var bool): bool  {.importcpp: "get".}

proc get*(this: Uniform, ull: culonglong): bool  {.importcpp: "get".}

proc get*(this: Uniform, ll: clonglong): bool  {.importcpp: "get".}

proc get*(this: Uniform, v2: Vec2): bool  {.importcpp: "get".}

proc get*(this: Uniform, v3: Vec3): bool  {.importcpp: "get".}

proc get*(this: Uniform, v4: Vec4): bool  {.importcpp: "get".}

proc get*(this: Uniform, v2: Vec2d): bool  {.importcpp: "get".}

proc get*(this: Uniform, v3: Vec3d): bool  {.importcpp: "get".}

proc get*(this: Uniform, v4: Vec4d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2: Matrix2): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3: Matrix3): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4: Matrixf): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2x3: Matrix2x3): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2x4: Matrix2x4): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3x2: Matrix3x2): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3x4: Matrix3x4): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4x2: Matrix4x2): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4x3: Matrix4x3): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2: Matrix2d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3: Matrix3d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4: Matrixd): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2x3: Matrix2x3d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m2x4: Matrix2x4d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3x2: Matrix3x2d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m3x4: Matrix3x4d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4x2: Matrix4x2d): bool  {.importcpp: "get".}

proc get*(this: Uniform, m4x3: Matrix4x3d): bool  {.importcpp: "get".}

proc get*(this: Uniform, i0: cint, i1: cint): bool  {.importcpp: "get".}

proc get*(this: Uniform, i0: cint, i1: cint, i2: cint): bool  {.importcpp: "get".}

proc get*(this: Uniform, i0: cint, i1: cint, i2: cint, i3: cint): bool  {.importcpp: "get".}

proc get*(this: Uniform, ui0: cuint, ui1: cuint): bool  {.importcpp: "get".}

proc get*(this: Uniform, ui0: cuint, ui1: cuint, ui2: cuint): bool  {.importcpp: "get".}

proc get*(this: Uniform, ui0: cuint, ui1: cuint, ui2: cuint, ui3: cuint): bool  {.importcpp: "get".}

proc get*(this: Uniform, b0: var bool, b1: var bool): bool  {.importcpp: "get".}

proc get*(this: Uniform, b0: var bool, b1: var bool, b2: var bool): bool  {.importcpp: "get".}

proc get*(this: Uniform, b0: var bool, b1: var bool, b2: var bool, b3: var bool): bool  {.importcpp: "get".}

proc setElement*(this: var Uniform, index: cuint, f: cfloat): bool  {.importcpp: "setElement".}
    ## value assignment for array uniforms

proc setElement*(this: var Uniform, index: cuint, d: cdouble): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, i: cint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ui: cuint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, b: bool): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ull: culonglong): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ll: clonglong): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v2: Vec2): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v3: Vec3): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v4: Vec4): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v2: Vec2d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v3: Vec3d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, v4: Vec4d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2: Matrix2): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3: Matrix3): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4: Matrixf): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2x3: Matrix2x3): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2x4: Matrix2x4): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3x2: Matrix3x2): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3x4: Matrix3x4): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4x2: Matrix4x2): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4x3: Matrix4x3): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2: Matrix2d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3: Matrix3d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4: Matrixd): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2x3: Matrix2x3d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m2x4: Matrix2x4d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3x2: Matrix3x2d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m3x4: Matrix3x4d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4x2: Matrix4x2d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, m4x3: Matrix4x3d): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, i0: cint, i1: cint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, i0: cint, i1: cint, i2: cint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, i0: cint, i1: cint, i2: cint, i3: cint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ui0: cuint, ui1: cuint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ui0: cuint, ui1: cuint, ui2: cuint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, ui0: cuint, ui1: cuint, ui2: cuint, ui3: cuint): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, b0: bool, b1: bool): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, b0: bool, b1: bool, b2: bool): bool  {.importcpp: "setElement".}

proc setElement*(this: var Uniform, index: cuint, b0: bool, b1: bool, b2: bool, b3: bool): bool  {.importcpp: "setElement".}

proc getElement*(this: Uniform, index: cuint, f: cfloat): bool  {.importcpp: "getElement".}
    ## value query for array uniforms

proc getElement*(this: Uniform, index: cuint, d: cdouble): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, i: cint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ui: cuint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, b: var bool): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ull: culonglong): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ll: clonglong): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v2: Vec2): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v3: Vec3): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v4: Vec4): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v2: Vec2d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v3: Vec3d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, v4: Vec4d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2: Matrix2): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3: Matrix3): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4: Matrixf): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2x3: Matrix2x3): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2x4: Matrix2x4): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3x2: Matrix3x2): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3x4: Matrix3x4): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4x2: Matrix4x2): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4x3: Matrix4x3): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2: Matrix2d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3: Matrix3d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4: Matrixd): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2x3: Matrix2x3d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m2x4: Matrix2x4d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3x2: Matrix3x2d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m3x4: Matrix3x4d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4x2: Matrix4x2d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, m4x3: Matrix4x3d): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, i0: cint, i1: cint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, i0: cint, i1: cint, i2: cint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, i0: cint, i1: cint, i2: cint, i3: cint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ui0: cuint, ui1: cuint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ui0: cuint, ui1: cuint, ui2: cuint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, ui0: cuint, ui1: cuint, ui2: cuint, ui3: cuint): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, b0: var bool, b1: var bool): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, b0: var bool, b1: var bool, b2: var bool): bool  {.importcpp: "getElement".}

proc getElement*(this: Uniform, index: cuint, b0: var bool, b1: var bool, b2: var bool, b3: var bool): bool  {.importcpp: "getElement".}

proc setUpdateCallback*(this: var Uniform, uc: ptr Uniformcallback )  {.importcpp: "setUpdateCallback".}
    ## Set the UpdateCallback which allows users to attach customize the
    ## updating of an object during the update traversal.

proc getUpdateCallback*(this: var Uniform): ptr Uniformcallback   {.importcpp: "getUpdateCallback".}
    ## Get the non const UpdateCallback.

proc getUpdateCallback*(this: Uniform): ptr Uniformcallback   {.importcpp: "getUpdateCallback".}
    ## Get the const UpdateCallback.

proc setEventCallback*(this: var Uniform, ec: ptr Uniformcallback )  {.importcpp: "setEventCallback".}
    ## Set the EventCallback which allows users to attach customize the
    ## updating of an object during the Event traversal.

proc getEventCallback*(this: var Uniform): ptr Uniformcallback   {.importcpp: "getEventCallback".}
    ## Get the non const EventCallback.

proc getEventCallback*(this: Uniform): ptr Uniformcallback   {.importcpp: "getEventCallback".}
    ## Get the const EventCallback.

proc dirty*(this: var Uniform)  {.importcpp: "dirty".}
    ## Increment the modified count on the Uniform so Programs watching it
    ## know it update themselves. NOTE: automatically called during
    ## osg::Uniform::set*(); you must call if modifying the internal data
    ## array directly.

proc setArray*(this: var Uniform, array: ptr Floatarray ): bool  {.importcpp: "setArray".}
    ## Set the internal data array for a osg::Uniform

proc setArray*(this: var Uniform, array: ptr Doublearray ): bool  {.importcpp: "setArray".}

proc setArray*(this: var Uniform, array: ptr Intarray ): bool  {.importcpp: "setArray".}

proc setArray*(this: var Uniform, array: ptr Uintarray ): bool  {.importcpp: "setArray".}

proc setArray*(this: var Uniform, array: ptr Uint64array ): bool  {.importcpp: "setArray".}

proc setArray*(this: var Uniform, array: ptr Int64array ): bool  {.importcpp: "setArray".}

proc getFloatArray*(this: var Uniform): ptr Floatarray   {.importcpp: "getFloatArray".}
    ## Get the internal data array for a float osg::Uniform.

proc getFloatArray*(this: Uniform): ptr Floatarray   {.importcpp: "getFloatArray".}

proc getDoubleArray*(this: var Uniform): ptr Doublearray   {.importcpp: "getDoubleArray".}
    ## Get the internal data array for a double osg::Uniform.

proc getDoubleArray*(this: Uniform): ptr Doublearray   {.importcpp: "getDoubleArray".}

proc getIntArray*(this: var Uniform): ptr Intarray   {.importcpp: "getIntArray".}
    ## Get the internal data array for an int osg::Uniform.

proc getIntArray*(this: Uniform): ptr Intarray   {.importcpp: "getIntArray".}

proc getUIntArray*(this: var Uniform): ptr Uintarray   {.importcpp: "getUIntArray".}
    ## Get the internal data array for an unsigned int osg::Uniform.

proc getUIntArray*(this: Uniform): ptr Uintarray   {.importcpp: "getUIntArray".}

proc getUInt64Array*(this: var Uniform): ptr Uint64array   {.importcpp: "getUInt64Array".}
    ## Get the internal data array for an unsigned int osg::Uniform.

proc getUInt64Array*(this: Uniform): ptr Uint64array   {.importcpp: "getUInt64Array".}

proc getInt64Array*(this: var Uniform): ptr Int64array   {.importcpp: "getInt64Array".}
    ## Get the internal data array for an unsigned int osg::Uniform.

proc getInt64Array*(this: Uniform): ptr Int64array   {.importcpp: "getInt64Array".}

proc setModifiedCount*(this: var Uniform, mc: cuint)  {.importcpp: "setModifiedCount".}

proc getModifiedCount*(this: Uniform): cuint  {.importcpp: "getModifiedCount".}

proc getNameID*(this: Uniform): cuint  {.importcpp: "getNameID".}
    ## Get the number that the Uniform's name maps to uniquely

proc apply*(this: Uniform, ext: ptr Glextensions , location: GLint)  {.importcpp: "apply".}

proc `=`*(this: var Uniform, Uniform): Uniform  {.importcpp: "# = #".}

proc isCompatibleType*(this: Uniform, t: Type): bool  {.importcpp: "isCompatibleType".}

proc isCompatibleType*(this: Uniform, t1: Type, t2: Type): bool  {.importcpp: "isCompatibleType".}

proc isScalar*(this: Uniform): bool  {.importcpp: "isScalar".}

proc allocateDataArray*(this: var Uniform)  {.importcpp: "allocateDataArray".}

proc addParent*(this: var Uniform, `object`: ptr Stateset )  {.importcpp: "addParent".}

proc removeParent*(this: var Uniform, `object`: ptr Stateset )  {.importcpp: "removeParent".}

{.pop.}  # header: "Uniform"
