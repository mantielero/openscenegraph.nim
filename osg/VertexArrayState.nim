import osg_types
  # File: State  was providing: osg::State
  # File: BufferObject  was providing: osg::GLBufferObject
  # File: Array  was providing: osg::Array
type
  ArrayDispatchList* {.header: "VertexArrayState", importcpp: "osg::VertexArrayState::ArrayDispatchList".} = cint
  ActiveDispatchers* {.header: "VertexArrayState", importcpp: "osg::VertexArrayState::ActiveDispatchers".} = cint
  Array* {.header: "VertexArrayState", importcpp: "osg::VertexArrayStateList::Array".} = cint


{.push header: "VertexArrayState".}

proc constructVertexArrayState*(state: ptr State ): VertexArrayState {.constructor,importcpp: "osg::VertexArrayState::VertexArrayState(@)".}

proc constructArrayDispatch*(): ArrayDispatch {.constructor,importcpp: "osg::VertexArrayState::ArrayDispatch::ArrayDispatch".}

proc constructVertexArrayStateList*(): VertexArrayStateList {.constructor,importcpp: "osg::VertexArrayStateList::VertexArrayStateList".}

proc isVertexAttribDispatch*(this: ArrayDispatch): bool  {.importcpp: "isVertexAttribDispatch".}

proc className*(this: ArrayDispatch): cstring  {.importcpp: "className".}

proc enable_and_dispatch*(this: var ArrayDispatch, a00: State, a01: ptr Array )  {.importcpp: "enable_and_dispatch".}

proc enable_and_dispatch*(this: var ArrayDispatch, a00: State, a01: ptr Array , a02: ptr GLBufferObject )  {.importcpp: "enable_and_dispatch".}

proc enable_and_dispatch*(this: var ArrayDispatch, a00: State, a01: GLint, a02: GLenum, a03: GLsizei, a04: ptr GLvoid, a05: GLboolean)  {.importcpp: "enable_and_dispatch".}

proc dispatch*(this: var ArrayDispatch, a00: State, a01: ptr Array )  {.importcpp: "dispatch".}

proc dispatch*(this: var ArrayDispatch, a00: State, a01: ptr Array , a02: ptr GLBufferObject )  {.importcpp: "dispatch".}

proc dispatch*(this: var ArrayDispatch, a00: State, a01: GLint, a02: GLenum, a03: GLsizei, a04: ptr GLvoid, a05: GLboolean)  {.importcpp: "dispatch".}

proc disable*(this: var ArrayDispatch, a00: State)  {.importcpp: "disable".}

proc setCurrentVertexBufferObject*(this: var VertexArrayState, vbo: ptr GLBufferObject )  {.importcpp: "setCurrentVertexBufferObject".}

proc getCurrentVertexBufferObject*(this: var VertexArrayState): ptr GLBufferObject   {.importcpp: "getCurrentVertexBufferObject".}

proc bindVertexBufferObject*(this: var VertexArrayState, vbo: ptr GLBufferObject )  {.importcpp: "bindVertexBufferObject".}

proc unbindVertexBufferObject*(this: var VertexArrayState)  {.importcpp: "unbindVertexBufferObject".}

proc setCurrentElementBufferObject*(this: var VertexArrayState, ebo: ptr GLBufferObject )  {.importcpp: "setCurrentElementBufferObject".}

proc getCurrentElementBufferObject*(this: var VertexArrayState): ptr GLBufferObject   {.importcpp: "getCurrentElementBufferObject".}

proc bindElementBufferObject*(this: var VertexArrayState, ebo: ptr GLBufferObject )  {.importcpp: "bindElementBufferObject".}

proc unbindElementBufferObject*(this: var VertexArrayState)  {.importcpp: "unbindElementBufferObject".}

proc resetBufferObjectPointers*(this: var VertexArrayState)  {.importcpp: "resetBufferObjectPointers".}

proc correctArrayDispatchAssigned*(this: var VertexArrayState, ad: ptr ArrayDispatch ): bool  {.importcpp: "correctArrayDispatchAssigned".}

proc assignAllDispatchers*(this: var VertexArrayState)  {.importcpp: "assignAllDispatchers".}

proc assignVertexArrayDispatcher*(this: var VertexArrayState)  {.importcpp: "assignVertexArrayDispatcher".}

