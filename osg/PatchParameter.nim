import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Vec4  # provides: osg::Vec4
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/Vec2  # provides: osg::Vec2
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  PatchParameter* {.header: "PatchParameter", importcpp: "osg::PatchParameter", byref.} = object #of class osg::StateAttribute
    ## Class which encapsulates glPatchParameter(..).



{.push header: "PatchParameter".}

proc constructPatchParameter*(vertices: GLint): PatchParameter {.constructor,importcpp: "osg::PatchParameter::PatchParameter(@)".}

proc constructPatchParameter*(rhs: Patchparameter, copyop: Copyop = SHALLOW_COPY): PatchParameter {.constructor,importcpp: "osg::PatchParameter::PatchParameter(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PatchParameter): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PatchParameter, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PatchParameter, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PatchParameter): cstring  {.importcpp: "libraryName".}

proc className*(this: PatchParameter): cstring  {.importcpp: "className".}

proc getType*(this: PatchParameter): Type  {.importcpp: "getType".}

proc compare*(this: PatchParameter, sa: Stateattribute): cint  {.importcpp: "compare".}
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
