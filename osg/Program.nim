import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import Shader  # provides: osg::Shader, osg::ShaderDefines
import CopyOp  # provides: osg::CopyOp
import Uniform  # provides: osg::Uniform
type
  AttribBindingList* {.header: "Program", importcpp: "osg::Program::AttribBindingList".} = cint
  FragDataBindingList* {.header: "Program", importcpp: "osg::Program::FragDataBindingList".} = cint
  UniformBlockBindingList* {.header: "Program", importcpp: "osg::Program::UniformBlockBindingList".} = cint
  ActiveUniformMap* {.header: "Program", importcpp: "osg::Program::ActiveUniformMap".} = cint
  ActiveVarInfoMap* {.header: "Program", importcpp: "osg::Program::ActiveVarInfoMap".} = cint
  UniformBlockMap* {.header: "Program", importcpp: "osg::Program::UniformBlockMap".} = cint
  UniformModifiedCountPair* {.header: "Program", importcpp: "osg::Program::PerContextProgram::UniformModifiedCountPair".} = Pair[Ref_ptr[Uniform]]
  LastAppliedUniformList* {.header: "Program", importcpp: "osg::Program::PerContextProgram::LastAppliedUniformList".} = cint
  ShaderList* {.header: "Program", importcpp: "osg::Program::ShaderList".} = cint
  PerContextPrograms* {.header: "Program", importcpp: "osg::Program::ProgramObjects::PerContextPrograms".} = cint
  ProgramBinary* {.header: "Program", importcpp: "osg::Program::ProgramBinary", byref.} = object #of osg::Object
    ## Simple class for wrapping up the data used in glProgramBinary and
    ## glGetProgramBinary. On the first run of your application Programs
    ## should be assigned an empty ProgramBinary. Before your application
    ## exits it should retrieve the program binary via
    ## Program::PerContextProgram::compileProgramBinary and save it to disk.
    ## When your application is run subsequently, load your binary from disk
    ## and use it to set the data of a ProgramBinary, and set the
    ## ProgramBinary on the associated Program. This will typically result in
    ## Program::compileGLObjects executing much faster.

  PerContextProgram* {.header: "Program", importcpp: "osg::Program::PerContextProgram", byref.} = object #of osg::Referenced
    ## PerContextProgram (PCP) is an OSG-internal encapsulation of glPrograms
    ## per-GL context.



{.push header: "Program".}

proc constructProgram*(): Program {.constructor,importcpp: "osg::Program::Program".}

