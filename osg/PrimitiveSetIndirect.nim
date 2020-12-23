import gl # Provides GLenum, GLvoid, GLubyte, GLushort, GLuint, GLsizei
import CopyOp # Provides CopyOp
import Object # Provides Object
import PrimitiveSet # Provides VectorGLubyte, VectorGLushort, VectorGLuint, PrimitiveFunctor, PrimitiveIndexFunctor, Type
import State # Provides State


type
  # Typedefs
  Vector_type* {.header: "PrimitiveSetIndirect", importcpp: "osg::DrawElementsIndirectUByte::vector_type".} = Vectorglubyte
  Vector_type* {.header: "PrimitiveSetIndirect", importcpp: "osg::DrawElementsIndirectUShort::vector_type".} = Vectorglushort
  Vector_type* {.header: "PrimitiveSetIndirect", importcpp: "osg::DrawElementsIndirectUInt::vector_type".} = Vectorgluint
{.push header: "PrimitiveSetIndirect".}


# Constructors and methods
proc constructIndirectCommandDrawArrays*(): IndirectCommandDrawArrays {.constructor,importcpp: "IndirectCommandDrawArrays".}

proc constructIndirectCommandDrawArrays*(copy: Indirectcommanddrawarrays, copyop: Copyop): IndirectCommandDrawArrays {.constructor,importcpp: "IndirectCommandDrawArrays(@)".}

proc constructIndirectCommandDrawElements*(): IndirectCommandDrawElements {.constructor,importcpp: "IndirectCommandDrawElements".}

proc constructIndirectCommandDrawElements*(copy: Indirectcommanddrawelements, copyop: Copyop): IndirectCommandDrawElements {.constructor,importcpp: "IndirectCommandDrawElements(@)".}

proc constructDrawArraysIndirectCommand*(pcount: cuint = 0, pinstanceCount: cuint = 0, pfirst: cuint = 0, pbaseInstance: cuint = 0): DrawArraysIndirectCommand {.constructor,importcpp: "DrawArraysIndirectCommand(@)".}

proc constructDefaultIndirectCommandDrawArrays*(): DefaultIndirectCommandDrawArrays {.constructor,importcpp: "DefaultIndirectCommandDrawArrays".}

proc constructDefaultIndirectCommandDrawArrays*(copy: Defaultindirectcommanddrawarrays, copyop: Copyop): DefaultIndirectCommandDrawArrays {.constructor,importcpp: "DefaultIndirectCommandDrawArrays(@)".}

proc constructDrawElementsIndirectCommand*(pcount: cuint = 0, pinstanceCount: cuint = 0, pfirstIndex: cuint = 0, pbaseVertex: cuint = 0, pbaseInstance: cuint = 0): DrawElementsIndirectCommand {.constructor,importcpp: "DrawElementsIndirectCommand(@)".}

proc constructDefaultIndirectCommandDrawElements*(): DefaultIndirectCommandDrawElements {.constructor,importcpp: "DefaultIndirectCommandDrawElements".}

proc constructDefaultIndirectCommandDrawElements*(copy: Defaultindirectcommanddrawelements, copyop: Copyop): DefaultIndirectCommandDrawElements {.constructor,importcpp: "DefaultIndirectCommandDrawElements(@)".}

proc constructDrawElementsIndirect*(primType: Type, mode: GLenum = 0, firstCommand: cuint = 0, stride: GLsizei): DrawElementsIndirect {.constructor,importcpp: "DrawElementsIndirect(@)".}

proc constructDrawElementsIndirect*(rhs: Drawelementsindirect, copyop: Copyop = SHALLOW_COPY): DrawElementsIndirect {.constructor,importcpp: "DrawElementsIndirect(@)".}

proc constructDrawElementsIndirectUByte*(mode: GLenum = 0): DrawElementsIndirectUByte {.constructor,importcpp: "DrawElementsIndirectUByte(@)".}

proc constructDrawElementsIndirectUByte*(array: Drawelementsindirectubyte, copyop: Copyop = SHALLOW_COPY): DrawElementsIndirectUByte {.constructor,importcpp: "DrawElementsIndirectUByte(@)".}

