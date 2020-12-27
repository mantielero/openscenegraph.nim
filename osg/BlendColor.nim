import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  BlendColor* {.header: "BlendColor", importcpp: "osg::BlendColor", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL blend/transparency state.



{.push header: "BlendColor".}

proc constructBlendColor*(): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor".}

proc constructBlendColor*(antColor: Vec4): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor(@)".}

proc constructBlendColor*(trans: Blendcolor, copyop: Copyop = SHALLOW_COPY): BlendColor {.constructor,importcpp: "osg::BlendColor::BlendColor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendColor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendColor, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendColor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendColor): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendColor): cstring  {.importcpp: "className".}

proc getType*(this: BlendColor): Type  {.importcpp: "getType".}

proc compare*(this: BlendColor, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendColor, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setConstantColor*(this: var BlendColor, color: Vec4)  {.importcpp: "setConstantColor".}

proc getConstantColor*(this: var BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc getConstantColor*(this: BlendColor): Vec4  {.importcpp: "getConstantColor".}

proc apply*(this: BlendColor, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendColor"