proc constructProgram*(rhs: Program, copyop: Copyop = SHALLOW_COPY): Program {.constructor,importcpp: "osg::Program::Program(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructProgramBinary*(): ProgramBinary {.constructor,importcpp: "osg::Program::ProgramBinary::ProgramBinary".}

proc constructProgramBinary*(rhs: Programbinary, copyop: Copyop = SHALLOW_COPY): ProgramBinary {.constructor,importcpp: "osg::Program::ProgramBinary::ProgramBinary(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructActiveVarInfo*(): ActiveVarInfo {.constructor,importcpp: "osg::Program::ActiveVarInfo::ActiveVarInfo".}

proc constructActiveVarInfo*(loc: GLint, `type`: GLenum, size: GLint): ActiveVarInfo {.constructor,importcpp: "osg::Program::ActiveVarInfo::ActiveVarInfo(@)".}

proc constructUniformBlockInfo*(): UniformBlockInfo {.constructor,importcpp: "osg::Program::UniformBlockInfo::UniformBlockInfo".}

proc constructUniformBlockInfo*(index: GLuint, size: GLsizei): UniformBlockInfo {.constructor,importcpp: "osg::Program::UniformBlockInfo::UniformBlockInfo(@)".}

proc constructPerContextProgram*(program: ptr Program , contextID: cuint, programHandle: GLuint = 0): PerContextProgram {.constructor,importcpp: "osg::Program::PerContextProgram::PerContextProgram(@)".}
    ## Use "0" as programHandle to let the PeContextProgram execute
    ## "glCreateProgram"and "glDeleteProgram"

proc constructPerContextProgram*(): PerContextProgram {.constructor,importcpp: "osg::Program::PerContextProgram::PerContextProgram".}

proc constructPerContextProgram*(Percontextprogram): PerContextProgram {.constructor,importcpp: "osg::Program::PerContextProgram::PerContextProgram(@)".}

proc constructProgramObjects*(program: ptr Program , contextID: cuint): ProgramObjects {.constructor,importcpp: "osg::Program::ProgramObjects::ProgramObjects(@)".}

proc cloneType*(this: Program): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Program, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Program, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Program): cstring  {.importcpp: "libraryName".}

proc className*(this: Program): cstring  {.importcpp: "className".}

proc getType*(this: Program): Type  {.importcpp: "getType".}

proc compare*(this: Program, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc apply*(this: Program, state: State)  {.importcpp: "apply".}
    ## If enabled, activate our program in the GL pipeline, performing any
    ## rebuild operations that might be pending.

proc setThreadSafeRefUnref*(this: var Program, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc compileGLObjects*(this: Program, state: State)  {.importcpp: "compileGLObjects".}
    ## Compile program and associated shaders.

proc resizeGLObjectBuffers*(this: var Program, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Program, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## release OpenGL objects in specified graphics context if State object
    ## is passed, otherwise release OpenGL objects for all graphics context
    ## if State object pointer NULL.

proc dirtyProgram*(this: var Program)  {.importcpp: "dirtyProgram".}
    ## Mark our PCSOs as needing relink

proc addShader*(this: var Program, shader: ptr Shader ): bool  {.importcpp: "addShader".}
    ## Attach an osg::Shader to this osg::Program. Mark Program as needing
    ## relink. Return true for success

proc getNumShaders*(this: Program): cuint  {.importcpp: "getNumShaders".}

proc getShader*(this: var Program, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc getShader*(this: Program, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc removeShader*(this: var Program, shader: ptr Shader ): bool  {.importcpp: "removeShader".}
    ## Remove osg::Shader from this osg::Program. Mark Program as needing
    ## relink. Return true for success

proc setParameter*(this: var Program, pname: GLenum, value: GLint)  {.importcpp: "setParameter".}
    ## Set/get GL program parameters

proc getParameter*(this: Program, pname: GLenum): GLint  {.importcpp: "getParameter".}

proc addBindAttribLocation*(this: var Program, name: String, index: GLuint)  {.importcpp: "addBindAttribLocation".}
    ## Add an attribute location binding.

proc removeBindAttribLocation*(this: var Program, name: String)  {.importcpp: "removeBindAttribLocation".}
    ## Remove an attribute location binding.

proc addBindFragDataLocation*(this: var Program, name: String, index: GLuint)  {.importcpp: "addBindFragDataLocation".}
    ## Add an frag data location binding. See EXT_gpu_shader4 for
    ## BindFragDataLocationEXT

proc removeBindFragDataLocation*(this: var Program, name: String)  {.importcpp: "removeBindFragDataLocation".}
    ## Remove an frag data location binding.

proc addBindUniformBlock*(this: var Program, name: String, index: GLuint)  {.importcpp: "addBindUniformBlock".}
    ## Add a uniform block binding to an index target. XXX This should not be
    ## an attribute of the program. It should be a pseudo-uniform that can
    ## live in StateSet objects because it is cheap to set.

proc removeBindUniformBlock*(this: var Program, name: String)  {.importcpp: "removeBindUniformBlock".}
    ## Remove a uniform block binding.

proc removeTransformFeedBackVarying*(this: var Program, name: String)  {.importcpp: "removeTransformFeedBackVarying".}
    ## Remove a TransformFeedBackVarying.

proc addTransformFeedBackVarying*(this: var Program, outname: String)  {.importcpp: "addTransformFeedBackVarying".}
    ## Add a TransformFeedBack Varying Name.

proc getNumTransformFeedBackVaryings*(this: Program): cuint  {.importcpp: "getNumTransformFeedBackVaryings".}
    ## Get number of TransformFeedBack Varyings.

proc getTransformFeedBackVarying*(this: Program, i: cuint): String  {.importcpp: "getTransformFeedBackVarying".}
    ## Get const TransformFeedBack Varying at index i.

proc setTransformFeedBackMode*(this: var Program, e: GLenum)  {.importcpp: "setTransformFeedBackMode".}
    ## Set TransformFeedBack Mode.

proc getTransformFeedBackMode*(this: Program): GLenum  {.importcpp: "getTransformFeedBackMode".}
    ## Get TransformFeedBack Mode.

proc setShaderDefines*(this: var Program, shaderDefs: Shaderdefines)  {.importcpp: "setShaderDefines".}
    ## Experimental.

proc getShaderDefines*(this: var Program): Shaderdefines  {.importcpp: "getShaderDefines".}

proc getShaderDefines*(this: Program): Shaderdefines  {.importcpp: "getShaderDefines".}

proc cloneType*(this: ProgramBinary): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ProgramBinary, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ProgramBinary, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ProgramBinary): cstring  {.importcpp: "libraryName".}

proc className*(this: ProgramBinary): cstring  {.importcpp: "className".}

proc allocate*(this: var ProgramBinary, size: cuint)  {.importcpp: "allocate".}
    ## Allocated a data buffer of specified size.

proc assign*(this: var ProgramBinary, size: cuint, data: ptr unsigned char)  {.importcpp: "assign".}
    ## Assign program binary data, copying the specified data into locally
    ## stored data buffer, the original data can then be deleted.

proc setFormat*(this: var ProgramBinary, format: GLenum)  {.importcpp: "setFormat".}
    ## Set the format of the program binary data.

proc getFormat*(this: ProgramBinary): GLenum  {.importcpp: "getFormat".}
    ## Get the format of the program binary data.

proc getSize*(this: ProgramBinary): cuint  {.importcpp: "getSize".}
    ## Get the size of the program binary data.

proc getData*(this: var ProgramBinary): ptr unsigned char  {.importcpp: "getData".}
    ## Get a ptr to the program binary data.

proc getData*(this: ProgramBinary): ptr unsigned char  {.importcpp: "getData".}
    ## Get a const ptr to the program binary data.

proc setProgramBinary*(this: var Program, programBinary: ptr Programbinary )  {.importcpp: "setProgramBinary".}
    ## Set the Program using a ProgramBinary. If a ProgramBinary is not yet
    ## available then setting an empty one signals that compileProgramBinary
    ## will be called later.

proc getProgramBinary*(this: var Program): ptr Programbinary   {.importcpp: "getProgramBinary".}
    ## Get the Program's ProgramBinary, return NULL if none is assigned.

proc getProgramBinary*(this: Program): ptr Programbinary   {.importcpp: "getProgramBinary".}
    ## Get the const Program's ProgramBinary, return NULL if none is
    ## assigned.

proc getAttribBindingList*(this: Program): Attribbindinglist  {.importcpp: "getAttribBindingList".}

proc getFragDataBindingList*(this: Program): Fragdatabindinglist  {.importcpp: "getFragDataBindingList".}

proc getUniformBlockBindingList*(this: Program): Uniformblockbindinglist  {.importcpp: "getUniformBlockBindingList".}

proc isFixedFunction*(this: Program): bool  {.importcpp: "isFixedFunction".}
    ## Return true if this Program represents "fixed-functionality" rendering

proc getGlProgramInfoLog*(this: Program, contextID: cuint, log: String): bool  {.importcpp: "getGlProgramInfoLog".}
    ## Query InfoLog from a glProgram

proc getHandle*(this: PerContextProgram): GLuint  {.importcpp: "getHandle".}

proc getProgram*(this: PerContextProgram): ptr Program   {.importcpp: "getProgram".}

proc setDefineString*(this: var PerContextProgram, defStr: String)  {.importcpp: "setDefineString".}

proc getDefineString*(this: PerContextProgram): String  {.importcpp: "getDefineString".}

proc requestLink*(this: var PerContextProgram)  {.importcpp: "requestLink".}

proc linkProgram*(this: var PerContextProgram, state: State)  {.importcpp: "linkProgram".}

proc validateProgram*(this: var PerContextProgram): bool  {.importcpp: "validateProgram".}

proc needsLink*(this: PerContextProgram): bool  {.importcpp: "needsLink".}

proc isLinked*(this: PerContextProgram): bool  {.importcpp: "isLinked".}

proc getInfoLog*(this: PerContextProgram, infoLog: String): bool  {.importcpp: "getInfoLog".}

proc loadedBinary*(this: PerContextProgram): bool  {.importcpp: "loadedBinary".}
    ## Was glProgramBinary called successfully?

proc compileProgramBinary*(this: var PerContextProgram, state: State): ptr Programbinary   {.importcpp: "compileProgramBinary".}
    ## Compile a program binary. For this to work setProgramBinary must have
    ## been called on the osg::Program with an empty ProgramBinary prior to
    ## compileGLObjects being called. compileProgramBinary should be called
    ## after the program has been "exercised" by rendering with it. The
    ## ProgramBinary can then be saved to disk for faster subsequent
    ## compiling.

proc useProgram*(this: PerContextProgram)  {.importcpp: "useProgram".}

proc resetAppliedUniforms*(this: PerContextProgram)  {.importcpp: "resetAppliedUniforms".}

proc apply*(this: PerContextProgram, uniform: Uniform)  {.importcpp: "apply".}

proc getActiveUniforms*(this: PerContextProgram): Activeuniformmap  {.importcpp: "getActiveUniforms".}

proc getActiveAttribs*(this: PerContextProgram): Activevarinfomap  {.importcpp: "getActiveAttribs".}

proc getUniformBlocks*(this: PerContextProgram): Uniformblockmap  {.importcpp: "getUniformBlocks".}

proc getUniformLocation*(this: PerContextProgram, uniformNameID: cuint): GLint  {.importcpp: "getUniformLocation".}

proc getUniformLocation*(this: PerContextProgram, uniformName: String): GLint  {.importcpp: "getUniformLocation".}
    ## Alternative version of getUniformLocation( unsigned int uniformNameID
    ## ) retrofited into OSG for backward compatibility with osgCal, after
    ## uniform ids were refactored from std::strings to GLints in OSG version
    ## 2.9.10.

proc getAttribLocation*(this: PerContextProgram, name: String): GLint  {.importcpp: "getAttribLocation".}

proc addShaderToAttach*(this: var PerContextProgram, shader: ptr Shader )  {.importcpp: "addShaderToAttach".}

proc addShaderToDetach*(this: var PerContextProgram, shader: ptr Shader )  {.importcpp: "addShaderToDetach".}

proc `=`*(this: var PerContextProgram, Percontextprogram): Percontextprogram  {.importcpp: "# = #".}

proc getPCP*(this: ProgramObjects, defineStr: String): ptr Percontextprogram   {.importcpp: "getPCP".}

proc createPerContextProgram*(this: var ProgramObjects, defineStr: String): ptr Percontextprogram   {.importcpp: "createPerContextProgram".}

proc requestLink*(this: var ProgramObjects)  {.importcpp: "requestLink".}

proc addShaderToAttach*(this: var ProgramObjects, shader: ptr Shader )  {.importcpp: "addShaderToAttach".}

proc addShaderToDetach*(this: var ProgramObjects, shader: ptr Shader )  {.importcpp: "addShaderToDetach".}

proc getGlProgramInfoLog*(this: ProgramObjects, log: String): bool  {.importcpp: "getGlProgramInfoLog".}

proc getPCP*(this: Program, state: State): ptr Percontextprogram   {.importcpp: "getPCP".}
    ## Get the PCP for a particular GL context

proc `=`*(this: var Program, Program): Program  {.importcpp: "# = #".}

{.pop.}  # header: "Program"
