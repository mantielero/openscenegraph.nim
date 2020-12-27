import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  PrimitiveRestartIndex* {.header: "PrimitiveRestartIndex", importcpp: "osg::PrimitiveRestartIndex", byref.} = object #of class osg::StateAttribute
    ## osg::PrimitiveRestartIndex does nothing if OpenGL 3.1 is not
    ## available.



{.push header: "PrimitiveRestartIndex".}

proc constructPrimitiveRestartIndex*(): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex".}

proc constructPrimitiveRestartIndex*(restartIndex: cuint): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex(@)".}

proc constructPrimitiveRestartIndex*(primitiveRestartIndex: Primitiverestartindex, copyop: Copyop = SHALLOW_COPY): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PrimitiveRestartIndex): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PrimitiveRestartIndex, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PrimitiveRestartIndex, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PrimitiveRestartIndex): cstring  {.importcpp: "libraryName".}

proc className*(this: PrimitiveRestartIndex): cstring  {.importcpp: "className".}

proc getType*(this: PrimitiveRestartIndex): Type  {.importcpp: "getType".}

proc compare*(this: PrimitiveRestartIndex, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setRestartIndex*(this: var PrimitiveRestartIndex, restartIndex: cuint)  {.importcpp: "setRestartIndex".}

proc getRestartIndex*(this: PrimitiveRestartIndex): cuint  {.importcpp: "getRestartIndex".}

proc apply*(this: PrimitiveRestartIndex, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "PrimitiveRestartIndex"
