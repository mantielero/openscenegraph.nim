import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLenum
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  BlendFuncMode* {.size:sizeof(cuint),header: "BlendFunc", importcpp: "osg::BlendFunc::BlendFuncMode".} = enum
    DST_ALPHA = 772,
    DST_COLOR = 774,
    ONE = 1,
    ONE_MINUS_DST_ALPHA = 773,
    ONE_MINUS_DST_COLOR = 775,
    ONE_MINUS_SRC_ALPHA = 771,
    ONE_MINUS_SRC_COLOR = 769,
    SRC_ALPHA = 770,
    SRC_ALPHA_SATURATE = 776,
    SRC_COLOR = 768,
    CONSTANT_COLOR = 32769,
    ONE_MINUS_CONSTANT_COLOR = 32770,
    CONSTANT_ALPHA = 32771,
    ONE_MINUS_CONSTANT_ALPHA = 32772,
    ZERO = 0

{.push header: "BlendFunc".}


# Constructors and methods
proc constructBlendFunc*(): BlendFunc {.constructor,importcpp: "BlendFunc".}

proc constructBlendFunc*(source: GLenum, destination: GLenum): BlendFunc {.constructor,importcpp: "BlendFunc(@)".}

proc constructBlendFunc*(source: GLenum, destination: GLenum, source_alpha: GLenum, destination_alpha: GLenum): BlendFunc {.constructor,importcpp: "BlendFunc(@)".}

proc constructBlendFunc*(trans: Blendfunc, copyop: Copyop = SHALLOW_COPY): BlendFunc {.constructor,importcpp: "BlendFunc(@)".}
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

{.pop.} # header: "BlendFunc
