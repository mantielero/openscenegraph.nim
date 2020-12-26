import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/Shader  # provides: osg::Shader
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/Uniform  # provides: osg::Uniform
type
  Uniforms* {.header: "ShaderAttribute", importcpp: "osg::ShaderAttribute::Uniforms".} = cint
  ShaderAttribute* {.header: "ShaderAttribute", importcpp: "osg::ShaderAttribute", byref.} = object #of class osg::StateAttribute



{.push header: "ShaderAttribute".}

proc constructShaderAttribute*(): ShaderAttribute {.constructor,importcpp: "osg::ShaderAttribute::ShaderAttribute".}

proc constructShaderAttribute*(sa: Shaderattribute, copyop: Copyop = SHALLOW_COPY): ShaderAttribute {.constructor,importcpp: "osg::ShaderAttribute::ShaderAttribute(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ShaderAttribute): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderAttribute, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderAttribute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderAttribute): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderAttribute): cstring  {.importcpp: "className".}

proc compare*(this: ShaderAttribute, sa: Stateattribute): cint  {.importcpp: "compare".}
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

proc getModeUsage*(this: ShaderAttribute, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc apply*(this: ShaderAttribute, state: State)  {.importcpp: "apply".}

proc compileGLObjects*(this: ShaderAttribute, state: State)  {.importcpp: "compileGLObjects".}

proc resizeGLObjectBuffers*(this: var ShaderAttribute, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*(this: ShaderAttribute, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

{.pop.}  # header: "ShaderAttribute"
