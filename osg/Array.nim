import Vec4us  # provides: osg::Vec4us
import Vec3  # provides: osg::Vec3
import Vec3i  # provides: osg::Vec3i
import Vec4  # provides: osg::Vec4
import Vec3s  # provides: osg::Vec3s
import Vec2us  # provides: osg::Vec2us
import Vec2s  # provides: osg::Vec2s
import Vec2b  # provides: osg::Vec2b
import Object  # provides: osg::Object
import BufferObject  # provides: osg::VertexBufferObject
import Vec3ui  # provides: osg::Vec3ui
import Matrixf  # provides: osg::Matrixf
import Vec2ub  # provides: osg::Vec2ub
import Vec2ui  # provides: osg::Vec2ui
import Vec3us  # provides: osg::Vec3us
import Vec2  # provides: osg::Vec2
import CopyOp  # provides: osg::CopyOp
import Matrixd  # provides: osg::Matrixd
import Vec3b  # provides: osg::Vec3b
import Vec4b  # provides: osg::Vec4b
import Vec4ui  # provides: osg::Vec4ui
import Vec3ub  # provides: osg::Vec3ub
import Vec4d  # provides: osg::Vec4d
import Vec4s  # provides: osg::Vec4s
import Vec2i  # provides: osg::Vec2i
import Vec3d  # provides: osg::Vec3d
import Vec2d  # provides: osg::Vec2d
import Quat  # provides: osg::Quat
import Vec4ub  # provides: osg::Vec4ub
import Vec4i  # provides: osg::Vec4i
type
  Type* {.size:sizeof(cuint),header: "Array", importcpp: "osg::Array::Type".} = enum
    ## The type of data stored in this array.

    ArrayType = 0,
    ByteArrayType = 1,
    ShortArrayType = 2,
    IntArrayType = 3,
    UByteArrayType = 4,
    UShortArrayType = 5,
    UIntArrayType = 6,
    FloatArrayType = 7,
    DoubleArrayType = 8,
    Vec2bArrayType = 9,
    Vec3bArrayType = 10,
    Vec4bArrayType = 11,
    Vec2sArrayType = 12,
    Vec3sArrayType = 13,
    Vec4sArrayType = 14,
    Vec2iArrayType = 15,
    Vec3iArrayType = 16,
    Vec4iArrayType = 17,
    Vec2ubArrayType = 18,
    Vec3ubArrayType = 19,
    Vec4ubArrayType = 20,
    Vec2usArrayType = 21,
    Vec3usArrayType = 22,
    Vec4usArrayType = 23,
    Vec2uiArrayType = 24,
    Vec3uiArrayType = 25,
    Vec4uiArrayType = 26,
    Vec2ArrayType = 27,
    Vec3ArrayType = 28,
    Vec4ArrayType = 29,
    Vec2dArrayType = 30,
    Vec3dArrayType = 31,
    Vec4dArrayType = 32,
    MatrixArrayType = 33,
    MatrixdArrayType = 34,
    QuatArrayType = 35,
    UInt64ArrayType = 36,
    Int64ArrayType = 37,
    LastArrayType = 37,
    Int64ArrayType = 37,
    LastArrayType = 37

  TemplateArray* {.header: "Array", importcpp: "osg::TemplateArray", byref.} [T, ARRAYTYPE:Type, DataSize:cint, DataType:cint]= object #of class osg::Array
    ## A concrete array holding elements of type T.

  TemplateIndexArray* {.header: "Array", importcpp: "osg::TemplateIndexArray", byref.} [T, ARRAYTYPE:Type, DataSize:cint, DataType:cint]= object #of class osg::IndexArray

  ArrayVisitor* {.header: "Array", importcpp: "osg::ArrayVisitor", byref.} = object

  ConstArrayVisitor* {.header: "Array", importcpp: "osg::ConstArrayVisitor", byref.} = object

  ValueVisitor* {.header: "Array", importcpp: "osg::ValueVisitor", byref.} = object

  ConstValueVisitor* {.header: "Array", importcpp: "osg::ConstValueVisitor", byref.} = object

  ElementDataType* {.header: "Array", importcpp: "osg::TemplateIndexArray::ElementDataType".} = T
  Vec2bArray* {.header: "Array", importcpp: "osg::Vec2bArray".} = Templatearray[Vec2b,Vec2barraytype,2,5120]
  Vec3bArray* {.header: "Array", importcpp: "osg::Vec3bArray".} = Templatearray[Vec3b,Vec3barraytype,3,5120]
  Vec4bArray* {.header: "Array", importcpp: "osg::Vec4bArray".} = Templatearray[Vec4b,Vec4barraytype,4,5120]
  Vec2sArray* {.header: "Array", importcpp: "osg::Vec2sArray".} = Templatearray[Vec2s,Vec2sarraytype,2,5122]
  Vec3sArray* {.header: "Array", importcpp: "osg::Vec3sArray".} = Templatearray[Vec3s,Vec3sarraytype,3,5122]
  Vec4sArray* {.header: "Array", importcpp: "osg::Vec4sArray".} = Templatearray[Vec4s,Vec4sarraytype,4,5122]
  Vec2iArray* {.header: "Array", importcpp: "osg::Vec2iArray".} = Templatearray[Vec2i,Vec2iarraytype,2,5124]
  Vec3iArray* {.header: "Array", importcpp: "osg::Vec3iArray".} = Templatearray[Vec3i,Vec3iarraytype,3,5124]
  Vec4iArray* {.header: "Array", importcpp: "osg::Vec4iArray".} = Templatearray[Vec4i,Vec4iarraytype,4,5124]
  Vec2ubArray* {.header: "Array", importcpp: "osg::Vec2ubArray".} = Templatearray[Vec2ub,Vec2ubarraytype,2,5121]
  Vec3ubArray* {.header: "Array", importcpp: "osg::Vec3ubArray".} = Templatearray[Vec3ub,Vec3ubarraytype,3,5121]
  Vec2usArray* {.header: "Array", importcpp: "osg::Vec2usArray".} = Templatearray[Vec2us,Vec2usarraytype,2,5123]
  Vec3usArray* {.header: "Array", importcpp: "osg::Vec3usArray".} = Templatearray[Vec3us,Vec3usarraytype,3,5123]
  Vec4usArray* {.header: "Array", importcpp: "osg::Vec4usArray".} = Templatearray[Vec4us,Vec4usarraytype,4,5123]
  Vec2uiArray* {.header: "Array", importcpp: "osg::Vec2uiArray".} = Templatearray[Vec2ui,Vec2uiarraytype,2,5125]
  Vec3uiArray* {.header: "Array", importcpp: "osg::Vec3uiArray".} = Templatearray[Vec3ui,Vec3uiarraytype,3,5125]
  Vec4uiArray* {.header: "Array", importcpp: "osg::Vec4uiArray".} = Templatearray[Vec4ui,Vec4uiarraytype,4,5125]
  MatrixfArray* {.header: "Array", importcpp: "osg::MatrixfArray".} = Templatearray[Matrixf,Matrixarraytype,16,5126]
  MatrixdArray* {.header: "Array", importcpp: "osg::MatrixdArray".} = Templatearray[Matrixd,Matrixdarraytype,16,5130]
  QuatArray* {.header: "Array", importcpp: "osg::QuatArray".} = Templatearray[Quat,Quatarraytype,4,5130]


