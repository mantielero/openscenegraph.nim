import gl # Provides GLint
import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Vec4 # Provides Vec4
import Vec3 # Provides Vec3
import State # Provides State


type
  # Enums
  CombineParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::CombineParam".} = enum
    REPLACE = 7681,
    MODULATE = 8448,
    ADD = 260,
    ADD_SIGNED = 34164,
    INTERPOLATE = 34165,
    SUBTRACT = 34023,
    DOT3_RGB = 34478,
    DOT3_RGBA = 34479

  SourceParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::SourceParam".} = enum
    CONSTANT = 34166,
    PRIMARY_COLOR = 34167,
    PREVIOUS = 34168,
    TEXTURE = 5890,
    TEXTURE0 = 33984,
    TEXTURE1 = 33985,
    TEXTURE2 = 33986,
    TEXTURE3 = 33987,
    TEXTURE4 = 33988,
    TEXTURE5 = 33989,
    TEXTURE6 = 33990,
    TEXTURE7 = 33991

  OperandParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::OperandParam".} = enum
    SRC_COLOR = 768,
    ONE_MINUS_SRC_COLOR = 769,
    SRC_ALPHA = 770,
    ONE_MINUS_SRC_ALPHA = 771

{.push header: "TexEnvCombine".}


# Constructors and methods
proc constructTexEnvCombine*(): TexEnvCombine {.constructor,importcpp: "TexEnvCombine".}

proc constructTexEnvCombine*(texenv: Texenvcombine, copyop: Copyop = SHALLOW_COPY): TexEnvCombine {.constructor,importcpp: "TexEnvCombine(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexEnvCombine): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexEnvCombine, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexEnvCombine, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexEnvCombine): cstring  {.importcpp: "libraryName".}

proc className*(this: TexEnvCombine): cstring  {.importcpp: "className".}

proc getType*(this: TexEnvCombine): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexEnvCombine): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexEnvCombine, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setCombine_RGB*(this: var TexEnvCombine, cm: GLint)  {.importcpp: "setCombine_RGB".}

proc setCombine_Alpha*(this: var TexEnvCombine, cm: GLint)  {.importcpp: "setCombine_Alpha".}

proc getCombine_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getCombine_RGB".}

proc getCombine_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getCombine_Alpha".}

proc setSource0_RGB*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource0_RGB".}

proc setSource1_RGB*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource1_RGB".}

proc setSource2_RGB*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource2_RGB".}

proc setSource0_Alpha*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource0_Alpha".}

proc setSource1_Alpha*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource1_Alpha".}

proc setSource2_Alpha*(this: var TexEnvCombine, sp: GLint)  {.importcpp: "setSource2_Alpha".}

proc getSource0_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getSource0_RGB".}

proc getSource1_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getSource1_RGB".}

proc getSource2_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getSource2_RGB".}

proc getSource0_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getSource0_Alpha".}

proc getSource1_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getSource1_Alpha".}

proc getSource2_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getSource2_Alpha".}

proc setOperand0_RGB*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand0_RGB".}

proc setOperand1_RGB*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand1_RGB".}

proc setOperand2_RGB*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand2_RGB".}

proc setOperand0_Alpha*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand0_Alpha".}

proc setOperand1_Alpha*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand1_Alpha".}

proc setOperand2_Alpha*(this: var TexEnvCombine, op: GLint)  {.importcpp: "setOperand2_Alpha".}

proc getOperand0_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getOperand0_RGB".}

proc getOperand1_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getOperand1_RGB".}

proc getOperand2_RGB*(this: TexEnvCombine): GLint  {.importcpp: "getOperand2_RGB".}

proc getOperand0_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getOperand0_Alpha".}

proc getOperand1_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getOperand1_Alpha".}

proc getOperand2_Alpha*(this: TexEnvCombine): GLint  {.importcpp: "getOperand2_Alpha".}

proc setScale_RGB*(this: var TexEnvCombine, scale: cfloat)  {.importcpp: "setScale_RGB".}

proc setScale_Alpha*(this: var TexEnvCombine, scale: cfloat)  {.importcpp: "setScale_Alpha".}

proc getScale_RGB*(this: TexEnvCombine): cfloat  {.importcpp: "getScale_RGB".}

proc getScale_Alpha*(this: TexEnvCombine): cfloat  {.importcpp: "getScale_Alpha".}

proc setConstantColor*(this: var TexEnvCombine, color: Vec4)  {.importcpp: "setConstantColor".}

proc getConstantColor*(this: TexEnvCombine): Vec4  {.importcpp: "getConstantColor".}

proc setConstantColorAsLightDirection*(this: var TexEnvCombine, direction: Vec3)  {.importcpp: "setConstantColorAsLightDirection".}
    ## Set the constant color attribute to the given light direction for use
    ## with DOT3 combine operation.

proc getConstantColorAsLightDirection*(this: TexEnvCombine): Vec3  {.importcpp: "getConstantColorAsLightDirection".}

proc apply*(this: TexEnvCombine, state: State)  {.importcpp: "apply".}

proc needsTexEnvCombiner*(this: TexEnvCombine, value: GLint): bool  {.importcpp: "needsTexEnvCombiner".}

proc computeNeedForTexEnvCombiners*(this: var TexEnvCombine)  {.importcpp: "computeNeedForTexEnvCombiners".}

{.pop.} # header: "TexEnvCombine
