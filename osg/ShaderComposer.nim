import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: Shader  was providing: osg::Shader
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Program  was providing: osg::Program
type
  ShaderComponents* {.header: "ShaderComposer", importcpp: "osg::ShaderComponents".} = cint
  Shaders* {.header: "ShaderComposer", importcpp: "osg::ShaderComposer::Shaders".} = cint
  ProgramMap* {.header: "ShaderComposer", importcpp: "osg::ShaderComposer::ProgramMap".} = cint
  ShaderMainMap* {.header: "ShaderComposer", importcpp: "osg::ShaderComposer::ShaderMainMap".} = cint


{.push header: "ShaderComposer".}

proc constructShaderComposer*(): ShaderComposer {.constructor,importcpp: "osg::ShaderComposer::ShaderComposer".}

proc constructShaderComposer*(sa: ShaderComposer, copyop: CopyOp = SHALLOW_COPY): ShaderComposer {.constructor,importcpp: "osg::ShaderComposer::ShaderComposer(@)".}

proc cloneType*(this: ShaderComposer): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderComposer, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderComposer, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderComposer): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderComposer): cstring  {.importcpp: "className".}

proc getOrCreateProgram*(this: var ShaderComposer, shaderComponents: ShaderComponents): ptr Program   {.importcpp: "getOrCreateProgram".}

proc composeMain*(this: var ShaderComposer, shaders: Shaders): ptr Shader   {.importcpp: "composeMain".}

proc addShaderToProgram*(this: var ShaderComposer, program: ptr Program , shaders: Shaders)  {.importcpp: "addShaderToProgram".}

proc releaseGLObjects*(this: ShaderComposer, state: ptr State )  {.importcpp: "releaseGLObjects".}

{.pop.}  # header: "ShaderComposer"
