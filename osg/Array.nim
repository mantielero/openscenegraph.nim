import osg_types
  # File: Vec4us  was providing: osg::Vec4us
  # File: Vec3  was providing: osg::Vec3
  # File: Vec3i  was providing: osg::Vec3i
  # File: Vec4  was providing: osg::Vec4
  # File: Vec3s  was providing: osg::Vec3s
  # File: Vec2us  was providing: osg::Vec2us
  # File: Vec2s  was providing: osg::Vec2s
  # File: Vec2b  was providing: osg::Vec2b
  # File: Object  was providing: osg::Object
  # File: BufferObject  was providing: osg::VertexBufferObject
  # File: Vec3ui  was providing: osg::Vec3ui
  # File: Matrixf  was providing: osg::Matrixf
  # File: Vec2ub  was providing: osg::Vec2ub
  # File: TexGen  was providing: osg::TexGen::Coord
  # File: Vec2ui  was providing: osg::Vec2ui
  # File: Vec3us  was providing: osg::Vec3us
  # File: Vec2  was providing: osg::Vec2
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrixd  was providing: osg::Matrixd
  # File: Vec3b  was providing: osg::Vec3b
  # File: Vec4b  was providing: osg::Vec4b
  # File: Vec4ui  was providing: osg::Vec4ui
  # File: Vec3ub  was providing: osg::Vec3ub
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec4s  was providing: osg::Vec4s
  # File: Vec2i  was providing: osg::Vec2i
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
  # File: Quat  was providing: osg::Quat
  # File: Vec4ub  was providing: osg::Vec4ub
  # File: Vec4i  was providing: osg::Vec4i
type
  ArrayVisitor* {.header: "Array", importcpp: "osg::ArrayVisitor", byref.} = object

  ConstArrayVisitor* {.header: "Array", importcpp: "osg::ConstArrayVisitor", byref.} = object

  ValueVisitor* {.header: "Array", importcpp: "osg::ValueVisitor", byref.} = object

  ConstValueVisitor* {.header: "Array", importcpp: "osg::ConstValueVisitor", byref.} = object

  ElementDataType* {.header: "Array", importcpp: "osg::TemplateIndexArray::ElementDataType".} = T
  Vec2bArray* {.header: "Array", importcpp: "osg::Vec2bArray".} = TemplateArray[Vec2b,Vec2bArrayType,2,5120]
  Vec3bArray* {.header: "Array", importcpp: "osg::Vec3bArray".} = TemplateArray[Vec3b,Vec3bArrayType,3,5120]
  Vec4bArray* {.header: "Array", importcpp: "osg::Vec4bArray".} = TemplateArray[Vec4b,Vec4bArrayType,4,5120]
  Vec2sArray* {.header: "Array", importcpp: "osg::Vec2sArray".} = TemplateArray[Vec2s,Vec2sArrayType,2,5122]
  Vec3sArray* {.header: "Array", importcpp: "osg::Vec3sArray".} = TemplateArray[Vec3s,Vec3sArrayType,3,5122]
  Vec4sArray* {.header: "Array", importcpp: "osg::Vec4sArray".} = TemplateArray[Vec4s,Vec4sArrayType,4,5122]
  Vec2iArray* {.header: "Array", importcpp: "osg::Vec2iArray".} = TemplateArray[Vec2i,Vec2iArrayType,2,5124]
  Vec3iArray* {.header: "Array", importcpp: "osg::Vec3iArray".} = TemplateArray[Vec3i,Vec3iArrayType,3,5124]
  Vec4iArray* {.header: "Array", importcpp: "osg::Vec4iArray".} = TemplateArray[Vec4i,Vec4iArrayType,4,5124]
  Vec2ubArray* {.header: "Array", importcpp: "osg::Vec2ubArray".} = TemplateArray[Vec2ub,Vec2ubArrayType,2,5121]
  Vec3ubArray* {.header: "Array", importcpp: "osg::Vec3ubArray".} = TemplateArray[Vec3ub,Vec3ubArrayType,3,5121]
  Vec2usArray* {.header: "Array", importcpp: "osg::Vec2usArray".} = TemplateArray[Vec2us,Vec2usArrayType,2,5123]
  Vec3usArray* {.header: "Array", importcpp: "osg::Vec3usArray".} = TemplateArray[Vec3us,Vec3usArrayType,3,5123]
  Vec4usArray* {.header: "Array", importcpp: "osg::Vec4usArray".} = TemplateArray[Vec4us,Vec4usArrayType,4,5123]
  Vec2uiArray* {.header: "Array", importcpp: "osg::Vec2uiArray".} = TemplateArray[Vec2ui,Vec2uiArrayType,2,5125]
  Vec3uiArray* {.header: "Array", importcpp: "osg::Vec3uiArray".} = TemplateArray[Vec3ui,Vec3uiArrayType,3,5125]
  Vec4uiArray* {.header: "Array", importcpp: "osg::Vec4uiArray".} = TemplateArray[Vec4ui,Vec4uiArrayType,4,5125]
  MatrixfArray* {.header: "Array", importcpp: "osg::MatrixfArray".} = TemplateArray[Matrixf,MatrixArrayType,16,5126]
  MatrixdArray* {.header: "Array", importcpp: "osg::MatrixdArray".} = TemplateArray[Matrixd,MatrixdArrayType,16,5130]
  QuatArray* {.header: "Array", importcpp: "osg::QuatArray".} = TemplateArray[Quat,QuatArrayType,4,5130]


{.push header: "Array".}

proc constructArray*(arrayType: ArrayType, dataSize: GLint, dataType: GLenum = 0, binding: Binding): Array {.constructor,importcpp: "osg::Array::Array(@)".}