proc assignNormalArrayDispatcher*(this: var VertexArrayState)  {.importcpp: "assignNormalArrayDispatcher".}

proc assignColorArrayDispatcher*(this: var VertexArrayState)  {.importcpp: "assignColorArrayDispatcher".}

proc assignSecondaryColorArrayDispatcher*(this: var VertexArrayState)  {.importcpp: "assignSecondaryColorArrayDispatcher".}

proc assignFogCoordArrayDispatcher*(this: var VertexArrayState)  {.importcpp: "assignFogCoordArrayDispatcher".}

proc assignTexCoordArrayDispatcher*(this: var VertexArrayState, numUnits: cuint)  {.importcpp: "assignTexCoordArrayDispatcher".}

proc assignVertexAttribArrayDispatcher*(this: var VertexArrayState, numUnits: cuint)  {.importcpp: "assignVertexAttribArrayDispatcher".}

proc setVertexBufferObjectSupported*(this: var VertexArrayState, flag: bool)  {.importcpp: "setVertexBufferObjectSupported".}

proc isVertexBufferObjectSupported*(this: VertexArrayState): bool  {.importcpp: "isVertexBufferObjectSupported".}

proc setArray*(this: var VertexArrayState, vad: ptr ArrayDispatch , state: State, new_array: ptr Array )  {.importcpp: "setArray".}

