import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "Multisample", importcpp: "osg::Multisample::Mode".} = enum
    mdDONT_CARE = 4352,
    mdFASTEST = 4353,
    mdNICEST = 4354

  Multisample* {.header: "Multisample", importcpp: "osg::Multisample", byref.} = object #of class osg::StateAttribute
    ## Multisample - encapsulates the OpenGL Multisample state.



{.push header: "Multisample".}

proc constructMultisample*(): Multisample {.constructor,importcpp: "osg::Multisample::Multisample".}

proc constructMultisample*(trans: Multisample, copyop: Copyop = SHALLOW_COPY): Multisample {.constructor,importcpp: "osg::Multisample::Multisample(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Multisample): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Multisample, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Multisample, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Multisample): cstring  {.importcpp: "libraryName".}

proc className*(this: Multisample): cstring  {.importcpp: "className".}

proc getType*(this: Multisample): Type  {.importcpp: "getType".}

proc compare*(this: Multisample, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setSampleCoverage*(this: var Multisample, coverage: cfloat, invert: bool)  {.importcpp: "setSampleCoverage".}

proc setCoverage*(this: var Multisample, coverage: cfloat)  {.importcpp: "setCoverage".}

proc getCoverage*(this: Multisample): cfloat  {.importcpp: "getCoverage".}

proc setInvert*(this: var Multisample, invert: bool)  {.importcpp: "setInvert".}

proc getInvert*(this: Multisample): bool  {.importcpp: "getInvert".}

proc setHint*(this: var Multisample, mode: Mode)  {.importcpp: "setHint".}

proc getHint*(this: Multisample): Mode  {.importcpp: "getHint".}

proc apply*(this: Multisample, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Multisample"
