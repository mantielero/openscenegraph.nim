import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  DepthRangeIndexed* {.header: "DepthRangeIndexed", importcpp: "osg::DepthRangeIndexed", byref.} = object #of osg::StateAttribute
    ## Encapsulates glDepthRangeIndexed function : the index version of
    ## glDepth



{.push header: "DepthRangeIndexed".}

proc constructDepthRangeIndexed*(): DepthRangeIndexed {.constructor,importcpp: "osg::DepthRangeIndexed::DepthRangeIndexed".}

proc constructDepthRangeIndexed*(index: cuint, zNear: cdouble, zFar: cdouble): DepthRangeIndexed {.constructor,importcpp: "osg::DepthRangeIndexed::DepthRangeIndexed(@)".}

proc constructDepthRangeIndexed*(dp: Depthrangeindexed, copyop: Copyop = SHALLOW_COPY): DepthRangeIndexed {.constructor,importcpp: "osg::DepthRangeIndexed::DepthRangeIndexed(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: DepthRangeIndexed): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DepthRangeIndexed, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DepthRangeIndexed, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DepthRangeIndexed): cstring  {.importcpp: "libraryName".}

proc className*(this: DepthRangeIndexed): cstring  {.importcpp: "className".}

proc getType*(this: DepthRangeIndexed): Type  {.importcpp: "getType".}

proc compare*(this: DepthRangeIndexed, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: DepthRangeIndexed): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var DepthRangeIndexed, index: cuint)  {.importcpp: "setIndex".}
    ## Set the index of the DepthRangeIndexed.

proc getIndex*(this: DepthRangeIndexed): cuint  {.importcpp: "getIndex".}
    ## Get the index of the DepthRangeIndexed.

proc setZNear*(this: var DepthRangeIndexed, zNear: cdouble)  {.importcpp: "setZNear".}

proc getZNear*(this: DepthRangeIndexed): cdouble  {.importcpp: "getZNear".}

proc setZFar*(this: var DepthRangeIndexed, zFar: cdouble)  {.importcpp: "setZFar".}

proc getZFar*(this: DepthRangeIndexed): cdouble  {.importcpp: "getZFar".}

proc apply*(this: DepthRangeIndexed, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "DepthRangeIndexed"