proc constructDrawElementsIndirectUByte*(mode: GLenum, no: cuint, `ptr`: ptr GLubyte): DrawElementsIndirectUByte {.constructor,importcpp: "DrawElementsIndirectUByte(@)".}
    ## 

proc constructDrawElementsIndirectUByte*(mode: GLenum, no: cuint): DrawElementsIndirectUByte {.constructor,importcpp: "DrawElementsIndirectUByte(@)".}
    ## 

proc constructDrawElementsIndirectUShort*(mode: GLenum = 0): DrawElementsIndirectUShort {.constructor,importcpp: "DrawElementsIndirectUShort(@)".}

proc constructDrawElementsIndirectUShort*(array: Drawelementsindirectushort, copyop: Copyop = SHALLOW_COPY): DrawElementsIndirectUShort {.constructor,importcpp: "DrawElementsIndirectUShort(@)".}

proc constructDrawElementsIndirectUShort*(mode: GLenum, no: cuint, `ptr`: ptr GLushort): DrawElementsIndirectUShort {.constructor,importcpp: "DrawElementsIndirectUShort(@)".}
    ## 

proc constructDrawElementsIndirectUShort*(mode: GLenum, no: cuint): DrawElementsIndirectUShort {.constructor,importcpp: "DrawElementsIndirectUShort(@)".}
    ## 

proc constructDrawElementsIndirectUInt*(mode: GLenum = 0): DrawElementsIndirectUInt {.constructor,importcpp: "DrawElementsIndirectUInt(@)".}

proc constructDrawElementsIndirectUInt*(array: Drawelementsindirectuint, copyop: Copyop = SHALLOW_COPY): DrawElementsIndirectUInt {.constructor,importcpp: "DrawElementsIndirectUInt(@)".}

proc constructDrawElementsIndirectUInt*(mode: GLenum, no: cuint, `ptr`: ptr GLuint): DrawElementsIndirectUInt {.constructor,importcpp: "DrawElementsIndirectUInt(@)".}
    ## 

proc constructDrawElementsIndirectUInt*(mode: GLenum, no: cuint): DrawElementsIndirectUInt {.constructor,importcpp: "DrawElementsIndirectUInt(@)".}
    ## 

proc constructMultiDrawElementsIndirectUShort*(mode: GLenum = 0): MultiDrawElementsIndirectUShort {.constructor,importcpp: "MultiDrawElementsIndirectUShort(@)".}

proc constructMultiDrawElementsIndirectUShort*(mdi: Multidrawelementsindirectushort, copyop: Copyop = SHALLOW_COPY): MultiDrawElementsIndirectUShort {.constructor,importcpp: "MultiDrawElementsIndirectUShort(@)".}

proc constructMultiDrawElementsIndirectUShort*(mode: GLenum, no: cuint, `ptr`: ptr GLushort): MultiDrawElementsIndirectUShort {.constructor,importcpp: "MultiDrawElementsIndirectUShort(@)".}
    ## 

proc constructMultiDrawElementsIndirectUShort*(mode: GLenum, no: cuint): MultiDrawElementsIndirectUShort {.constructor,importcpp: "MultiDrawElementsIndirectUShort(@)".}
    ## 

proc constructMultiDrawElementsIndirectUByte*(mode: GLenum = 0): MultiDrawElementsIndirectUByte {.constructor,importcpp: "MultiDrawElementsIndirectUByte(@)".}

proc constructMultiDrawElementsIndirectUByte*(mdi: Multidrawelementsindirectubyte, copyop: Copyop = SHALLOW_COPY): MultiDrawElementsIndirectUByte {.constructor,importcpp: "MultiDrawElementsIndirectUByte(@)".}

proc constructMultiDrawElementsIndirectUByte*(mode: GLenum, no: cuint, `ptr`: ptr GLubyte): MultiDrawElementsIndirectUByte {.constructor,importcpp: "MultiDrawElementsIndirectUByte(@)".}
    ## 

proc constructMultiDrawElementsIndirectUByte*(mode: GLenum, no: cuint): MultiDrawElementsIndirectUByte {.constructor,importcpp: "MultiDrawElementsIndirectUByte(@)".}
    ## 

proc constructMultiDrawElementsIndirectUInt*(mode: GLenum = 0): MultiDrawElementsIndirectUInt {.constructor,importcpp: "MultiDrawElementsIndirectUInt(@)".}

