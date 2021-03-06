import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  ClampColor* {.header: "ClampColor", importcpp: "osg::ClampColor", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL ClampColor state.



{.push header: "ClampColor".}

proc constructClampColor*(): ClampColor {.constructor,importcpp: "osg::ClampColor::ClampColor".}

proc constructClampColor*(vertexMode: GLenum, fragmentMode: GLenum, readMode: GLenum): ClampColor {.constructor,importcpp: "osg::ClampColor::ClampColor(@)".}

proc constructClampColor*(rhs: ClampColor, copyop: CopyOp = SHALLOW_COPY): ClampColor {.constructor,importcpp: "osg::ClampColor::ClampColor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ClampColor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClampColor, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClampColor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ClampColor): cstring  {.importcpp: "libraryName".}

proc className*(this: ClampColor): cstring  {.importcpp: "className".}

proc getType*(this: ClampColor): Type  {.importcpp: "getType".}

proc compare*(this: ClampColor, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setClampVertexColor*(this: var ClampColor, mode: GLenum)  {.importcpp: "setClampVertexColor".}

proc getClampVertexColor*(this: ClampColor): GLenum  {.importcpp: "getClampVertexColor".}

proc setClampFragmentColor*(this: var ClampColor, mode: GLenum)  {.importcpp: "setClampFragmentColor".}

proc getClampFragmentColor*(this: ClampColor): GLenum  {.importcpp: "getClampFragmentColor".}

proc setClampReadColor*(this: var ClampColor, mode: GLenum)  {.importcpp: "setClampReadColor".}

proc getClampReadColor*(this: ClampColor): GLenum  {.importcpp: "getClampReadColor".}

proc apply*(this: ClampColor, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "ClampColor"
