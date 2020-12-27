import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
type
  FragmentProgram* {.header: "FragmentProgram", importcpp: "osg::FragmentProgram", byref.} = object #of class osg::StateAttribute
    ## FragmentProgram - encapsulates the OpenGL ARB fragment program state.

  LocalParamList* {.header: "FragmentProgram", importcpp: "osg::FragmentProgram::LocalParamList".} = cint
  MatrixList* {.header: "FragmentProgram", importcpp: "osg::FragmentProgram::MatrixList".} = cint
  FragmentProgramIDList* {.header: "FragmentProgram", importcpp: "osg::FragmentProgram::FragmentProgramIDList".} = buffered_value[GLuint]


{.push header: "FragmentProgram".}

proc constructFragmentProgram*(): FragmentProgram {.constructor,importcpp: "osg::FragmentProgram::FragmentProgram".}

proc constructFragmentProgram*(vp: Fragmentprogram, copyop: Copyop = SHALLOW_COPY): FragmentProgram {.constructor,importcpp: "osg::FragmentProgram::FragmentProgram(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: FragmentProgram): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: FragmentProgram, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: FragmentProgram, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: FragmentProgram): cstring  {.importcpp: "libraryName".}

proc className*(this: FragmentProgram): cstring  {.importcpp: "className".}

proc getType*(this: FragmentProgram): Type  {.importcpp: "getType".}

proc compare*(this: FragmentProgram, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: FragmentProgram, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc getFragmentProgramID*(this: FragmentProgram, contextID: cuint): GLuint  {.importcpp: "getFragmentProgramID".}
    ## Get the handle to the fragment program id for the current context.

proc setFragmentProgram*(this: var FragmentProgram, program: cstring)  {.importcpp: "setFragmentProgram".}
    ## Set the fragment program using a C style string.

proc setFragmentProgram*(this: var FragmentProgram, program: String)  {.importcpp: "setFragmentProgram".}
    ## Set the fragment program using C++ style string.

proc getFragmentProgram*(this: FragmentProgram): String  {.importcpp: "getFragmentProgram".}
    ## Get the fragment program.

proc setProgramLocalParameter*(this: var FragmentProgram, index: GLuint, p: Vec4)  {.importcpp: "setProgramLocalParameter".}
    ## Set Program Parameters

proc setLocalParameters*(this: var FragmentProgram, lpl: Localparamlist)  {.importcpp: "setLocalParameters".}
    ## Set list of Program Parameters

proc getLocalParameters*(this: var FragmentProgram): Localparamlist  {.importcpp: "getLocalParameters".}
    ## Get list of Program Parameters

proc getLocalParameters*(this: FragmentProgram): Localparamlist  {.importcpp: "getLocalParameters".}
    ## Get const list of Program Parameters

proc setMatrix*(this: var FragmentProgram, mode: GLenum, matrix: Matrix)  {.importcpp: "setMatrix".}
    ## Matrix

proc setMatrices*(this: var FragmentProgram, matrices: Matrixlist)  {.importcpp: "setMatrices".}
    ## Set list of Matrices

proc getMatrices*(this: var FragmentProgram): Matrixlist  {.importcpp: "getMatrices".}
    ## Get list of Matrices

proc getMatrices*(this: FragmentProgram): Matrixlist  {.importcpp: "getMatrices".}
    ## Get list of Matrices

proc dirtyFragmentProgramObject*(this: var FragmentProgram)  {.importcpp: "dirtyFragmentProgramObject".}
    ## Force a recompile on next apply() of associated OpenGL vertex program
    ## objects.

proc apply*(this: FragmentProgram, state: State)  {.importcpp: "apply".}

proc compileGLObjects*(this: FragmentProgram, state: State)  {.importcpp: "compileGLObjects".}

proc resizeGLObjectBuffers*(this: var FragmentProgram, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: FragmentProgram, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## release an OpenGL objects in specified graphics context if State
    ## object is passed, otherwise release OpenGL objects for all graphics
    ## context if State object pointer == NULL.

{.pop.}  # header: "FragmentProgram"
