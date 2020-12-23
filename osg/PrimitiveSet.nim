import gl # Provides GLenum, GLvoid, GLint, GLubyte, GLushort, GLuint, GLsizei
import CopyOp # Provides CopyOp
import Object # Provides Object
import Vec2d # Provides Vec2d
import Vec3d # Provides Vec3d
import Vec4d # Provides Vec4d
import Vec2 # Provides Vec2
import Vec3 # Provides Vec3
import Vec4 # Provides Vec4
import BufferObject # Provides ElementBufferObject
import State # Provides State


type
  # Enums
  Type* {.size:sizeof(cuint),header: "PrimitiveSet", importcpp: "osg::PrimitiveSet::Type".} = enum
    PrimitiveType = 0,
    DrawArraysPrimitiveType = 1,
    DrawArrayLengthsPrimitiveType = 2,
    DrawElementsUBytePrimitiveType = 3,
    DrawElementsUShortPrimitiveType = 4,
    DrawElementsUIntPrimitiveType = 5,
    MultiDrawArraysPrimitiveType = 6,
    DrawArraysIndirectPrimitiveType = 7,
    DrawElementsUByteIndirectPrimitiveType = 8,
    DrawElementsUShortIndirectPrimitiveType = 9,
    DrawElementsUIntIndirectPrimitiveType = 10,
    MultiDrawArraysIndirectPrimitiveType = 11,
    MultiDrawElementsUByteIndirectPrimitiveType = 12,
    MultiDrawElementsUShortIndirectPrimitiveType = 13,
    MultiDrawElementsUIntIndirectPrimitiveType = 14

  Mode* {.size:sizeof(cuint),header: "PrimitiveSet", importcpp: "osg::PrimitiveSet::Mode".} = enum
    POINTS = 0,
    LINES = 1,
    LINE_STRIP = 3,
    LINE_LOOP = 2,
    TRIANGLES = 4,
    TRIANGLE_STRIP = 5,
    TRIANGLE_FAN = 6,
    QUADS = 7,
    QUAD_STRIP = 8,
    POLYGON = 9,
    LINES_ADJACENCY = 10,
    LINE_STRIP_ADJACENCY = 11,
    TRIANGLES_ADJACENCY = 12,
    TRIANGLE_STRIP_ADJACENCY = 13,
    PATCHES = 14

  # Typedefs
  VectorGLsizei* {.header: "PrimitiveSet", importcpp: "osg::VectorGLsizei".} = MixinVector[GLsizei]
  VectorGLubyte* {.header: "PrimitiveSet", importcpp: "osg::VectorGLubyte".} = MixinVector[GLubyte]
  VectorGLushort* {.header: "PrimitiveSet", importcpp: "osg::VectorGLushort".} = MixinVector[GLushort]
  VectorGLuint* {.header: "PrimitiveSet", importcpp: "osg::VectorGLuint".} = MixinVector[GLuint]
  Vector_type* {.header: "PrimitiveSet", importcpp: "osg::DrawArrayLengths::vector_type".} = Vectorglsizei
  Vector_type* {.header: "PrimitiveSet", importcpp: "osg::DrawElementsUByte::vector_type".} = Vectorglubyte
  Vector_type* {.header: "PrimitiveSet", importcpp: "osg::DrawElementsUShort::vector_type".} = Vectorglushort
  Vector_type* {.header: "PrimitiveSet", importcpp: "osg::DrawElementsUInt::vector_type".} = Vectorgluint
  Firsts* {.header: "PrimitiveSet", importcpp: "osg::MultiDrawArrays::Firsts".} = cint
  Counts* {.header: "PrimitiveSet", importcpp: "osg::MultiDrawArrays::Counts".} = cint
{.push header: "PrimitiveSet".}


# Constructors and methods
proc constructPrimitiveSet*(primType: Type, mode: GLenum = 0, numInstances: cint): PrimitiveSet {.constructor,importcpp: "PrimitiveSet(@)".}

proc constructPrimitiveSet*(prim: Primitiveset, copyop: Copyop = SHALLOW_COPY): PrimitiveSet {.constructor,importcpp: "PrimitiveSet(@)".}

proc constructDrawArrays*(mode: GLenum = 0): DrawArrays {.constructor,importcpp: "DrawArrays(@)".}

