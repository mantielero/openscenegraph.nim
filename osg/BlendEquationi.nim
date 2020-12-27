import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  BlendEquationi* {.header: "BlendEquationi", importcpp: "osg::BlendEquationi", byref.} = object #of class osg::BlendEquation
    ## Encapsulates glBlendEquationi function : the index version of
    ## glBlendEquation for multiple render target.



{.push header: "BlendEquationi".}

proc constructBlendEquationi*(): BlendEquationi {.constructor,importcpp: "osg::BlendEquationi::BlendEquationi".}

proc constructBlendEquationi*(buf: cuint, equation: Equation): BlendEquationi {.constructor,importcpp: "osg::BlendEquationi::BlendEquationi(@)".}

proc constructBlendEquationi*(buf: cuint, equationRGB: Equation, equationAlpha: Equation): BlendEquationi {.constructor,importcpp: "osg::BlendEquationi::BlendEquationi(@)".}

proc constructBlendEquationi*(cm: Blendequationi, copyop: Copyop = SHALLOW_COPY): BlendEquationi {.constructor,importcpp: "osg::BlendEquationi::BlendEquationi(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendEquationi): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendEquationi, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendEquationi, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendEquationi): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendEquationi): cstring  {.importcpp: "className".}

proc getType*(this: BlendEquationi): Type  {.importcpp: "getType".}

proc compare*(this: BlendEquationi, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: BlendEquationi): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var BlendEquationi, buf: cuint)  {.importcpp: "setIndex".}
    ## Set the renderbuffer index of the BlendEquationi.

proc getIndex*(this: BlendEquationi): cuint  {.importcpp: "getIndex".}
    ## Get the renderbuffer index of the BlendEquationi.

proc apply*(this: BlendEquationi, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendEquationi"
