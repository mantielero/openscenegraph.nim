import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  ScissorIndexed* {.header: "ScissorIndexed", importcpp: "osg::ScissorIndexed", byref.} = object #of osg::StateAttribute
    ## Encapsulates glScissorIndexed function : the index version of glDepth



{.push header: "ScissorIndexed".}

proc constructScissorIndexed*(): ScissorIndexed {.constructor,importcpp: "osg::ScissorIndexed::ScissorIndexed".}

proc constructScissorIndexed*(index: cuint, x: cfloat, y: cfloat, width: cfloat, height: cfloat): ScissorIndexed {.constructor,importcpp: "osg::ScissorIndexed::ScissorIndexed(@)".}

proc constructScissorIndexed*(dp: Scissorindexed, copyop: Copyop = SHALLOW_COPY): ScissorIndexed {.constructor,importcpp: "osg::ScissorIndexed::ScissorIndexed(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ScissorIndexed): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ScissorIndexed, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ScissorIndexed, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ScissorIndexed): cstring  {.importcpp: "libraryName".}

proc className*(this: ScissorIndexed): cstring  {.importcpp: "className".}

proc getType*(this: ScissorIndexed): Type  {.importcpp: "getType".}

proc compare*(this: ScissorIndexed, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: ScissorIndexed): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var ScissorIndexed, index: cuint)  {.importcpp: "setIndex".}
    ## Set the index of the ScissorIndexed.

proc getIndex*(this: ScissorIndexed): cuint  {.importcpp: "getIndex".}
    ## Get the index of the ScissorIndexed.

proc setX*(this: var ScissorIndexed, x: cfloat)  {.importcpp: "setX".}

proc getX*(this: ScissorIndexed): cfloat  {.importcpp: "getX".}

proc setY*(this: var ScissorIndexed, y: cfloat)  {.importcpp: "setY".}

proc getY*(this: ScissorIndexed): cfloat  {.importcpp: "getY".}

proc setWidth*(this: var ScissorIndexed, w: cfloat)  {.importcpp: "setWidth".}

proc getWidth*(this: ScissorIndexed): cfloat  {.importcpp: "getWidth".}

proc setHeight*(this: var ScissorIndexed, height: cfloat)  {.importcpp: "setHeight".}

proc getHeight*(this: ScissorIndexed): cfloat  {.importcpp: "getHeight".}

proc apply*(this: ScissorIndexed, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "ScissorIndexed"