proc constructDrawArrays*(mode: GLenum, first: GLint, count: GLsizei, numInstances: cint): DrawArrays {.constructor,importcpp: "DrawArrays(@)".}

proc constructDrawArrays*(da: Drawarrays, copyop: Copyop = SHALLOW_COPY): DrawArrays {.constructor,importcpp: "DrawArrays(@)".}

proc constructDrawArrayLengths*(mode: GLenum = 0): DrawArrayLengths {.constructor,importcpp: "DrawArrayLengths(@)".}

proc constructDrawArrayLengths*(dal: Drawarraylengths, copyop: Copyop = SHALLOW_COPY): DrawArrayLengths {.constructor,importcpp: "DrawArrayLengths(@)".}

proc constructDrawArrayLengths*(mode: GLenum, first: GLint, no: cuint, `ptr`: ptr GLsizei): DrawArrayLengths {.constructor,importcpp: "DrawArrayLengths(@)".}

proc constructDrawArrayLengths*(mode: GLenum, first: GLint, no: cuint): DrawArrayLengths {.constructor,importcpp: "DrawArrayLengths(@)".}

proc constructDrawArrayLengths*(mode: GLenum, first: GLint): DrawArrayLengths {.constructor,importcpp: "DrawArrayLengths(@)".}

proc constructDrawElements*(primType: Type, mode: GLenum = 0, numInstances: cint): DrawElements {.constructor,importcpp: "DrawElements(@)".}

proc constructDrawElements*(copy: Drawelements, copyop: Copyop = SHALLOW_COPY): DrawElements {.constructor,importcpp: "DrawElements(@)".}

proc constructDrawElementsUByte*(mode: GLenum = 0): DrawElementsUByte {.constructor,importcpp: "DrawElementsUByte(@)".}

proc constructDrawElementsUByte*(array: Drawelementsubyte, copyop: Copyop = SHALLOW_COPY): DrawElementsUByte {.constructor,importcpp: "DrawElementsUByte(@)".}

proc constructDrawElementsUByte*(mode: GLenum, no: cuint, `ptr`: ptr GLubyte, numInstances: cint): DrawElementsUByte {.constructor,importcpp: "DrawElementsUByte(@)".}
    ## 

proc constructDrawElementsUByte*(mode: GLenum, no: cuint): DrawElementsUByte {.constructor,importcpp: "DrawElementsUByte(@)".}
    ## 

proc constructDrawElementsUShort*(mode: GLenum = 0): DrawElementsUShort {.constructor,importcpp: "DrawElementsUShort(@)".}

proc constructDrawElementsUShort*(array: Drawelementsushort, copyop: Copyop = SHALLOW_COPY): DrawElementsUShort {.constructor,importcpp: "DrawElementsUShort(@)".}

proc constructDrawElementsUShort*(mode: GLenum, no: cuint, `ptr`: ptr GLushort, numInstances: cint): DrawElementsUShort {.constructor,importcpp: "DrawElementsUShort(@)".}
    ## 

proc constructDrawElementsUShort*(mode: GLenum, no: cuint): DrawElementsUShort {.constructor,importcpp: "DrawElementsUShort(@)".}
    ## 

proc constructDrawElementsUInt*(mode: GLenum = 0): DrawElementsUInt {.constructor,importcpp: "DrawElementsUInt(@)".}

proc constructDrawElementsUInt*(array: Drawelementsuint, copyop: Copyop = SHALLOW_COPY): DrawElementsUInt {.constructor,importcpp: "DrawElementsUInt(@)".}

proc constructDrawElementsUInt*(mode: GLenum, no: cuint, `ptr`: ptr GLuint, numInstances: cint): DrawElementsUInt {.constructor,importcpp: "DrawElementsUInt(@)".}
    ## 

proc constructDrawElementsUInt*(mode: GLenum, no: cuint): DrawElementsUInt {.constructor,importcpp: "DrawElementsUInt(@)".}
    ## 

proc constructMultiDrawArrays*(mode: GLenum = 0): MultiDrawArrays {.constructor,importcpp: "MultiDrawArrays(@)".}

