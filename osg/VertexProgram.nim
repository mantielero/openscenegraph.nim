import osg_types
  # File: State  was providing: osg::State
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
type
  VertexProgram* {.header: "VertexProgram", importcpp: "osg::VertexProgram", byref.} = object #of class osg::StateAttribute
    ## VertexProgram - encapsulates the OpenGL ARB vertex program state.

  LocalParamList* {.header: "VertexProgram", importcpp: "osg::VertexProgram::LocalParamList".} = cint
  MatrixList* {.header: "VertexProgram", importcpp: "osg::VertexProgram::MatrixList".} = cint
  VertexProgramIDList* {.header: "VertexProgram", importcpp: "osg::VertexProgram::VertexProgramIDList".} = buffered_value[GLuint]


{.push header: "VertexProgram".}

proc constructVertexProgram*(): VertexProgram {.constructor,importcpp: "osg::VertexProgram::VertexProgram".}

proc constructVertexProgram*(vp: VertexProgram, copyop: CopyOp = SHALLOW_COPY): VertexProgram {.constructor,importcpp: "osg::VertexProgram::VertexProgram(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: VertexProgram): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: VertexProgram, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: VertexProgram, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: VertexProgram): cstring  {.importcpp: "libraryName".}

proc className*(this: VertexProgram): cstring  {.importcpp: "className".}

proc getType*(this: VertexProgram): Type  {.importcpp: "getType".}

proc compare*(this: VertexProgram, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: VertexProgram, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc getVertexProgramID*(this: VertexProgram, contextID: cuint): GLuint  {.importcpp: "getVertexProgramID".}
    ## Get the handle to the vertex program ID for the current context.

proc setVertexProgram*(this: var VertexProgram, program: cstring)  {.importcpp: "setVertexProgram".}
    ## Set the vertex program using a C style string.

proc setVertexProgram*(this: var VertexProgram, program: string)  {.importcpp: "setVertexProgram".}
    ## Set the vertex program using C++ style string.

proc getVertexProgram*(this: VertexProgram): string  {.importcpp: "getVertexProgram".}
    ## Get the vertex program.

proc setProgramLocalParameter*(this: var VertexProgram, index: GLuint, p: Vec4)  {.importcpp: "setProgramLocalParameter".}
    ## Set Program Parameters

proc setLocalParameters*(this: var VertexProgram, lpl: LocalParamList)  {.importcpp: "setLocalParameters".}
    ## Set list of Program Parameters

proc getLocalParameters*(this: var VertexProgram): LocalParamList  {.importcpp: "getLocalParameters".}
    ## Get list of Program Parameters

proc getLocalParameters*(this: VertexProgram): LocalParamList  {.importcpp: "getLocalParameters".}
    ## Get const list of Program Parameters

proc setMatrix*(this: var VertexProgram, mode: GLenum, matrix: Matrix)  {.importcpp: "setMatrix".}
    ## Matrix

proc setMatrices*(this: var VertexProgram, matrices: MatrixList)  {.importcpp: "setMatrices".}
    ## Set list of Matrices

proc getMatrices*(this: var VertexProgram): MatrixList  {.importcpp: "getMatrices".}
    ## Get list of Matrices

proc getMatrices*(this: VertexProgram): MatrixList  {.importcpp: "getMatrices".}
    ## Get list of Matrices

proc dirtyVertexProgramObject*(this: var VertexProgram)  {.importcpp: "dirtyVertexProgramObject".}
    ## Force a recompile on next apply() of associated OpenGL vertex program
    ## objects.

proc apply*(this: VertexProgram, state: State)  {.importcpp: "apply".}

proc compileGLObjects*(this: VertexProgram, state: State)  {.importcpp: "compileGLObjects".}

proc resizeGLObjectBuffers*(this: var VertexProgram, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: VertexProgram, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## Release any OpenGL objects in specified graphics context if State
    ## object is passed, otherwise release OpenGL objects for all graphics
    ## contexts if State object pointer is NULL.

{.pop.}  # header: "VertexProgram"
