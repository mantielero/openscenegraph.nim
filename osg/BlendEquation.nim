import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  BlendEquation* {.header: "BlendEquation", importcpp: "osg::BlendEquation", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL BlendEquation state.



{.push header: "BlendEquation".}

proc constructBlendEquation*(): BlendEquation {.constructor,importcpp: "osg::BlendEquation::BlendEquation".}

proc constructBlendEquation*(equation: Equation): BlendEquation {.constructor,importcpp: "osg::BlendEquation::BlendEquation(@)".}

proc constructBlendEquation*(equationRGB: Equation, equationAlpha: Equation): BlendEquation {.constructor,importcpp: "osg::BlendEquation::BlendEquation(@)".}

proc constructBlendEquation*(trans: BlendEquation, copyop: CopyOp = SHALLOW_COPY): BlendEquation {.constructor,importcpp: "osg::BlendEquation::BlendEquation(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendEquation): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendEquation, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendEquation, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendEquation): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendEquation): cstring  {.importcpp: "className".}

proc getType*(this: BlendEquation): Type  {.importcpp: "getType".}

proc compare*(this: BlendEquation, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: BlendEquation, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setEquation*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquation".}

proc getEquation*(this: BlendEquation): Equation  {.importcpp: "getEquation".}

proc setEquationRGB*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquationRGB".}

proc getEquationRGB*(this: BlendEquation): Equation  {.importcpp: "getEquationRGB".}

proc setEquationAlpha*(this: var BlendEquation, equation: Equation)  {.importcpp: "setEquationAlpha".}

proc getEquationAlpha*(this: BlendEquation): Equation  {.importcpp: "getEquationAlpha".}

proc apply*(this: BlendEquation, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendEquation"