{.push header: "Array".}

proc constructArray*(arrayType: Type, dataSize: GLint, dataType: GLenum = 0, binding: Binding): Array {.constructor,importcpp: "osg::Array::Array(@)".}

proc constructArray*(array: Array, copyop: Copyop = SHALLOW_COPY): Array {.constructor,importcpp: "osg::Array::Array(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](ta: TemplateArray[T, ARRAYTYPE, DataSize, DataType], copyop: Copyop = SHALLOW_COPY): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint, `ptr`: ptr T): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding, no: cuint): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding, no: cuint, `ptr`: ptr T): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructIndexArray*(arrayType: Type, dataSize: GLint, dataType: GLenum = 0): IndexArray {.constructor,importcpp: "osg::IndexArray::IndexArray(@)".}

proc constructIndexArray*(array: Array, copyop: Copyop = SHALLOW_COPY): IndexArray {.constructor,importcpp: "osg::IndexArray::IndexArray(@)".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](ta: TemplateIndexArray[T, ARRAYTYPE, DataSize, DataType], copyop: Copyop = SHALLOW_COPY): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint, `ptr`: ptr T): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructArrayVisitor*(): ArrayVisitor {.constructor,importcpp: "osg::ArrayVisitor::ArrayVisitor".}

proc constructConstArrayVisitor*(): ConstArrayVisitor {.constructor,importcpp: "osg::ConstArrayVisitor::ConstArrayVisitor".}

