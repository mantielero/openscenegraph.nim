import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  Equation* {.size:sizeof(cuint),header: "BlendEquation", importcpp: "osg::BlendEquation::Equation".} = enum
    RGBA_MIN = 32775,
    RGBA_MAX = 32776,
    ALPHA_MIN = 33568,
    ALPHA_MAX = 33569,
    LOGIC_OP = 3057,
    FUNC_ADD = 32774,
    FUNC_SUBTRACT = 32778,
    FUNC_REVERSE_SUBTRACT = 32779

{.push header: "BlendEquation".}


# Constructors and methods
proc constructBlendEquation*(): BlendEquation {.constructor,importcpp: "BlendEquation".}

proc constructBlendEquation*(equation: Equation): BlendEquation {.constructor,importcpp: "BlendEquation(@)".}

proc constructBlendEquation*(equationRGB: Equation, equationAlpha: Equation): BlendEquation {.constructor,importcpp: "BlendEquation(@)".}

proc constructBlendEquation*(trans: Blendequation, copyop: Copyop = SHALLOW_COPY): BlendEquation {.constructor,importcpp: "BlendEquation(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendEquation): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendEquation, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendEquation, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendEquation): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendEquation): cstring  {.importcpp: "className".}

proc getType*(this: BlendEquation): Type  {.importcpp: "getType".}

proc compare*(this: BlendEquation, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendEquation, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setEquation*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquation".}

proc getEquation*(this: BlendEquation): Equation  {.importcpp: "getEquation".}

proc setEquationRGB*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquationRGB".}

proc getEquationRGB*(this: BlendEquation): Equation  {.importcpp: "getEquationRGB".}

proc setEquationAlpha*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquationAlpha".}

proc getEquationAlpha*(this: BlendEquation): Equation  {.importcpp: "getEquationAlpha".}

proc apply*(this: BlendEquation, state: State)  {.importcpp: "apply".}

{.pop.} # header: "BlendEquation
