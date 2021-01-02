import osg_types
  # File: State  was providing: osg::State
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  BlendColor* {.header: "BlendColor", importcpp: "osg::BlendColor", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL blend/transparency state.



{.push header: "BlendColor".}

proc constructBlendColor*(): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor".}

proc constructBlendColor*(antColor: Vec4): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor(@)".}

proc constructBlendColor*(trans: BlendColor, copyop: CopyOp = SHALLOW_COPY): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendColor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendColor, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendColor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendColor): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendColor): cstring  {.importcpp: "className".}

proc getType*(this: BlendColor): Type  {.importcpp: "getType".}

proc compare*(this: BlendColor, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendColor, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setConstantColor*(this: var BlendColor, color: Vec4)  {.importcpp: "setConstantColor".}

proc getConstantColor*(this: var BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc getConstantColor*(this: BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc apply*(this: BlendColor, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendColor"
