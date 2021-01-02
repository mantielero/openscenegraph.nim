import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Program  was providing: osg::Program
type
  Type* {.size:sizeof(cint),header: "Shader", importcpp: "osg::Shader::Type", pure.} = enum
    UNDEFINED = -1,
    FRAGMENT = 35632,
    VERTEX = 35633,
    GEOMETRY = 36313,
    TESSEVALUATION = 36487,
    TESSCONTROL = 36488,
    COMPUTE = 37305

  ShaderDefinesMode* {.size:sizeof(cuint),header: "Shader", importcpp: "osg::Shader::ShaderDefinesMode", pure.} = enum
    USE_SHADER_PRAGMA = 0,
    USE_MANUAL_SETTINGS = 1

  ShaderBinary* {.header: "Shader", importcpp: "osg::ShaderBinary", byref.} = object #of osg::Object
    ## Simple class for wrapping up the data used in OpenGL ES 2's
    ## glShaderBinary calls. ShaderBinary is set up with the binary data then
    ## assigned to one or more osg::Shader.

  PerContextShader* {.header: "Shader", importcpp: "osg::Shader::PerContextShader", byref.} = object #of osg::Referenced
    ## PerContextShader (PCS) is an OSG-internal encapsulation of glShader
    ## per-GL context.

  Data* {.header: "Shader", importcpp: "osg::ShaderBinary::Data".} = cint
  CodeInjectionMap* {.header: "Shader", importcpp: "osg::Shader::CodeInjectionMap".} = cint
  PerContextShaders* {.header: "Shader", importcpp: "osg::Shader::ShaderObjects::PerContextShaders".} = cint
  ProgramSet* {.header: "Shader", importcpp: "osg::Shader::ProgramSet".} = cint
  Shaders* {.header: "Shader", importcpp: "osg::ShaderComponent::Shaders".} = cint


{.push header: "Shader".}

proc constructShaderBinary*(): ShaderBinary {.constructor,importcpp: "osg::ShaderBinary::ShaderBinary".}

proc constructShaderBinary*(rhs: ShaderBinary, copyop: CopyOp = SHALLOW_COPY): ShaderBinary {.constructor,importcpp: "osg::ShaderBinary::ShaderBinary(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructShader*(`type`: Type): Shader {.constructor,importcpp: "osg::Shader::Shader(@)".}

proc constructShader*(`type`: Type, source: string): Shader {.constructor,importcpp: "osg::Shader::Shader(@)".}

proc constructShader*(`type`: Type, shaderBinary: ptr ShaderBinary ): Shader {.constructor,importcpp: "osg::Shader::Shader(@)".}

proc constructShader*(rhs: Shader, copyop: CopyOp = SHALLOW_COPY): Shader {.constructor,importcpp: "osg::Shader::Shader(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructPerContextShader*(shader: ptr Shader , contextID: cuint): PerContextShader {.constructor,importcpp: "osg::Shader::PerContextShader::PerContextShader(@)".}

proc constructPerContextShader*(): PerContextShader {.constructor,importcpp: "osg::Shader::PerContextShader::PerContextShader".}

proc constructPerContextShader*(a00: PerContextShader): PerContextShader {.constructor,importcpp: "osg::Shader::PerContextShader::PerContextShader(@)".}

proc constructShaderObjects*(shader: ptr Shader , contextID: cuint): ShaderObjects {.constructor,importcpp: "osg::Shader::ShaderObjects::ShaderObjects(@)".}

proc constructShaderComponent*(): ShaderComponent {.constructor,importcpp: "osg::ShaderComponent::ShaderComponent".}

proc constructShaderComponent*(sc: ShaderComponent, copyop: CopyOp = SHALLOW_COPY): ShaderComponent {.constructor,importcpp: "osg::ShaderComponent::ShaderComponent(@)".}

proc cloneType*(this: ShaderBinary): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderBinary, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderBinary, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderBinary): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderBinary): cstring  {.importcpp: "className".}

proc allocate*(this: var ShaderBinary, size: cuint)  {.importcpp: "allocate".}
    ## Allocated a data buffer of specified size.

proc assign*(this: var ShaderBinary, size: cuint, data: ptr unsigned char)  {.importcpp: "assign".}
    ## Assign shader binary data, copying the specified data into locally
    ## stored data buffer, the original data can then be deleted.