proc constructValueVisitor*(): ValueVisitor {.constructor,importcpp: "osg::ValueVisitor::ValueVisitor".}

proc constructConstValueVisitor*(): ConstValueVisitor {.constructor,importcpp: "osg::ConstValueVisitor::ConstValueVisitor".}

proc isSameKindAs*(this: Array, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Array): cstring  {.importcpp: "libraryName".}

proc className*(this: Array): cstring  {.importcpp: "className".}
    ## Get the class name of this array. Defined in src/osg/Array.cpp for all
    ## concrete array types listed below --- doesn't use traits.

proc accept*(this: var Array, Arrayvisitor)  {.importcpp: "accept".}

proc accept*(this: Array, Constarrayvisitor)  {.importcpp: "accept".}

proc accept*(this: var Array, index: cuint, Valuevisitor)  {.importcpp: "accept".}

proc accept*(this: Array, index: cuint, Constvaluevisitor)  {.importcpp: "accept".}

proc compare*(this: Array, lhs: cuint, rhs: cuint): cint  {.importcpp: "compare".}
    ## Return -1 if lhs element is less than rhs element, 0 if equal, 1 if
    ## lhs element is greater than rhs element.

proc getType*(this: Array): Type  {.importcpp: "getType".}

proc getDataSize*(this: Array): GLint  {.importcpp: "getDataSize".}

proc getDataType*(this: Array): GLenum  {.importcpp: "getDataType".}

proc asArray*(this: var Array): ptr Array   {.importcpp: "asArray".}

proc asArray*(this: Array): ptr Array   {.importcpp: "asArray".}

proc getElementSize*(this: Array): cuint  {.importcpp: "getElementSize".}

proc getDataPointer*(this: Array): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getDataPointer*(this: Array, index: cuint): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: Array): cuint  {.importcpp: "getTotalDataSize".}

proc getNumElements*(this: Array): cuint  {.importcpp: "getNumElements".}

proc reserveArray*(this: var Array, num: cuint)  {.importcpp: "reserveArray".}

proc resizeArray*(this: var Array, num: cuint)  {.importcpp: "resizeArray".}

proc setBinding*(this: var Array, binding: Binding)  {.importcpp: "setBinding".}
    ## Specify how this array should be passed to OpenGL.

proc getBinding*(this: Array): Binding  {.importcpp: "getBinding".}
    ## Get how this array should be passed to OpenGL.

proc setNormalize*(this: var Array, normalize: bool)  {.importcpp: "setNormalize".}
    ## Specify whether the array data should be normalized by OpenGL.

proc getNormalize*(this: Array): bool  {.importcpp: "getNormalize".}
    ## Get whether the array data should be normalized by OpenGL.

proc setPreserveDataType*(this: var Array, preserve: bool)  {.importcpp: "setPreserveDataType".}
    ## Set hint to ask that the array data is passed via integer or double,
    ## or normal setVertexAttribPointer function.

proc getPreserveDataType*(this: Array): bool  {.importcpp: "getPreserveDataType".}
    ## Get hint to ask that the array data is passed via integer or double,
    ## or normal setVertexAttribPointer function.

proc trim*(this: var Array)  {.importcpp: "trim".}
    ## Frees unused space on this vector - i.e. the difference between size()
    ## and max_size() of the underlying vector.

proc setVertexBufferObject*(this: var Array, vbo: ptr Vertexbufferobject )  {.importcpp: "setVertexBufferObject".}
    ## Set the VertexBufferObject.

proc getVertexBufferObject*(this: var Array): ptr Vertexbufferobject   {.importcpp: "getVertexBufferObject".}
    ## Get the VertexBufferObject. If no VBO is assigned returns NULL

proc getVertexBufferObject*(this: Array): ptr Vertexbufferobject   {.importcpp: "getVertexBufferObject".}
    ## Get the const VertexBufferObject. If no VBO is assigned returns NULL

proc `=`*(this: var TemplateArray, array: TemplateArray[T, ARRAYTYPE, DataSize, DataType]): TemplateArray[T, ARRAYTYPE, DataSize, DataType]  {.importcpp: "# = #".}

proc cloneType*(this: TemplateArray): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TemplateArray, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc accept*(this: var TemplateArray, av: Arrayvisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, av: Constarrayvisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateArray, index: cuint, vv: Valuevisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, index: cuint, vv: Constvaluevisitor)  {.importcpp: "accept".}

