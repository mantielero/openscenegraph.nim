import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  Scissor* {.header: "Scissor", importcpp: "osg::Scissor", byref.} = object #of class osg::StateAttribute
    ## Encapsulate OpenGL glScissor.



{.push header: "Scissor".}

proc constructScissor*(): Scissor {.constructor,importcpp: "osg::Scissor::Scissor".}

proc constructScissor*(x: cint, y: cint, width: cint, height: cint): Scissor {.constructor,importcpp: "osg::Scissor::Scissor(@)".}

proc constructScissor*(vp: Scissor, copyop: Copyop = SHALLOW_COPY): Scissor {.constructor,importcpp: "osg::Scissor::Scissor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Scissor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Scissor, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Scissor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Scissor): cstring  {.importcpp: "libraryName".}

proc className*(this: Scissor): cstring  {.importcpp: "className".}

proc getType*(this: Scissor): Type  {.importcpp: "getType".}

proc compare*(this: Scissor, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Scissor, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setScissor*(this: var Scissor, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "setScissor".}

proc getScissor*(this: Scissor, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "getScissor".}

proc x*(this: var Scissor): cint  {.importcpp: "x".}

proc x*(this: Scissor): cint  {.importcpp: "x".}

proc y*(this: var Scissor): cint  {.importcpp: "y".}

proc y*(this: Scissor): cint  {.importcpp: "y".}

proc width*(this: var Scissor): cint  {.importcpp: "width".}

proc width*(this: Scissor): cint  {.importcpp: "width".}

proc height*(this: var Scissor): cint  {.importcpp: "height".}

proc height*(this: Scissor): cint  {.importcpp: "height".}

proc apply*(this: Scissor, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Scissor"
