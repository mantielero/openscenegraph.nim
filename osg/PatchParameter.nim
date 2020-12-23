import Vec2 # Provides Vec2
import Vec4 # Provides Vec4
import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLint
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "PatchParameter".}


# Constructors and methods
proc constructPatchParameter*(vertices: GLint): PatchParameter {.constructor,importcpp: "PatchParameter(@)".}

proc constructPatchParameter*(rhs: Patchparameter, copyop: Copyop = SHALLOW_COPY): PatchParameter {.constructor,importcpp: "PatchParameter(@)".}
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

{.pop.} # header: "PatchParameter
