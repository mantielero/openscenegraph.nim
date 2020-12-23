import gl # Provides GLuint
import stringfwd # Provides string
import CopyOp # Provides CopyOp
import Object # Provides Object
import Program # Provides Program
import State # Provides State


type
  # Enums
  Type* {.size:sizeof(cint),header: "Shader", importcpp: "osg::Shader::Type".} = enum
    VERTEX = 35633,
    TESSCONTROL = 36488,
    TESSEVALUATION = 36487,
    GEOMETRY = 36313,
    FRAGMENT = 35632,
    COMPUTE = 37305,
    UNDEFINED = -1

  ShaderDefinesMode* {.size:sizeof(cuint),header: "Shader", importcpp: "osg::Shader::ShaderDefinesMode".} = enum
    USE_SHADER_PRAGMA = 0,
    USE_MANUAL_SETTINGS = 1

  # Typedefs
  ShaderDefines* {.header: "Shader", importcpp: "osg::ShaderDefines".} = cint
  Data* {.header: "Shader", importcpp: "osg::ShaderBinary::Data".} = cint
  CodeInjectionMap* {.header: "Shader", importcpp: "osg::Shader::CodeInjectionMap".} = cint
  PerContextShaders* {.header: "Shader", importcpp: "osg::Shader::ShaderObjects::PerContextShaders".} = cint
  ProgramSet* {.header: "Shader", importcpp: "osg::Shader::ProgramSet".} = cint
  Shaders* {.header: "Shader", importcpp: "osg::ShaderComponent::Shaders".} = cint
{.push header: "Shader".}


# Constructors and methods
proc constructShaderBinary*(): ShaderBinary {.constructor,importcpp: "ShaderBinary".}

proc constructShaderBinary*(rhs: Shaderbinary, copyop: Copyop = SHALLOW_COPY): ShaderBinary {.constructor,importcpp: "ShaderBinary(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructShader*(`type`: Type): Shader {.constructor,importcpp: "Shader(@)".}

proc constructShader*(`type`: Type, source: String): Shader {.constructor,importcpp: "Shader(@)".}

proc constructShader*(`type`: Type, shaderBinary: ptr Shaderbinary ): Shader {.constructor,importcpp: "Shader(@)".}

proc constructShader*(rhs: Shader, copyop: Copyop = SHALLOW_COPY): Shader {.constructor,importcpp: "Shader(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructPerContextShader*(shader: ptr Shader , contextID: cuint): PerContextShader {.constructor,importcpp: "PerContextShader(@)".}

proc constructPerContextShader*(): PerContextShader {.constructor,importcpp: "PerContextShader".}

proc constructPerContextShader*(Percontextshader): PerContextShader {.constructor,importcpp: "PerContextShader(@)".}

proc constructShaderObjects*(shader: ptr Shader , contextID: cuint): ShaderObjects {.constructor,importcpp: "ShaderObjects(@)".}

proc constructShaderComponent*(): ShaderComponent {.constructor,importcpp: "ShaderComponent".}

proc constructShaderComponent*(sc: Shadercomponent, copyop: Copyop = SHALLOW_COPY): ShaderComponent {.constructor,importcpp: "ShaderComponent(@)".}

proc cloneType*(this: ShaderBinary): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderBinary, copyop: Copyop): ptr Object   {.importcpp: "clone".}

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

proc readShaderBinaryFile*(this: var ShaderBinary, fileName: String): ptr Shaderbinary   {.importcpp: "readShaderBinaryFile".}
    ## Read shader binary from file. Return the resulting Shader or 0 if no
    ## valid shader binary could be read.

proc cloneType*(this: Shader): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Shader, copyop: Copyop): ptr Object   {.importcpp: "clone".}

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

proc setFileName*(this: var Shader, fileName: String)  {.importcpp: "setFileName".}
    ## Set file name for the shader source code.

proc getFileName*(this: Shader): String  {.importcpp: "getFileName".}
    ## Get filename to which the shader source code belongs.

proc setShaderSource*(this: var Shader, sourceText: String)  {.importcpp: "setShaderSource".}
    ## Set the Shader's source code text from a string.

proc getShaderSource*(this: Shader): String  {.importcpp: "getShaderSource".}
    ## Query the shader's source code text

proc setShaderDefinesMode*(this: var Shader, sdm: Shaderdefinesmode)  {.importcpp: "setShaderDefinesMode".}

proc getShaderDefinesMode*(this: Shader): Shaderdefinesmode  {.importcpp: "getShaderDefinesMode".}

proc setShaderDefines*(this: var Shader, shaderDefs: Shaderdefines)  {.importcpp: "setShaderDefines".}

proc getShaderDefines*(this: var Shader): Shaderdefines  {.importcpp: "getShaderDefines".}