proc constructMultiDrawElementsIndirectUInt*(mdi: Multidrawelementsindirectuint, copyop: Copyop = SHALLOW_COPY): MultiDrawElementsIndirectUInt {.constructor,importcpp: "MultiDrawElementsIndirectUInt(@)".}

proc constructMultiDrawElementsIndirectUInt*(mode: GLenum, no: cuint, `ptr`: ptr GLuint): MultiDrawElementsIndirectUInt {.constructor,importcpp: "MultiDrawElementsIndirectUInt(@)".}
    ## 

proc constructMultiDrawElementsIndirectUInt*(mode: GLenum, no: cuint): MultiDrawElementsIndirectUInt {.constructor,importcpp: "MultiDrawElementsIndirectUInt(@)".}
    ## 

proc constructDrawArraysIndirect*(mode: GLenum = 0, firstcommand: cuint = 0, stride: GLsizei): DrawArraysIndirect {.constructor,importcpp: "DrawArraysIndirect(@)".}

proc constructDrawArraysIndirect*(dal: Drawarraysindirect, copyop: Copyop = SHALLOW_COPY): DrawArraysIndirect {.constructor,importcpp: "DrawArraysIndirect(@)".}

proc constructMultiDrawArraysIndirect*(mode: GLenum = 0, firstcommand: cuint = 0, count: cuint = 0, stride: GLsizei): MultiDrawArraysIndirect {.constructor,importcpp: "MultiDrawArraysIndirect(@)".}

proc constructMultiDrawArraysIndirect*(dal: Multidrawarraysindirect, copyop: Copyop = SHALLOW_COPY): MultiDrawArraysIndirect {.constructor,importcpp: "MultiDrawArraysIndirect(@)".}

proc getTotalDataSize*(this: IndirectCommandDrawArrays): cuint  {.importcpp: "getTotalDataSize".}

proc count*(this: var IndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "count".}

proc instanceCount*(this: var IndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "instanceCount".}

proc first*(this: var IndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "first".}

proc baseInstance*(this: var IndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "baseInstance".}

proc getElementSize*(this: IndirectCommandDrawArrays): cuint  {.importcpp: "getElementSize".}

proc getNumElements*(this: IndirectCommandDrawArrays): cuint  {.importcpp: "getNumElements".}

proc reserveElements*(this: var IndirectCommandDrawArrays, cuint)  {.importcpp: "reserveElements".}

proc resizeElements*(this: var IndirectCommandDrawArrays, cuint)  {.importcpp: "resizeElements".}

proc getTotalDataSize*(this: IndirectCommandDrawElements): cuint  {.importcpp: "getTotalDataSize".}

proc count*(this: var IndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "count".}

proc instanceCount*(this: var IndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "instanceCount".}

proc firstIndex*(this: var IndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "firstIndex".}

proc baseVertex*(this: var IndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "baseVertex".}

proc baseInstance*(this: var IndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "baseInstance".}

proc getElementSize*(this: IndirectCommandDrawElements): cuint  {.importcpp: "getElementSize".}

proc getNumElements*(this: IndirectCommandDrawElements): cuint  {.importcpp: "getNumElements".}

proc reserveElements*(this: var IndirectCommandDrawElements, cuint)  {.importcpp: "reserveElements".}

proc resizeElements*(this: var IndirectCommandDrawElements, cuint)  {.importcpp: "resizeElements".}

proc cloneType*(this: DefaultIndirectCommandDrawArrays): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DefaultIndirectCommandDrawArrays, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DefaultIndirectCommandDrawArrays, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DefaultIndirectCommandDrawArrays): cstring  {.importcpp: "libraryName".}

proc className*(this: DefaultIndirectCommandDrawArrays): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DefaultIndirectCommandDrawArrays): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getElementSize*(this: DefaultIndirectCommandDrawArrays): cuint  {.importcpp: "getElementSize".}

proc getNumElements*(this: DefaultIndirectCommandDrawArrays): cuint  {.importcpp: "getNumElements".}

proc reserveElements*(this: var DefaultIndirectCommandDrawArrays, n: cuint)  {.importcpp: "reserveElements".}

proc resizeElements*(this: var DefaultIndirectCommandDrawArrays, n: cuint)  {.importcpp: "resizeElements".}

