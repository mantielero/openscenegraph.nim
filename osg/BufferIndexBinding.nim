import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: BufferObject  was providing: osg::BufferData
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: Array  was providing: osg::UIntArray
  # File: CopyOp  was providing: osg::CopyOp
type
  BufferIndexBinding* {.header: "BufferIndexBinding", importcpp: "osg::BufferIndexBinding", byref.} = object #of class osg::StateAttribute
    ## Encapsulate binding buffer objects to index targets. This specifically
    ## supports the uniform buffer and transform feedback targets.

  UniformBufferBinding* {.header: "BufferIndexBinding", importcpp: "osg::UniformBufferBinding", byref.} = object #of class osg::BufferIndexBinding
    ## StateAttribute for binding a uniform buffer index target.

  TransformFeedbackBufferBinding* {.header: "BufferIndexBinding", importcpp: "osg::TransformFeedbackBufferBinding", byref.} = object #of class osg::BufferIndexBinding
    ## StateAttribute for binding a transform feedback index target.

  AtomicCounterBufferBinding* {.header: "BufferIndexBinding", importcpp: "osg::AtomicCounterBufferBinding", byref.} = object #of class osg::BufferIndexBinding
    ## StateAttribute for binding a atomic counter buffer index target.

  ShaderStorageBufferBinding* {.header: "BufferIndexBinding", importcpp: "osg::ShaderStorageBufferBinding", byref.} = object #of class osg::BufferIndexBinding



{.push header: "BufferIndexBinding".}

proc constructBufferIndexBinding*(target: GLenum, index: GLuint): BufferIndexBinding {.constructor,importcpp: "osg::BufferIndexBinding::BufferIndexBinding(@)".}

proc constructBufferIndexBinding*(target: GLenum, index: GLuint, bd: ptr BufferData , offset: GLintptr = 0, size: GLsizeiptr = 0): BufferIndexBinding {.constructor,importcpp: "osg::BufferIndexBinding::BufferIndexBinding(@)".}

proc constructBufferIndexBinding*(rhs: BufferIndexBinding, copyop: CopyOp = SHALLOW_COPY): BufferIndexBinding {.constructor,importcpp: "osg::BufferIndexBinding::BufferIndexBinding(@)".}

proc constructUniformBufferBinding*(): UniformBufferBinding {.constructor,importcpp: "osg::UniformBufferBinding::UniformBufferBinding".}

proc constructUniformBufferBinding*(index: GLuint): UniformBufferBinding {.constructor,importcpp: "osg::UniformBufferBinding::UniformBufferBinding(@)".}

proc constructUniformBufferBinding*(index: GLuint, bd: ptr BufferData , offset: GLintptr = 0, size: GLsizeiptr = 0): UniformBufferBinding {.constructor,importcpp: "osg::UniformBufferBinding::UniformBufferBinding(@)".}
    ## Create a binding for a uniform buffer index target.

proc constructUniformBufferBinding*(rhs: UniformBufferBinding, copyop: CopyOp = SHALLOW_COPY): UniformBufferBinding {.constructor,importcpp: "osg::UniformBufferBinding::UniformBufferBinding(@)".}

proc constructTransformFeedbackBufferBinding*(index: GLuint = 0): TransformFeedbackBufferBinding {.constructor,importcpp: "osg::TransformFeedbackBufferBinding::TransformFeedbackBufferBinding(@)".}

proc constructTransformFeedbackBufferBinding*(index: GLuint, bd: ptr BufferData , offset: GLintptr = 0, size: GLsizeiptr = 0): TransformFeedbackBufferBinding {.constructor,importcpp: "osg::TransformFeedbackBufferBinding::TransformFeedbackBufferBinding(@)".}

proc constructTransformFeedbackBufferBinding*(rhs: TransformFeedbackBufferBinding, copyop: CopyOp = SHALLOW_COPY): TransformFeedbackBufferBinding {.constructor,importcpp: "osg::TransformFeedbackBufferBinding::TransformFeedbackBufferBinding(@)".}

proc constructAtomicCounterBufferBinding*(index: GLuint = 0): AtomicCounterBufferBinding {.constructor,importcpp: "osg::AtomicCounterBufferBinding::AtomicCounterBufferBinding(@)".}

proc constructAtomicCounterBufferBinding*(index: GLuint, bd: ptr BufferData , offset: GLintptr = 0, size: GLsizeiptr = 0): AtomicCounterBufferBinding {.constructor,importcpp: "osg::AtomicCounterBufferBinding::AtomicCounterBufferBinding(@)".}
    ## Create a binding for a atomic counter buffer index target.

proc constructAtomicCounterBufferBinding*(rhs: AtomicCounterBufferBinding, copyop: CopyOp = SHALLOW_COPY): AtomicCounterBufferBinding {.constructor,importcpp: "osg::AtomicCounterBufferBinding::AtomicCounterBufferBinding(@)".}