proc setArray*(this: var VertexArrayState, vad: ptr ArrayDispatch , state: State, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setArray".}

proc disable*(this: var VertexArrayState, vad: ptr ArrayDispatch , state: State)  {.importcpp: "disable".}

proc setInterleavedArrays*(this: var VertexArrayState, state: State, format: GLenum, stride: GLsizei, pointer: ptr GLvoid)  {.importcpp: "setInterleavedArrays".}

proc setVertexArray*(this: var VertexArrayState, state: State, array: ptr Array )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var VertexArrayState, state: State, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setVertexArray".}

proc disableVertexArray*(this: var VertexArrayState, state: State)  {.importcpp: "disableVertexArray".}

proc setNormalArray*(this: var VertexArrayState, state: State, array: ptr Array )  {.importcpp: "setNormalArray".}

proc setNormalArray*(this: var VertexArrayState, state: State, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setNormalArray".}

proc disableNormalArray*(this: var VertexArrayState, state: State)  {.importcpp: "disableNormalArray".}

proc setColorArray*(this: var VertexArrayState, state: State, array: ptr Array )  {.importcpp: "setColorArray".}

proc setColorArray*(this: var VertexArrayState, state: State, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setColorArray".}

proc disableColorArray*(this: var VertexArrayState, state: State)  {.importcpp: "disableColorArray".}

proc setSecondaryColorArray*(this: var VertexArrayState, state: State, array: ptr Array )  {.importcpp: "setSecondaryColorArray".}

proc disableSecondaryColorArray*(this: var VertexArrayState, state: State)  {.importcpp: "disableSecondaryColorArray".}

proc setFogCoordArray*(this: var VertexArrayState, state: State, array: ptr Array )  {.importcpp: "setFogCoordArray".}

proc disableFogCoordArray*(this: var VertexArrayState, state: State)  {.importcpp: "disableFogCoordArray".}

proc setTexCoordArray*(this: var VertexArrayState, state: State, unit: cuint, array: ptr Array )  {.importcpp: "setTexCoordArray".}

proc setTexCoordArray*(this: var VertexArrayState, state: State, unit: cuint, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setTexCoordArray".}

proc disableTexCoordArray*(this: var VertexArrayState, state: State, unit: cuint)  {.importcpp: "disableTexCoordArray".}

proc disableTexCoordArrayAboveAndIncluding*(this: var VertexArrayState, state: State, index: cuint)  {.importcpp: "disableTexCoordArrayAboveAndIncluding".}

proc setVertexAttribArray*(this: var VertexArrayState, state: State, unit: cuint, array: ptr Array )  {.importcpp: "setVertexAttribArray".}

proc disableVertexAttribArray*(this: var VertexArrayState, state: State, unit: cuint)  {.importcpp: "disableVertexAttribArray".}

proc disableVertexAttribArrayAboveAndIncluding*(this: var VertexArrayState, state: State, index: cuint)  {.importcpp: "disableVertexAttribArrayAboveAndIncluding".}

proc lazyDisablingOfVertexAttributes*(this: var VertexArrayState)  {.importcpp: "lazyDisablingOfVertexAttributes".}
    ## Mark all the vertex attributes as being disabled but leave the
    ## disabling till a later call to applyDisablingOfVertexAttributes.

proc applyDisablingOfVertexAttributes*(this: var VertexArrayState, state: State)  {.importcpp: "applyDisablingOfVertexAttributes".}
    ## Disable all the vertex attributes that have been marked as to be
    ## disabled.

proc generateVertexArrayObject*(this: var VertexArrayState)  {.importcpp: "generateVertexArrayObject".}

proc deleteVertexArrayObject*(this: var VertexArrayState)  {.importcpp: "deleteVertexArrayObject".}

proc getVertexArrayObject*(this: VertexArrayState): GLuint  {.importcpp: "getVertexArrayObject".}

proc setRequiresSetArrays*(this: var VertexArrayState, flag: bool)  {.importcpp: "setRequiresSetArrays".}

proc getRequiresSetArrays*(this: VertexArrayState): bool  {.importcpp: "getRequiresSetArrays".}

proc dirty*(this: var VertexArrayState)  {.importcpp: "dirty".}

proc release*(this: var VertexArrayState)  {.importcpp: "release".}

proc `=`*(this: var VertexArrayStateList, rhs: VertexArrayStateList): VertexArrayStateList  {.importcpp: "# = #".}

proc clear*(this: var VertexArrayStateList)  {.importcpp: "clear".}

proc empty*(this: VertexArrayStateList): bool  {.importcpp: "empty".}

proc size*(this: VertexArrayStateList): cuint  {.importcpp: "size".}

proc resize*(this: var VertexArrayStateList, newSize: cuint)  {.importcpp: "resize".}

proc `[]`*(this: var VertexArrayStateList, pos: cuint): ref_ptr[VertexArrayState]  {.importcpp: "# [] #".}

proc `[]`*(this: VertexArrayStateList, pos: cuint): ref_ptr[VertexArrayState]  {.importcpp: "# [] #".}

proc assignAllDispatchers*(this: var VertexArrayStateList)  {.importcpp: "assignAllDispatchers".}

proc assignVertexArrayDispatcher*(this: var VertexArrayStateList)  {.importcpp: "assignVertexArrayDispatcher".}

proc assignNormalArrayDispatcher*(this: var VertexArrayStateList)  {.importcpp: "assignNormalArrayDispatcher".}

proc assignColorArrayDispatcher*(this: var VertexArrayStateList)  {.importcpp: "assignColorArrayDispatcher".}

proc assignSecondaryColorArrayDispatcher*(this: var VertexArrayStateList)  {.importcpp: "assignSecondaryColorArrayDispatcher".}

proc assignFogCoordArrayDispatcher*(this: var VertexArrayStateList)  {.importcpp: "assignFogCoordArrayDispatcher".}

proc assignTexCoordArrayDispatcher*(this: var VertexArrayStateList, numUnits: cuint)  {.importcpp: "assignTexCoordArrayDispatcher".}

proc assignVertexAttribArrayDispatcher*(this: var VertexArrayStateList, numUnits: cuint)  {.importcpp: "assignVertexAttribArrayDispatcher".}

proc lazyDisablingOfVertexAttributes*(this: var VertexArrayState)  {.importcpp: "lazyDisablingOfVertexAttributes".}
    ## Mark all the vertex attributes as being disabled but leave the
    ## disabling till a later call to applyDisablingOfVertexAttributes.

proc applyDisablingOfVertexAttributes*(this: var VertexArrayState, state: State)  {.importcpp: "applyDisablingOfVertexAttributes".}
    ## Disable all the vertex attributes that have been marked as to be
    ## disabled.

proc disableTexCoordArrayAboveAndIncluding*(this: var VertexArrayState, state: State, index: cuint)  {.importcpp: "disableTexCoordArrayAboveAndIncluding".}

proc disableVertexAttribArrayAboveAndIncluding*(this: var VertexArrayState, state: State, index: cuint)  {.importcpp: "disableVertexAttribArrayAboveAndIncluding".}

{.pop.}  # header: "VertexArrayState"