proc count*(this: var DefaultIndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "count".}

proc instanceCount*(this: var DefaultIndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "instanceCount".}

proc first*(this: var DefaultIndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "first".}

proc baseInstance*(this: var DefaultIndirectCommandDrawArrays, index: cuint): cuint  {.importcpp: "baseInstance".}

proc cloneType*(this: DefaultIndirectCommandDrawElements): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DefaultIndirectCommandDrawElements, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DefaultIndirectCommandDrawElements, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DefaultIndirectCommandDrawElements): cstring  {.importcpp: "libraryName".}

proc className*(this: DefaultIndirectCommandDrawElements): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DefaultIndirectCommandDrawElements): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getNumElements*(this: DefaultIndirectCommandDrawElements): cuint  {.importcpp: "getNumElements".}

proc getElementSize*(this: DefaultIndirectCommandDrawElements): cuint  {.importcpp: "getElementSize".}

proc reserveElements*(this: var DefaultIndirectCommandDrawElements, n: cuint)  {.importcpp: "reserveElements".}

proc resizeElements*(this: var DefaultIndirectCommandDrawElements, n: cuint)  {.importcpp: "resizeElements".}

proc count*(this: var DefaultIndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "count".}

proc instanceCount*(this: var DefaultIndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "instanceCount".}

proc firstIndex*(this: var DefaultIndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "firstIndex".}

proc baseVertex*(this: var DefaultIndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "baseVertex".}

proc baseInstance*(this: var DefaultIndirectCommandDrawElements, index: cuint): cuint  {.importcpp: "baseInstance".}

proc setIndirectCommandArray*(this: var DrawElementsIndirect, idc: ptr Indirectcommanddrawelements )  {.importcpp: "setIndirectCommandArray".}
    ## set command array of this indirect primitive set

proc getIndirectCommandArray*(this: var DrawElementsIndirect): ptr Indirectcommanddrawelements   {.importcpp: "getIndirectCommandArray".}
    ## get command array of this indirect primitive set

proc getIndirectCommandArray*(this: DrawElementsIndirect): ptr Indirectcommanddrawelements   {.importcpp: "getIndirectCommandArray".}

proc setFirstCommandToDraw*(this: var DrawElementsIndirect, i: cuint)  {.importcpp: "setFirstCommandToDraw".}
    ## set offset of the first command to draw in the
    ## IndirectCommandDrawArrays

proc getFirstCommandToDraw*(this: DrawElementsIndirect): cuint  {.importcpp: "getFirstCommandToDraw".}
    ## get offset of the first command in the IndirectCommandDrawArrays

proc setStride*(this: var DrawElementsIndirect, i: GLsizei)  {.importcpp: "setStride".}
    ## stride (to set if you use custom CommandArray)

proc getStride*(this: DrawElementsIndirect): GLsizei  {.importcpp: "getStride".}
    ## stride (to set if you use custom CommandArray)

proc getNumPrimitives*(this: DrawElementsIndirect): cuint  {.importcpp: "getNumPrimitives".}

proc cloneType*(this: DrawElementsIndirectUByte): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsIndirectUByte, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsIndirectUByte, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsIndirectUByte): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsIndirectUByte): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsIndirectUByte): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsIndirectUByte): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsIndirectUByte): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsIndirectUByte, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsIndirectUByte, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsIndirectUByte, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsIndirectUByte): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsIndirectUByte, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsIndirectUByte, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsIndirectUByte): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsIndirectUByte, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsIndirectUByte, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsIndirectUByte, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsIndirectUByte, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsIndirectUByte, v: cuint)  {.importcpp: "addElement".}

proc getNumPrimitives*(this: DrawElementsIndirectUByte): cuint  {.importcpp: "getNumPrimitives".}

proc drawElementsIndirectUShort*[InputIterator](this: var DrawElementsIndirectUShort, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "DrawElementsIndirectUShort".}

proc cloneType*(this: DrawElementsIndirectUShort): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsIndirectUShort, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsIndirectUShort, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsIndirectUShort): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsIndirectUShort): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsIndirectUShort): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsIndirectUShort): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsIndirectUShort): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsIndirectUShort, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsIndirectUShort, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsIndirectUShort, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsIndirectUShort): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsIndirectUShort, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsIndirectUShort, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsIndirectUShort): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsIndirectUShort, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsIndirectUShort, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsIndirectUShort, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsIndirectUShort, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsIndirectUShort, v: cuint)  {.importcpp: "addElement".}

