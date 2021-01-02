import osg_types
  # File: State  was providing: osg::State
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Vec2  was providing: osg::Vec2
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  PatchParameter* {.header: "PatchParameter", importcpp: "osg::PatchParameter", byref.} = object #of class osg::StateAttribute
    ## Class which encapsulates glPatchParameter(..).



{.push header: "PatchParameter".}

proc constructPatchParameter*(vertices: GLint): PatchParameter {.constructor,importcpp: "osg::PatchParameter::PatchParameter(@)".}

proc constructPatchParameter*(rhs: PatchParameter, copyop: CopyOp = SHALLOW_COPY): PatchParameter {.constructor,importcpp: "osg::PatchParameter::PatchParameter(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PatchParameter): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PatchParameter, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PatchParameter, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PatchParameter): cstring  {.importcpp: "libraryName".}

proc className*(this: PatchParameter): cstring  {.importcpp: "className".}

proc getType*(this: PatchParameter): Type  {.importcpp: "getType".}

proc compare*(this: PatchParameter, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setVertices*(this: var PatchParameter, vertices: GLint)  {.importcpp: "setVertices".}
    ## Set GL_PATCH_VERTICES parameter.

proc getVertices*(this: PatchParameter): GLint  {.importcpp: "getVertices".}
    ## Get GL_PATCH_VERTICES parameter.

proc setPatchDefaultInnerLevel*(this: var PatchParameter, level: Vec2)  {.importcpp: "setPatchDefaultInnerLevel".}
    ## Set GL_PATCH_DEFAULT_INNER_LEVEL parameter.

proc getPatchDefaultInnerLevel*(this: PatchParameter): Vec2  {.importcpp: "getPatchDefaultInnerLevel".}
    ## Get GL_PATCH_DEFAULT_INNER_LEVEL parameter.

proc setPatchDefaultOuterLevel*(this: var PatchParameter, level: Vec4)  {.importcpp: "setPatchDefaultOuterLevel".}
    ## Set GL_PATCH_DEFAULT_OUTER_LEVEL parameter.

proc getPatchDefaultOuterLevel*(this: PatchParameter): Vec4  {.importcpp: "getPatchDefaultOuterLevel".}
    ## Get GL_PATCH_DEFAULT_INNER_LEVEL parameter.

proc apply*(this: PatchParameter, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "PatchParameter"