proc constructShaderStorageBufferBinding*(index: GLuint = 0): ShaderStorageBufferBinding {.constructor,importcpp: "osg::ShaderStorageBufferBinding::ShaderStorageBufferBinding(@)".}

proc constructShaderStorageBufferBinding*(index: GLuint, bd: ptr BufferData , offset: GLintptr = 0, size: GLsizeiptr = 0): ShaderStorageBufferBinding {.constructor,importcpp: "osg::ShaderStorageBufferBinding::ShaderStorageBufferBinding(@)".}
    ## Create a binding for a shader storage buffer index target.

proc constructShaderStorageBufferBinding*(rhs: ShaderStorageBufferBinding, copyop: CopyOp = SHALLOW_COPY): ShaderStorageBufferBinding {.constructor,importcpp: "osg::ShaderStorageBufferBinding::ShaderStorageBufferBinding(@)".}

proc getMember*(this: BufferIndexBinding): cuint  {.importcpp: "getMember".}

proc getTarget*(this: BufferIndexBinding): GLenum  {.importcpp: "getTarget".}

proc setTarget*(this: var BufferIndexBinding, t: GLenum)  {.importcpp: "setTarget".}
    ## enable arbitrary BufferBinding (user is responsible for _target
    ## mismatch with bufferdata what can be done is setting wrong _target and
    ## use the one of bd if not subclassed

proc setBufferData*(this: var BufferIndexBinding, bufferdata: ptr BufferData )  {.importcpp: "setBufferData".}

proc getBufferData*(this: BufferIndexBinding): ptr BufferData   {.importcpp: "getBufferData".}
    ## Get the buffer data to be bound.

proc getBufferData*(this: var BufferIndexBinding): ptr BufferData   {.importcpp: "getBufferData".}

proc getIndex*(this: BufferIndexBinding): GLuint  {.importcpp: "getIndex".}
    ## Get the index target.

proc setIndex*(this: var BufferIndexBinding, index: GLuint)  {.importcpp: "setIndex".}
    ## Set the index target. (and update parents StateSets)

proc setOffset*(this: var BufferIndexBinding, offset: GLintptr)  {.importcpp: "setOffset".}
    ## Set the starting offset into the buffer data for the indexed target.
    ## Note: the required alignment on the offset may be quite large (e.g.,
    ## 256 bytes on NVidia 8600M). This should be checked with
    ## glGetIntegerv(GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT...).

proc getOffset*(this: BufferIndexBinding): GLintptr  {.importcpp: "getOffset".}

proc setSize*(this: var BufferIndexBinding, size: GLsizeiptr)  {.importcpp: "setSize".}
    ## Set the size override of bufferdata binded for the indexed target.

proc getSize*(this: BufferIndexBinding): GLsizeiptr  {.importcpp: "getSize".}

proc apply*(this: BufferIndexBinding, state: State)  {.importcpp: "apply".}

proc cloneType*(this: UniformBufferBinding): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: UniformBufferBinding, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: UniformBufferBinding, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: UniformBufferBinding): cstring  {.importcpp: "libraryName".}

proc className*(this: UniformBufferBinding): cstring  {.importcpp: "className".}

proc getType*(this: UniformBufferBinding): Type  {.importcpp: "getType".}

proc compare*(this: UniformBufferBinding, bb: StateAttribute): cint  {.importcpp: "compare".}

proc cloneType*(this: TransformFeedbackBufferBinding): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TransformFeedbackBufferBinding, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TransformFeedbackBufferBinding, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TransformFeedbackBufferBinding): cstring  {.importcpp: "libraryName".}

proc className*(this: TransformFeedbackBufferBinding): cstring  {.importcpp: "className".}

proc getType*(this: TransformFeedbackBufferBinding): Type  {.importcpp: "getType".}

proc compare*(this: TransformFeedbackBufferBinding, bb: StateAttribute): cint  {.importcpp: "compare".}

proc cloneType*(this: AtomicCounterBufferBinding): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AtomicCounterBufferBinding, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AtomicCounterBufferBinding, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AtomicCounterBufferBinding): cstring  {.importcpp: "libraryName".}

proc className*(this: AtomicCounterBufferBinding): cstring  {.importcpp: "className".}

proc getType*(this: AtomicCounterBufferBinding): Type  {.importcpp: "getType".}

proc readData*(this: AtomicCounterBufferBinding, state: State, uintArray: UIntArray)  {.importcpp: "readData".}

proc compare*(this: AtomicCounterBufferBinding, bb: StateAttribute): cint  {.importcpp: "compare".}

proc cloneType*(this: ShaderStorageBufferBinding): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderStorageBufferBinding, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderStorageBufferBinding, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderStorageBufferBinding): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderStorageBufferBinding): cstring  {.importcpp: "className".}

proc getType*(this: ShaderStorageBufferBinding): Type  {.importcpp: "getType".}

proc compare*(this: ShaderStorageBufferBinding, bb: StateAttribute): cint  {.importcpp: "compare".}

{.pop.}  # header: "BufferIndexBinding"