proc constructMultiDrawArrays*(dal: Multidrawarrays, copyop: Copyop = SHALLOW_COPY): MultiDrawArrays {.constructor,importcpp: "MultiDrawArrays(@)".}

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec2 )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec4 )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec2d )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec3d )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc setVertexArray*(this: var PrimitiveFunctor, count: cuint, vertices: ptr Vec4d )  {.importcpp: "setVertexArray".}
    ## Sets the array of vertices used to describe the primitives. Somehow
    ## mimics the OpenGL glVertexPointer() function.

proc drawArrays*(this: var PrimitiveFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}
    ## Mimics the OpenGL glDrawArrays() function.

proc drawElements*(this: var PrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}
    ## Mimics the OpenGL glDrawElements() function.

proc drawElements*(this: var PrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}
    ## Mimics the OpenGL glDrawElements() function.

proc drawElements*(this: var PrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}
    ## Mimics the OpenGL glDrawElements() function.

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var PrimitiveIndexFunctor, count: cuint, vertices: ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var PrimitiveIndexFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var PrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var PrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var PrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

proc isSameKindAs*(this: PrimitiveSet, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PrimitiveSet): cstring  {.importcpp: "libraryName".}

proc className*(this: PrimitiveSet): cstring  {.importcpp: "className".}

proc getType*(this: PrimitiveSet): Type  {.importcpp: "getType".}

proc asPrimitiveSet*(this: var PrimitiveSet): ptr Primitiveset   {.importcpp: "asPrimitiveSet".}

proc asPrimitiveSet*(this: PrimitiveSet): ptr Primitiveset   {.importcpp: "asPrimitiveSet".}

proc getDataPointer*(this: PrimitiveSet): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: PrimitiveSet): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: PrimitiveSet): bool  {.importcpp: "supportsBufferObject".}

proc getDrawElements*(this: var PrimitiveSet): ptr Drawelements   {.importcpp: "getDrawElements".}

proc getDrawElements*(this: PrimitiveSet): ptr Drawelements   {.importcpp: "getDrawElements".}

proc setNumInstances*(this: var PrimitiveSet, n: cint)  {.importcpp: "setNumInstances".}

proc getNumInstances*(this: PrimitiveSet): cint  {.importcpp: "getNumInstances".}

proc setMode*(this: var PrimitiveSet, mode: GLenum)  {.importcpp: "setMode".}

proc getMode*(this: PrimitiveSet): GLenum  {.importcpp: "getMode".}

proc draw*(this: PrimitiveSet, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: PrimitiveSet, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: PrimitiveSet, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc index*(this: PrimitiveSet, pos: cuint): cuint  {.importcpp: "index".}

proc getNumIndices*(this: PrimitiveSet): cuint  {.importcpp: "getNumIndices".}

proc offsetIndices*(this: var PrimitiveSet, offset: cint)  {.importcpp: "offsetIndices".}

proc getNumPrimitives*(this: PrimitiveSet): cuint  {.importcpp: "getNumPrimitives".}

proc computeRange*(this: PrimitiveSet)  {.importcpp: "computeRange".}

proc cloneType*(this: DrawArrays): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawArrays, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawArrays, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawArrays): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawArrays): cstring  {.importcpp: "className".}

proc set*(this: var DrawArrays, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "set".}

proc setFirst*(this: var DrawArrays, first: GLint)  {.importcpp: "setFirst".}

proc getFirst*(this: DrawArrays): GLint  {.importcpp: "getFirst".}

proc setCount*(this: var DrawArrays, count: GLsizei)  {.importcpp: "setCount".}

proc getCount*(this: DrawArrays): GLsizei  {.importcpp: "getCount".}

proc draw*(this: DrawArrays, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawArrays, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawArrays, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawArrays): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawArrays, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawArrays, offset: cint)  {.importcpp: "offsetIndices".}

proc cloneType*(this: DrawArrayLengths): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawArrayLengths, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawArrayLengths, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawArrayLengths): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawArrayLengths): cstring  {.importcpp: "className".}

proc setFirst*(this: var DrawArrayLengths, first: GLint)  {.importcpp: "setFirst".}

proc getFirst*(this: DrawArrayLengths): GLint  {.importcpp: "getFirst".}

