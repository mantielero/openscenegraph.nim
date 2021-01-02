import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  PrimitiveRestartIndex* {.header: "PrimitiveRestartIndex", importcpp: "osg::PrimitiveRestartIndex", byref.} = object #of class osg::StateAttribute
    ## osg::PrimitiveRestartIndex does nothing if OpenGL 3.1 is not
    ## available.



{.push header: "PrimitiveRestartIndex".}

proc constructPrimitiveRestartIndex*(): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex".}

proc constructPrimitiveRestartIndex*(restartIndex: cuint): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex(@)".}

proc constructPrimitiveRestartIndex*(primitiveRestartIndex: PrimitiveRestartIndex, copyop: CopyOp = SHALLOW_COPY): PrimitiveRestartIndex {.constructor,importcpp: "osg::PrimitiveRestartIndex::PrimitiveRestartIndex(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PrimitiveRestartIndex): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PrimitiveRestartIndex, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PrimitiveRestartIndex, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PrimitiveRestartIndex): cstring  {.importcpp: "libraryName".}

proc className*(this: PrimitiveRestartIndex): cstring  {.importcpp: "className".}

proc getType*(this: PrimitiveRestartIndex): Type  {.importcpp: "getType".}

proc compare*(this: PrimitiveRestartIndex, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setRestartIndex*(this: var PrimitiveRestartIndex, restartIndex: cuint)  {.importcpp: "setRestartIndex".}

proc getRestartIndex*(this: PrimitiveRestartIndex): cuint  {.importcpp: "getRestartIndex".}

proc apply*(this: PrimitiveRestartIndex, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "PrimitiveRestartIndex"
