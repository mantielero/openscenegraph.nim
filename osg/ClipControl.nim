import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Origin* {.size:sizeof(cuint),header: "ClipControl", importcpp: "osg::ClipControl::Origin".} = enum
    LOWER_LEFT = 36001,
    UPPER_LEFT = 36002

  DepthMode* {.size:sizeof(cuint),header: "ClipControl", importcpp: "osg::ClipControl::DepthMode".} = enum
    NEGATIVE_ONE_TO_ONE = 37726,
    ZERO_TO_ONE = 37727

  ClipControl* {.header: "ClipControl", importcpp: "osg::ClipControl", byref.} = object #of class osg::StateAttribute
    ## Encapsulate OpenGL glClipControl functions.



{.push header: "ClipControl".}

proc constructClipControl*(origin: Origin, depthMode: Depthmode): ClipControl {.constructor,importcpp: "osg::ClipControl::ClipControl(@)".}

proc constructClipControl*(clipControl: Clipcontrol, copyop: Copyop = SHALLOW_COPY): ClipControl {.constructor,importcpp: "osg::ClipControl::ClipControl(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ClipControl): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClipControl, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClipControl, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ClipControl): cstring  {.importcpp: "libraryName".}

proc className*(this: ClipControl): cstring  {.importcpp: "className".}

proc getType*(this: ClipControl): Type  {.importcpp: "getType".}

proc compare*(this: ClipControl, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setOrigin*(this: var ClipControl, origin: Origin)  {.importcpp: "setOrigin".}

proc getOrigin*(this: ClipControl): Origin  {.importcpp: "getOrigin".}

proc setDepthMode*(this: var ClipControl, depthMode: Depthmode)  {.importcpp: "setDepthMode".}

proc getDepthMode*(this: ClipControl): Depthmode  {.importcpp: "getDepthMode".}

proc apply*(this: ClipControl, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "ClipControl"