proc compare*(this: TemplateArray, lhs: cuint, rhs: cuint): cint  {.importcpp: "compare".}

proc trim*(this: var TemplateArray)  {.importcpp: "trim".}
    ## Frees unused space on this vector - i.e. the difference between size()
    ## and max_size() of the underlying vector.

proc getElementSize*(this: TemplateArray): cuint  {.importcpp: "getElementSize".}

proc getDataPointer*(this: TemplateArray): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getDataPointer*(this: TemplateArray, index: cuint): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: TemplateArray): cuint  {.importcpp: "getTotalDataSize".}

proc getNumElements*(this: TemplateArray): cuint  {.importcpp: "getNumElements".}

proc reserveArray*(this: var TemplateArray, num: cuint)  {.importcpp: "reserveArray".}

proc resizeArray*(this: var TemplateArray, num: cuint)  {.importcpp: "resizeArray".}

proc isSameKindAs*(this: IndexArray, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc index*(this: IndexArray, pos: cuint): cuint  {.importcpp: "index".}

proc `=`*(this: var TemplateIndexArray, array: TemplateIndexArray[T, ARRAYTYPE, DataSize, DataType]): TemplateIndexArray[T, ARRAYTYPE, DataSize, DataType]  {.importcpp: "# = #".}

proc cloneType*(this: TemplateIndexArray): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TemplateIndexArray, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc accept*(this: var TemplateIndexArray, av: Arrayvisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, av: Constarrayvisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, index: cuint, vv: Valuevisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, index: cuint, vv: Constvaluevisitor)  {.importcpp: "accept".}

proc compare*(this: TemplateIndexArray, lhs: cuint, rhs: cuint): cint  {.importcpp: "compare".}

proc trim*(this: var TemplateIndexArray)  {.importcpp: "trim".}
    ## Frees unused space on this vector - i.e. the difference between size()
    ## and max_size() of the underlying vector.

proc getElementSize*(this: TemplateIndexArray): cuint  {.importcpp: "getElementSize".}

proc getDataPointer*(this: TemplateIndexArray): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getDataPointer*(this: TemplateIndexArray, index: cuint): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: TemplateIndexArray): cuint  {.importcpp: "getTotalDataSize".}

proc getNumElements*(this: TemplateIndexArray): cuint  {.importcpp: "getNumElements".}

proc reserveArray*(this: var TemplateIndexArray, num: cuint)  {.importcpp: "reserveArray".}

proc resizeArray*(this: var TemplateIndexArray, num: cuint)  {.importcpp: "resizeArray".}

proc index*(this: TemplateIndexArray, pos: cuint): cuint  {.importcpp: "index".}

proc apply*(this: var ArrayVisitor, Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Bytearray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Shortarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Intarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Ubytearray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Ushortarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Uintarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Floatarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Doublearray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2barray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3barray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4barray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2sarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3sarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4sarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2iarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3iarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4iarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2ubarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3ubarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4ubarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2usarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3usarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4usarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2uiarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3uiarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4uiarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec2darray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec3darray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Vec4darray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Matrixfarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Matrixdarray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Uint64array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, Int64array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Bytearray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Shortarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Intarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Ubytearray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Ushortarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Uintarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Floatarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Doublearray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2barray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3barray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4barray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2sarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3sarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4sarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2iarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3iarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4iarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2ubarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3ubarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4ubarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2usarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3usarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4usarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2uiarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3uiarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4uiarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec2darray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec3darray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Vec4darray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Matrixfarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Matrixdarray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Uint64array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, Int64array)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLshort)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLint)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLushort)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLuint)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLfloat)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLdouble)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec2d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec3d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Vec4d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Matrixf)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Matrixd)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, Quat)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLuint64)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, var GLint64)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLshort)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLint)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLushort)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLuint)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLfloat)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLdouble)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec2d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec3d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Vec4d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Matrixf)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Matrixd)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, Quat)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLuint64)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, GLint64)  {.importcpp: "apply".}

proc accept*(this: var TemplateArray, av: Arrayvisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, av: Constarrayvisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateArray, index: cuint, vv: Valuevisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, index: cuint, vv: Constvaluevisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, av: Arrayvisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, av: Constarrayvisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, index: cuint, vv: Valuevisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, index: cuint, vv: Constvaluevisitor)  {.importcpp: "accept".}

{.pop.}  # header: "Array"