proc getSize*(this: ShaderBinary): cuint  {.importcpp: "getSize".}
    ## Get the size of the shader binary data.

proc getData*(this: var ShaderBinary): ptr unsigned char  {.importcpp: "getData".}
    ## Get a ptr to the shader binary data.

proc getData*(this: ShaderBinary): ptr unsigned char  {.importcpp: "getData".}
    ## Get a const ptr to the shader binary data.

proc readShaderBinaryFile*(this: var ShaderBinary, fileName: string): ptr ShaderBinary   {.importcpp: "readShaderBinaryFile".}
    ## Read shader binary from file. Return the resulting Shader or 0 if no
    ## valid shader binary could be read.

proc cloneType*(this: Shader): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Shader, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Shader, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Shader): cstring  {.importcpp: "libraryName".}

proc className*(this: Shader): cstring  {.importcpp: "className".}

proc compare*(this: Shader, rhs: Shader): cint  {.importcpp: "compare".}

proc setType*(this: var Shader, t: Type): bool  {.importcpp: "setType".}
    ## Set the Shader type as an enum.

proc getType*(this: Shader): Type  {.importcpp: "getType".}
    ## Get the Shader type as an enum.

proc getTypename*(this: Shader): cstring  {.importcpp: "getTypename".}
    ## Get the Shader type as a descriptive string.

proc setFileName*(this: var Shader, fileName: string)  {.importcpp: "setFileName".}
    ## Set file name for the shader source code.

proc getFileName*(this: Shader): string  {.importcpp: "getFileName".}
    ## Get filename to which the shader source code belongs.

proc setShaderSource*(this: var Shader, sourceText: string)  {.importcpp: "setShaderSource".}
    ## Set the Shader's source code text from a string.

proc getShaderSource*(this: Shader): string  {.importcpp: "getShaderSource".}
    ## Query the shader's source code text

proc setShaderDefinesMode*(this: var Shader, sdm: ShaderDefinesMode)  {.importcpp: "setShaderDefinesMode".}

proc getShaderDefinesMode*(this: Shader): ShaderDefinesMode  {.importcpp: "getShaderDefinesMode".}

proc setShaderDefines*(this: var Shader, shaderDefs: ShaderDefines)  {.importcpp: "setShaderDefines".}

proc getShaderDefines*(this: var Shader): ShaderDefines  {.importcpp: "getShaderDefines".}

proc getShaderDefines*(this: Shader): ShaderDefines  {.importcpp: "getShaderDefines".}

proc setShaderRequirements*(this: var Shader, shaderDefs: ShaderDefines)  {.importcpp: "setShaderRequirements".}

proc getShaderRequirements*(this: var Shader): ShaderDefines  {.importcpp: "getShaderRequirements".}

proc getShaderRequirements*(this: Shader): ShaderDefines  {.importcpp: "getShaderRequirements".}

proc setShaderBinary*(this: var Shader, shaderBinary: ptr ShaderBinary )  {.importcpp: "setShaderBinary".}
    ## Set the Shader using a ShaderBinary.

proc getShaderBinary*(this: var Shader): ptr ShaderBinary   {.importcpp: "getShaderBinary".}
    ## Get the Shader's ShaderBinary, return NULL if none is assigned.

proc getShaderBinary*(this: Shader): ptr ShaderBinary   {.importcpp: "getShaderBinary".}
    ## Get the const Shader's ShaderBinary, return NULL if none is assigned.

proc readShaderFile*(this: var Shader, `type`: Type, fileName: string): ptr Shader   {.importcpp: "readShaderFile".}
    ## Deorecated use osgDB::readRefShaderFile().

proc loadShaderSourceFromFile*(this: var Shader, fileName: string): bool  {.importcpp: "loadShaderSourceFromFile".}
    ## Deorecated use osgDB::readRefShaderFile().

proc addCodeInjection*(this: var Shader, position: cfloat, code: string)  {.importcpp: "addCodeInjection".}
    ## Add code injection that will be placed in the main shader to enable
    ## support for this shader. The position is set up so that code to be
    ## inserted before the main() will have a negative value, a position
    ## between 0 and 1.0 will be inserted in main() and a position greater
    ## than 1.0 will be placed after the main(). During shader composition
    ## all the code injections are sorted in ascending order and then placed
    ## in the appropriate section of the main shader.

proc getCodeInjectionMap*(this: var Shader): CodeInjectionMap  {.importcpp: "getCodeInjectionMap".}
    ## Get the code injection map.

proc getCodeInjectionMap*(this: Shader): CodeInjectionMap  {.importcpp: "getCodeInjectionMap".}
    ## Get the const code injection map.

proc resizeGLObjectBuffers*(this: var Shader, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Shader, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## release OpenGL objects in specified graphics context if State object
    ## is passed, otherwise release OpenGL objects for all graphics context
    ## if State object pointer NULL.

proc dirtyShader*(this: var Shader)  {.importcpp: "dirtyShader".}
    ## Mark our PCSs as needing recompilation. Also mark Programs that depend
    ## on us as needing relink

proc compileShader*(this: Shader, state: State)  {.importcpp: "compileShader".}
    ## If needed, compile the PCS's glShader

proc getTypeId*(this: var Shader, tname: string): Type  {.importcpp: "getTypeId".}

proc setDefineString*(this: var PerContextShader, defStr: string)  {.importcpp: "setDefineString".}

proc getDefineString*(this: PerContextShader): string  {.importcpp: "getDefineString".}

proc getHandle*(this: PerContextShader): GLuint  {.importcpp: "getHandle".}

proc requestCompile*(this: var PerContextShader)  {.importcpp: "requestCompile".}

proc compileShader*(this: var PerContextShader, state: State)  {.importcpp: "compileShader".}

proc needsCompile*(this: PerContextShader): bool  {.importcpp: "needsCompile".}

proc isCompiled*(this: PerContextShader): bool  {.importcpp: "isCompiled".}

proc getInfoLog*(this: PerContextShader, infoLog: string): bool  {.importcpp: "getInfoLog".}

proc attachShader*(this: PerContextShader, program: GLuint)  {.importcpp: "attachShader".}
    ## Attach our glShader to a glProgram

proc detachShader*(this: PerContextShader, program: GLuint)  {.importcpp: "detachShader".}
    ## Detach our glShader from a glProgram

proc `=`*(this: var PerContextShader, a00: PerContextShader): PerContextShader  {.importcpp: "# = #".}

proc getPCS*(this: ShaderObjects, defineStr: string): ptr PerContextShader   {.importcpp: "getPCS".}

proc createPerContextShader*(this: var ShaderObjects, defineStr: string): ptr PerContextShader   {.importcpp: "createPerContextShader".}

proc requestCompile*(this: var ShaderObjects)  {.importcpp: "requestCompile".}

proc getPCS*(this: Shader, state: State): ptr PerContextShader   {.importcpp: "getPCS".}

proc addProgramRef*(this: var Shader, program: ptr Program ): bool  {.importcpp: "addProgramRef".}

proc removeProgramRef*(this: var Shader, program: ptr Program ): bool  {.importcpp: "removeProgramRef".}

proc prefixcomputeShaderDefines*(this: var Shader)  {.importcpp: "_computeShaderDefines".}

proc prefixparseShaderDefines*(this: var Shader, str: string, defines: ShaderDefines)  {.importcpp: "_parseShaderDefines".}

proc `=`*(this: var Shader, a00: Shader): Shader  {.importcpp: "# = #".}

proc cloneType*(this: ShaderComponent): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderComponent, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderComponent, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderComponent): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderComponent): cstring  {.importcpp: "className".}

proc addShader*(this: var ShaderComponent, shader: ptr Shader ): cuint  {.importcpp: "addShader".}

proc removeShader*(this: var ShaderComponent, i: cuint)  {.importcpp: "removeShader".}

proc getShader*(this: var ShaderComponent, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc getShader*(this: ShaderComponent, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc getNumShaders*(this: ShaderComponent): cuint  {.importcpp: "getNumShaders".}

proc compileGLObjects*(this: ShaderComponent, state: State)  {.importcpp: "compileGLObjects".}

proc resizeGLObjectBuffers*(this: var ShaderComponent, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*(this: ShaderComponent, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

{.pop.}  # header: "Shader"