proc getNumPrimitives*(this: DrawElementsIndirectUShort): cuint  {.importcpp: "getNumPrimitives".}

proc drawElementsIndirectUInt*[InputIterator](this: var DrawElementsIndirectUInt, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "DrawElementsIndirectUInt".}

proc cloneType*(this: DrawElementsIndirectUInt): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawElementsIndirectUInt, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawElementsIndirectUInt, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawElementsIndirectUInt): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawElementsIndirectUInt): cstring  {.importcpp: "className".}

proc getDataPointer*(this: DrawElementsIndirectUInt): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: DrawElementsIndirectUInt): cuint  {.importcpp: "getTotalDataSize".}

proc supportsBufferObject*(this: DrawElementsIndirectUInt): bool  {.importcpp: "supportsBufferObject".}

proc draw*(this: DrawElementsIndirectUInt, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawElementsIndirectUInt, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawElementsIndirectUInt, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawElementsIndirectUInt): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawElementsIndirectUInt, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawElementsIndirectUInt, offset: cint)  {.importcpp: "offsetIndices".}

proc getDataType*(this: var DrawElementsIndirectUInt): GLenum  {.importcpp: "getDataType".}

proc resizeElements*(this: var DrawElementsIndirectUInt, numIndices: cuint)  {.importcpp: "resizeElements".}

proc reserveElements*(this: var DrawElementsIndirectUInt, numIndices: cuint)  {.importcpp: "reserveElements".}

proc setElement*(this: var DrawElementsIndirectUInt, i: cuint, v: cuint)  {.importcpp: "setElement".}

proc getElement*(this: var DrawElementsIndirectUInt, i: cuint): cuint  {.importcpp: "getElement".}

proc addElement*(this: var DrawElementsIndirectUInt, v: cuint)  {.importcpp: "addElement".}

proc getNumPrimitives*(this: DrawElementsIndirectUInt): cuint  {.importcpp: "getNumPrimitives".}

proc multiDrawElementsIndirectUShort*[InputIterator](this: var MultiDrawElementsIndirectUShort, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "MultiDrawElementsIndirectUShort".}

proc cloneType*(this: MultiDrawElementsIndirectUShort): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MultiDrawElementsIndirectUShort, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MultiDrawElementsIndirectUShort, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MultiDrawElementsIndirectUShort): cstring  {.importcpp: "className".}

