import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Shader  was providing: osg::Shader
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Uniform  was providing: osg::Uniform
type
  ShaderAttribute* {.header: "ShaderAttribute", importcpp: "osg::ShaderAttribute", byref.} = object #of class osg::StateAttribute

  Uniforms* {.header: "ShaderAttribute", importcpp: "osg::ShaderAttribute::Uniforms".} = cint


{.push header: "ShaderAttribute".}

proc constructShaderAttribute*(): ShaderAttribute {.constructor,importcpp: "osg::ShaderAttribute::ShaderAttribute".}

proc constructShaderAttribute*(sa: ShaderAttribute, copyop: CopyOp = SHALLOW_COPY): ShaderAttribute {.constructor,importcpp: "osg::ShaderAttribute::ShaderAttribute(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ShaderAttribute): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderAttribute, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderAttribute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderAttribute): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderAttribute): cstring  {.importcpp: "className".}

proc compare*(this: ShaderAttribute, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setType*(this: var ShaderAttribute, `type`: Type)  {.importcpp: "setType".}

proc getType*(this: ShaderAttribute): Type  {.importcpp: "getType".}

proc addShader*(this: var ShaderAttribute, shader: ptr Shader ): cuint  {.importcpp: "addShader".}

proc removeShader*(this: var ShaderAttribute, i: cuint)  {.importcpp: "removeShader".}

proc getNumShaders*(this: ShaderAttribute): cuint  {.importcpp: "getNumShaders".}

proc getShader*(this: var ShaderAttribute, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc getShader*(this: ShaderAttribute, i: cuint): ptr Shader   {.importcpp: "getShader".}

proc addUniform*(this: var ShaderAttribute, uniform: ptr Uniform ): cuint  {.importcpp: "addUniform".}

proc removeUniform*(this: var ShaderAttribute, i: cuint)  {.importcpp: "removeUniform".}

proc getNumUniforms*(this: ShaderAttribute): cuint  {.importcpp: "getNumUniforms".}

proc getUniform*(this: var ShaderAttribute, i: cuint): ptr Uniform   {.importcpp: "getUniform".}

proc getUniform*(this: ShaderAttribute, i: cuint): ptr Uniform   {.importcpp: "getUniform".}

proc getModeUsage*(this: ShaderAttribute, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc apply*(this: ShaderAttribute, state: State)  {.importcpp: "apply".}

proc compileGLObjects*(this: ShaderAttribute, state: State)  {.importcpp: "compileGLObjects".}

proc resizeGLObjectBuffers*(this: var ShaderAttribute, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*(this: ShaderAttribute, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

{.pop.}  # header: "ShaderAttribute"