proc draw*(this: DrawArrayLengths, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawArrayLengths, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawArrayLengths, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawArrayLengths): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawArrayLengths, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawArrayLengths, offset: cint)  {.importcpp: "offsetIndices".}

proc getNumPrimitives*(this: DrawArrayLengths): cuint  {.importcpp: "getNumPrimitives".}

proc getDrawElements*(this: var DrawElements): ptr Drawelements   {.importcpp: "getDrawElements".}

proc getDrawElements*(this: DrawElements): ptr Drawelements   {.importcpp: "getDrawElements".}

proc setElementBufferObject*(this: var DrawElements, ebo: ptr Elementbufferobject )  {.importcpp: "setElementBufferObject".}
    ## Set the ElementBufferObject.

proc getElementBufferObject*(this: var DrawElements): ptr Elementbufferobject   {.importcpp: "getElementBufferObject".}
    ## Get the ElementBufferObject. If no EBO is assigned returns NULL

proc getElementBufferObject*(this: DrawElements): ptr Elementbufferobject   {.importcpp: "getElementBufferObject".}
    ## Get the const ElementBufferObject. If no EBO is assigned returns NULL

proc getDataType*(this: var DrawElements): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElements, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElements, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElements, cuint, cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElements, cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElements, cuint)  {.importcpp: "addElement".}

proc cloneType*(this: DrawElementsUByte): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsUByte, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsUByte, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsUByte): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsUByte): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsUByte): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsUByte): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsUByte): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsUByte, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsUByte, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsUByte, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsUByte): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsUByte, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsUByte, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsUByte): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsUByte, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsUByte, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsUByte, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsUByte, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsUByte, v: cuint)  {.importcpp: "addElement".}

proc drawElementsUShort*[InputIterator](this: var DrawElementsUShort, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "DrawElementsUShort".}

proc cloneType*(this: DrawElementsUShort): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsUShort, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsUShort, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsUShort): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsUShort): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsUShort): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsUShort): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsUShort): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsUShort, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsUShort, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsUShort, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsUShort): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsUShort, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsUShort, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsUShort): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsUShort, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsUShort, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsUShort, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsUShort, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsUShort, v: cuint)  {.importcpp: "addElement".}

proc drawElementsUInt*[InputIterator](this: var DrawElementsUInt, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "DrawElementsUInt".}

proc cloneType*(this: DrawElementsUInt): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsUInt, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsUInt, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsUInt): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsUInt): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsUInt): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsUInt): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsUInt): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsUInt, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsUInt, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsUInt, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsUInt): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsUInt, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsUInt, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsUInt): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsUInt, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsUInt, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsUInt, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsUInt, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsUInt, v: cuint)  {.importcpp: "addElement".}

proc cloneType*(this: MultiDrawArrays): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MultiDrawArrays, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MultiDrawArrays, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: MultiDrawArrays): cstring  {.importcpp: "libraryName".}

proc className*(this: MultiDrawArrays): cstring  {.importcpp: "className".}

proc draw*(this: MultiDrawArrays, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: MultiDrawArrays, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: MultiDrawArrays, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: MultiDrawArrays): cuint  {.importcpp: "getNumIndices".}

proc index*(this: MultiDrawArrays, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var MultiDrawArrays, offset: cint)  {.importcpp: "offsetIndices".}

proc getNumPrimitives*(this: MultiDrawArrays): cuint  {.importcpp: "getNumPrimitives".}

proc setFirsts*(this: var MultiDrawArrays, firsts: Firsts)  {.importcpp: "setFirsts".}

proc getFirsts*(this: var MultiDrawArrays): Firsts  {.importcpp: "getFirsts".}

proc getFirsts*(this: MultiDrawArrays): Firsts  {.importcpp: "getFirsts".}

proc setCounts*(this: var MultiDrawArrays, firsts: Counts)  {.importcpp: "setCounts".}

proc getCounts*(this: var MultiDrawArrays): Counts  {.importcpp: "getCounts".}

proc getCounts*(this: MultiDrawArrays): Counts  {.importcpp: "getCounts".}

proc add*(this: var MultiDrawArrays, first: GLint, count: GLsizei)  {.importcpp: "add".}

{.pop.} # header: "PrimitiveSet
