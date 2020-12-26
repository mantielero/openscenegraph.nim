import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  BlendFuncMode* {.size:sizeof(cuint),header: "BlendFunc", importcpp: "osg::BlendFunc::BlendFuncMode".} = enum
    ZERO = 0,
    ONE = 1,
    SRC_COLOR = 768,
    ONE_MINUS_SRC_COLOR = 769,
    SRC_ALPHA = 770,
    ONE_MINUS_SRC_ALPHA = 771,
    DST_ALPHA = 772,
    ONE_MINUS_DST_ALPHA = 773,
    DST_COLOR = 774,
    ONE_MINUS_DST_COLOR = 775,
    SRC_ALPHA_SATURATE = 776,
    CONSTANT_COLOR = 32769,
    ONE_MINUS_CONSTANT_COLOR = 32770,
    CONSTANT_ALPHA = 32771,
    ONE_MINUS_CONSTANT_ALPHA = 32772

  BlendFunc* {.header: "BlendFunc", importcpp: "osg::BlendFunc", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL blend/transparency state.



{.push header: "BlendFunc".}

proc constructBlendFunc*(): BlendFunc {.constructor,importcpp: "osg::BlendFunc::BlendFunc".}

proc constructBlendFunc*(source: GLenum, destination: GLenum): BlendFunc {.constructor,importcpp: "osg::BlendFunc::BlendFunc(@)".}

proc constructBlendFunc*(source: GLenum, destination: GLenum, source_alpha: GLenum, destination_alpha: GLenum): BlendFunc {.constructor,importcpp: "osg::BlendFunc::BlendFunc(@)".}

proc constructBlendFunc*(trans: Blendfunc, copyop: Copyop = SHALLOW_COPY): BlendFunc {.constructor,importcpp: "osg::BlendFunc::BlendFunc(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendFunc): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendFunc, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendFunc, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendFunc): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendFunc): cstring  {.importcpp: "className".}

proc getType*(this: BlendFunc): Type  {.importcpp: "getType".}

proc compare*(this: BlendFunc, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendFunc, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var BlendFunc, source: GLenum, destination: GLenum)  {.importcpp: "setFunction".}

proc setFunction*(this: var BlendFunc, source_rgb: GLenum, destination_rgb: GLenum, source_alpha: GLenum, destination_alpha: GLenum)  {.importcpp: "setFunction".}

proc setSource*(this: var BlendFunc, source: GLenum)  {.importcpp: "setSource".}

proc getSource*(this: BlendFunc): GLenum  {.importcpp: "getSource".}

proc setSourceRGB*(this: var BlendFunc, source: GLenum)  {.importcpp: "setSourceRGB".}

proc getSourceRGB*(this: BlendFunc): GLenum  {.importcpp: "getSourceRGB".}

proc setSourceAlpha*(this: var BlendFunc, source: GLenum)  {.importcpp: "setSourceAlpha".}

proc getSourceAlpha*(this: BlendFunc): GLenum  {.importcpp: "getSourceAlpha".}

proc setDestination*(this: var BlendFunc, destination: GLenum)  {.importcpp: "setDestination".}

proc getDestination*(this: BlendFunc): GLenum  {.importcpp: "getDestination".}

proc setDestinationRGB*(this: var BlendFunc, destination: GLenum)  {.importcpp: "setDestinationRGB".}

proc getDestinationRGB*(this: BlendFunc): GLenum  {.importcpp: "getDestinationRGB".}

proc setDestinationAlpha*(this: var BlendFunc, destination: GLenum)  {.importcpp: "setDestinationAlpha".}

proc getDestinationAlpha*(this: BlendFunc): GLenum  {.importcpp: "getDestinationAlpha".}

proc apply*(this: BlendFunc, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendFunc"
