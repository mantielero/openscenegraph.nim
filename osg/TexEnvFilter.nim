import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  TexEnvFilter* {.header: "TexEnvFilter", importcpp: "osg::TexEnvFilter", byref.} = object #of class osg::StateAttribute
    ## TexEnvFilter - encapsulates the OpenGL glTexEnv
    ## (GL_TEXTURE_FILTER_CONTROL) state.



{.push header: "TexEnvFilter".}

proc constructTexEnvFilter*(lodBias: cfloat): TexEnvFilter {.constructor,importcpp: "osg::TexEnvFilter::TexEnvFilter(@)".}

proc constructTexEnvFilter*(texenv: TexEnvFilter, copyop: CopyOp = SHALLOW_COPY): TexEnvFilter {.constructor,importcpp: "osg::TexEnvFilter::TexEnvFilter(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexEnvFilter): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexEnvFilter, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexEnvFilter, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexEnvFilter): cstring  {.importcpp: "libraryName".}

proc className*(this: TexEnvFilter): cstring  {.importcpp: "className".}

proc getType*(this: TexEnvFilter): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexEnvFilter): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexEnvFilter, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setLodBias*(this: var TexEnvFilter, lodBias: cfloat)  {.importcpp: "setLodBias".}

proc getLodBias*(this: TexEnvFilter): cfloat  {.importcpp: "getLodBias".}

proc apply*(this: TexEnvFilter, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "TexEnvFilter"