proc constructArray*(array: Array, copyop: CopyOp = SHALLOW_COPY): Array {.constructor,importcpp: "osg::Array::Array(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](ta: TemplateArray[T, ARRAYTYPE, DataSize, DataType], copyop: CopyOp = SHALLOW_COPY): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](no: cuint, `ptr`: ptr T): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding, no: cuint): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructTemplateArray*[T, ARRAYTYPE, DataSize, DataType](binding: Binding, no: cuint, `ptr`: ptr T): TemplateArray {.constructor,importcpp: "osg::TemplateArray::TemplateArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

proc constructIndexArray*(arrayType: ArrayType, dataSize: GLint, dataType: GLenum = 0): IndexArray {.constructor,importcpp: "osg::IndexArray::IndexArray(@)".}

proc constructIndexArray*(array: Array, copyop: CopyOp = SHALLOW_COPY): IndexArray {.constructor,importcpp: "osg::IndexArray::IndexArray(@)".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>".}

proc constructTemplateIndexArray*[T, ARRAYTYPE, DataSize, DataType](ta: TemplateIndexArray[T, ARRAYTYPE, DataSize, DataType], copyop: CopyOp = SHALLOW_COPY): TemplateIndexArray {.constructor,importcpp: "osg::TemplateIndexArray::TemplateIndexArray<T, ARRAYTYPE, DataSize, DataType>(@)".}

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

proc accept*(this: var Array, a00: ArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: Array, a00: ConstArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: var Array, index: cuint, a01: ValueVisitor)  {.importcpp: "accept".}

proc accept*(this: Array, index: cuint, a01: ConstValueVisitor)  {.importcpp: "accept".}

proc compare*(this: Array, lhs: cuint, rhs: cuint): cint  {.importcpp: "compare".}
    ## Return -1 if lhs element is less than rhs element, 0 if equal, 1 if
    ## lhs element is greater than rhs element.

proc getType*(this: Array): ArrayType  {.importcpp: "getType".}

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

proc setVertexBufferObject*(this: var Array, vbo: ptr VertexBufferObject )  {.importcpp: "setVertexBufferObject".}
    ## Set the VertexBufferObject.

proc getVertexBufferObject*(this: var Array): ptr VertexBufferObject   {.importcpp: "getVertexBufferObject".}
    ## Get the VertexBufferObject. If no VBO is assigned returns NULL

proc getVertexBufferObject*(this: Array): ptr VertexBufferObject   {.importcpp: "getVertexBufferObject".}
    ## Get the const VertexBufferObject. If no VBO is assigned returns NULL

proc `=`*(this: var TemplateArray, array: TemplateArray[T, ARRAYTYPE, DataSize, DataType]): TemplateArray[T, ARRAYTYPE, DataSize, DataType]  {.importcpp: "# = #".}

proc cloneType*(this: TemplateArray): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TemplateArray, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc accept*(this: var TemplateArray, av: ArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, av: ConstArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateArray, index: cuint, vv: ValueVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, index: cuint, vv: ConstValueVisitor)  {.importcpp: "accept".}

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

proc clone*(this: TemplateIndexArray, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc accept*(this: var TemplateIndexArray, av: ArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, av: ConstArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, index: cuint, vv: ValueVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, index: cuint, vv: ConstValueVisitor)  {.importcpp: "accept".}

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

proc apply*(this: var ArrayVisitor, a00: Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: ByteArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: ShortArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: IntArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: UByteArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: UShortArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: UIntArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: FloatArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: DoubleArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2bArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3bArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4bArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2sArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3sArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4sArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2iArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3iArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4iArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2ubArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3ubArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4ubArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2usArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3usArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4usArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2uiArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3uiArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4uiArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec2dArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec3dArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Vec4dArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: MatrixfArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: MatrixdArray)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: UInt64Array)  {.importcpp: "apply".}

proc apply*(this: var ArrayVisitor, a00: Int64Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: ByteArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: ShortArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: IntArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: UByteArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: UShortArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: UIntArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: FloatArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: DoubleArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2bArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3bArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4bArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2sArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3sArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4sArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2iArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3iArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4iArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2ubArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3ubArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4ubArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2usArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3usArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4usArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2uiArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3uiArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4uiArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec2dArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec3dArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Vec4dArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: MatrixfArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: MatrixdArray)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: UInt64Array)  {.importcpp: "apply".}

proc apply*(this: var ConstArrayVisitor, a00: Int64Array)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLshort)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLint)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLushort)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLuint)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLfloat)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLdouble)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4b)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4s)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4i)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4us)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec2d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec3d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Vec4d)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Matrixf)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Matrixd)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: Quat)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLuint64)  {.importcpp: "apply".}

proc apply*(this: var ValueVisitor, a00: var GLint64)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLshort)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLint)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLushort)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLuint)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLfloat)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLdouble)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4b)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4s)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4i)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4us)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec2d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec3d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Vec4d)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Matrixf)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Matrixd)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: Quat)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLuint64)  {.importcpp: "apply".}

proc apply*(this: var ConstValueVisitor, a00: GLint64)  {.importcpp: "apply".}

proc accept*(this: var TemplateArray, av: ArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, av: ConstArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateArray, index: cuint, vv: ValueVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateArray, index: cuint, vv: ConstValueVisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, av: ArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, av: ConstArrayVisitor)  {.importcpp: "accept".}

proc accept*(this: var TemplateIndexArray, index: cuint, vv: ValueVisitor)  {.importcpp: "accept".}

proc accept*(this: TemplateIndexArray, index: cuint, vv: ConstValueVisitor)  {.importcpp: "accept".}

{.pop.}  # header: "Array"