proc draw*(this: MultiDrawElementsIndirectUShort, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: MultiDrawElementsIndirectUShort, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: MultiDrawElementsIndirectUShort, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumPrimitives*(this: MultiDrawElementsIndirectUShort): cuint  {.importcpp: "getNumPrimitives".}

proc setNumCommandsToDraw*(this: var MultiDrawElementsIndirectUShort, i: cuint)  {.importcpp: "setNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc getNumCommandsToDraw*(this: MultiDrawElementsIndirectUShort): cuint  {.importcpp: "getNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc multiDrawElementsIndirectUByte*[InputIterator](this: var MultiDrawElementsIndirectUByte, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "MultiDrawElementsIndirectUByte".}

proc cloneType*(this: MultiDrawElementsIndirectUByte): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MultiDrawElementsIndirectUByte, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MultiDrawElementsIndirectUByte, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MultiDrawElementsIndirectUByte): cstring  {.importcpp: "className".}

proc draw*(this: MultiDrawElementsIndirectUByte, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: MultiDrawElementsIndirectUByte, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: MultiDrawElementsIndirectUByte, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumPrimitives*(this: MultiDrawElementsIndirectUByte): cuint  {.importcpp: "getNumPrimitives".}

proc setNumCommandsToDraw*(this: var MultiDrawElementsIndirectUByte, i: cuint)  {.importcpp: "setNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc getNumCommandsToDraw*(this: MultiDrawElementsIndirectUByte): cuint  {.importcpp: "getNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc multiDrawElementsIndirectUInt*[InputIterator](this: var MultiDrawElementsIndirectUInt, mode: GLenum, first: InputIterator, last: InputIterator)  {.importcpp: "MultiDrawElementsIndirectUInt".}

proc cloneType*(this: MultiDrawElementsIndirectUInt): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MultiDrawElementsIndirectUInt, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MultiDrawElementsIndirectUInt, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MultiDrawElementsIndirectUInt): cstring  {.importcpp: "className".}

proc draw*(this: MultiDrawElementsIndirectUInt, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: MultiDrawElementsIndirectUInt, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: MultiDrawElementsIndirectUInt, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumPrimitives*(this: MultiDrawElementsIndirectUInt): cuint  {.importcpp: "getNumPrimitives".}

proc setNumCommandsToDraw*(this: var MultiDrawElementsIndirectUInt, i: cuint)  {.importcpp: "setNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc getNumCommandsToDraw*(this: MultiDrawElementsIndirectUInt): cuint  {.importcpp: "getNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc cloneType*(this: DrawArraysIndirect): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawArraysIndirect, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawArraysIndirect, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawArraysIndirect): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawArraysIndirect): cstring  {.importcpp: "className".}

proc draw*(this: DrawArraysIndirect, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: DrawArraysIndirect, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: DrawArraysIndirect, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: DrawArraysIndirect): cuint  {.importcpp: "getNumIndices".}

proc index*(this: DrawArraysIndirect, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var DrawArraysIndirect, offset: cint)  {.importcpp: "offsetIndices".}

proc getNumPrimitives*(this: DrawArraysIndirect): cuint  {.importcpp: "getNumPrimitives".}

proc setStride*(this: var DrawArraysIndirect, i: GLsizei)  {.importcpp: "setStride".}
    ## stride (to set if you use custom CommandArray)

proc getStride*(this: DrawArraysIndirect): GLsizei  {.importcpp: "getStride".}
    ## stride (to set if you use custom CommandArray)

proc setFirstCommandToDraw*(this: var DrawArraysIndirect, i: cuint)  {.importcpp: "setFirstCommandToDraw".}
    ## set offset of the first command in the IndirectCommandDrawArrays

proc getFirstCommandToDraw*(this: DrawArraysIndirect): cuint  {.importcpp: "getFirstCommandToDraw".}
    ## get offset of the first command in the IndirectCommandDrawArrays

proc setIndirectCommandArray*(this: var DrawArraysIndirect, idc: ptr Indirectcommanddrawarrays )  {.importcpp: "setIndirectCommandArray".}

proc getIndirectCommandArray*(this: DrawArraysIndirect): ptr Indirectcommanddrawarrays   {.importcpp: "getIndirectCommandArray".}

proc getIndirectCommandArray*(this: var DrawArraysIndirect): ptr Indirectcommanddrawarrays   {.importcpp: "getIndirectCommandArray".}

proc cloneType*(this: MultiDrawArraysIndirect): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MultiDrawArraysIndirect, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MultiDrawArraysIndirect, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MultiDrawArraysIndirect): cstring  {.importcpp: "className".}

proc draw*(this: MultiDrawArraysIndirect, state: State, useVertexBufferObjects: bool)  {.importcpp: "draw".}

proc accept*(this: MultiDrawArraysIndirect, functor: Primitivefunctor)  {.importcpp: "accept".}

proc accept*(this: MultiDrawArraysIndirect, functor: Primitiveindexfunctor)  {.importcpp: "accept".}

proc getNumIndices*(this: MultiDrawArraysIndirect): cuint  {.importcpp: "getNumIndices".}

proc index*(this: MultiDrawArraysIndirect, pos: cuint): cuint  {.importcpp: "index".}

proc offsetIndices*(this: var MultiDrawArraysIndirect, offset: cint)  {.importcpp: "offsetIndices".}

proc getNumPrimitives*(this: MultiDrawArraysIndirect): cuint  {.importcpp: "getNumPrimitives".}

proc setNumCommandsToDraw*(this: var MultiDrawArraysIndirect, i: cuint)  {.importcpp: "setNumCommandsToDraw".}
    ## count of Indirect Command to execute

proc getNumCommandsToDraw*(this: MultiDrawArraysIndirect): cuint  {.importcpp: "getNumCommandsToDraw".}
    ## count of Indirect Command to execute

{.pop.} # header: "PrimitiveSetIndirect
