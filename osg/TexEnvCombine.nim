import Vec3  # provides: osg::Vec3
import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  CombineParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::CombineParam".} = enum
    cmbnprmADD = 260,
    cmbnprmREPLACE = 7681,
    cmbnprmMODULATE = 8448,
    cmbnprmSUBTRACT = 34023,
    cmbnprmADD_SIGNED = 34164,
    cmbnprmINTERPOLATE = 34165,
    cmbnprmDOT3_RGB = 34478,
    cmbnprmDOT3_RGBA = 34479

  SourceParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::SourceParam".} = enum
    srcprmTEXTURE = 5890,
    srcprmTEXTURE0 = 33984,
    srcprmTEXTURE1 = 33985,
    srcprmTEXTURE2 = 33986,
    srcprmTEXTURE3 = 33987,
    srcprmTEXTURE4 = 33988,
    srcprmTEXTURE5 = 33989,
    srcprmTEXTURE6 = 33990,
    srcprmTEXTURE7 = 33991,
    srcprmCONSTANT = 34166,
    srcprmPRIMARY_COLOR = 34167,
    srcprmPREVIOUS = 34168

  OperandParam* {.size:sizeof(cuint),header: "TexEnvCombine", importcpp: "osg::TexEnvCombine::OperandParam".} = enum
    prndprmSRC_COLOR = 768,
    prndprmONE_MINUS_SRC_COLOR = 769,
    prndprmSRC_ALPHA = 770,
    prndprmONE_MINUS_SRC_ALPHA = 771

  TexEnvCombine* {.header: "TexEnvCombine", importcpp: "osg::TexEnvCombine", byref.} = object #of class osg::StateAttribute
    ## TexEnvCombine encapsulates the OpenGL glTexEnvCombine (texture
    ## environment) state.



{.push header: "TexEnvCombine".}

proc constructTexEnvCombine*(): TexEnvCombine {.constructor,importcpp: "osg::TexEnvCombine::TexEnvCombine".}

proc constructTexEnvCombine*(texenv: Texenvcombine, copyop: Copyop = SHALLOW_COPY): TexEnvCombine {.constructor,importcpp: "osg::TexEnvCombine::TexEnvCombine(@)".}
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

{.pop.}  # header: "TexEnvCombine"
