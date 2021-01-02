import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  Hint* {.header: "Hint", importcpp: "osg::Hint", byref.} = object #of class osg::StateAttribute



{.push header: "Hint".}

proc constructHint*(): Hint {.constructor,importcpp: "osg::Hint::Hint".}

proc constructHint*(target: GLenum, mode: GLenum): Hint {.constructor,importcpp: "osg::Hint::Hint(@)".}

proc constructHint*(hint: Hint, copyop: CopyOp = SHALLOW_COPY): Hint {.constructor,importcpp: "osg::Hint::Hint(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Hint): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Hint, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Hint, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Hint): cstring  {.importcpp: "libraryName".}

proc className*(this: Hint): cstring  {.importcpp: "className".}

proc getType*(this: Hint): Type  {.importcpp: "getType".}

proc compare*(this: Hint, sa: StateAttribute): cint  {.importcpp: "compare".}

proc getMember*(this: Hint): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc setTarget*(this: var Hint, target: GLenum)  {.importcpp: "setTarget".}

proc getTarget*(this: Hint): GLenum  {.importcpp: "getTarget".}

proc setMode*(this: var Hint, mode: GLenum)  {.importcpp: "setMode".}

proc getMode*(this: Hint): GLenum  {.importcpp: "getMode".}

proc apply*(this: Hint, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Hint"