proc getShaderDefines*(this: Shader): Shaderdefines  {.importcpp: "getShaderDefines".}

proc setShaderRequirements*(this: var Shader, shaderDefs: Shaderdefines)  {.importcpp: "setShaderRequirements".}

proc getShaderRequirements*(this: var Shader): Shaderdefines  {.importcpp: "getShaderRequirements".}

proc getShaderRequirements*(this: Shader): Shaderdefines  {.importcpp: "getShaderRequirements".}

proc setShaderBinary*(this: var Shader, shaderBinary: ptr Shaderbinary )  {.importcpp: "setShaderBinary".}
    ## Set the Shader using a ShaderBinary.

proc getShaderBinary*(this: var Shader): ptr Shaderbinary   {.importcpp: "getShaderBinary".}
    ## Get the Shader's ShaderBinary, return NULL if none is assigned.

proc getShaderBinary*(this: Shader): ptr Shaderbinary   {.importcpp: "getShaderBinary".}
    ## Get the const Shader's ShaderBinary, return NULL if none is assigned.

proc readShaderFile*(this: var Shader, `type`: Type, fileName: String): ptr Shader   {.importcpp: "readShaderFile".}
    ## Deorecated use osgDB::readRefShaderFile().

proc loadShaderSourceFromFile*(this: var Shader, fileName: String): bool  {.importcpp: "loadShaderSourceFromFile".}
    ## Deorecated use osgDB::readRefShaderFile().

proc addCodeInjection*(this: var Shader, position: cfloat, code: String)  {.importcpp: "addCodeInjection".}
    ## Add code injection that will be placed in the main shader to enable
    ## support for this shader. The position is set up so that code to be
    ## inserted before the main() will have a negative value, a position
    ## between 0 and 1.0 will be inserted in main() and a position greater
    ## than 1.0 will be placed after the main(). During shader composition
    ## all the code injections are sorted in ascending order and then placed
    ## in the appropriate section of the main shader.

proc getCodeInjectionMap*(this: var Shader): Codeinjectionmap  {.importcpp: "getCodeInjectionMap".}
    ## Get the code injection map.

proc getCodeInjectionMap*(this: Shader): Codeinjectionmap  {.importcpp: "getCodeInjectionMap".}
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

proc getTypeId*(this: var Shader, tname: String): Type  {.importcpp: "getTypeId".}

proc setDefineString*(this: var PerContextShader, defStr: String)  {.importcpp: "setDefineString".}

proc getDefineString*(this: PerContextShader): String  {.importcpp: "getDefineString".}

proc getHandle*(this: PerContextShader): GLuint  {.importcpp: "getHandle".}

proc requestCompile*(this: var PerContextShader)  {.importcpp: "requestCompile".}

proc compileShader*(this: var PerContextShader, state: State)  {.importcpp: "compileShader".}

proc needsCompile*(this: PerContextShader): bool  {.importcpp: "needsCompile".}

proc isCompiled*(this: PerContextShader): bool  {.importcpp: "isCompiled".}

proc getInfoLog*(this: PerContextShader, infoLog: String): bool  {.importcpp: "getInfoLog".}

proc attachShader*(this: PerContextShader, program: GLuint)  {.importcpp: "attachShader".}
    ## Attach our glShader to a glProgram

proc detachShader*(this: PerContextShader, program: GLuint)  {.importcpp: "detachShader".}
    ## Detach our glShader from a glProgram

proc `=`*(this: var PerContextShader, Percontextshader): Percontextshader  {.importcpp: "# = #".}

proc getPCS*(this: ShaderObjects, defineStr: String): ptr Percontextshader   {.importcpp: "getPCS".}

proc createPerContextShader*(this: var ShaderObjects, defineStr: String): ptr Percontextshader   {.importcpp: "createPerContextShader".}

proc requestCompile*(this: var ShaderObjects)  {.importcpp: "requestCompile".}

proc getPCS*(this: Shader, state: State): ptr Percontextshader   {.importcpp: "getPCS".}

proc addProgramRef*(this: var Shader, program: ptr Program ): bool  {.importcpp: "addProgramRef".}

proc removeProgramRef*(this: var Shader, program: ptr Program ): bool  {.importcpp: "removeProgramRef".}

proc prefixcomputeShaderDefines*(this: var Shader)  {.importcpp: "_computeShaderDefines".}

proc prefixparseShaderDefines*(this: var Shader, str: String, defines: Shaderdefines)  {.importcpp: "_parseShaderDefines".}

proc `=`*(this: var Shader, Shader): Shader  {.importcpp: "# = #".}

proc cloneType*(this: ShaderComponent): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderComponent, copyop: Copyop): ptr Object   {.importcpp: "clone".}

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

{.pop.} # header: "Shader
