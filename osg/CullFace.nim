import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "CullFace", importcpp: "osg::CullFace::Mode".} = enum
    mdFRONT = 1028,
    mdBACK = 1029,
    mdFRONT_AND_BACK = 1032

  CullFace* {.header: "CullFace", importcpp: "osg::CullFace", byref.} = object #of class osg::StateAttribute
    ## Class to globally enable/disable OpenGL's polygon culling mode.



{.push header: "CullFace".}

proc constructCullFace*(mode: Mode): CullFace {.constructor,importcpp: "osg::CullFace::CullFace(@)".}

proc constructCullFace*(cf: Cullface, copyop: Copyop = SHALLOW_COPY): CullFace {.constructor,importcpp: "osg::CullFace::CullFace(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: CullFace): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CullFace, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CullFace, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CullFace): cstring  {.importcpp: "libraryName".}

proc className*(this: CullFace): cstring  {.importcpp: "className".}

proc getType*(this: CullFace): Type  {.importcpp: "getType".}

proc compare*(this: CullFace, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: CullFace, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setMode*(this: var CullFace, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: CullFace): Mode  {.importcpp: "getMode".}

proc apply*(this: CullFace, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "CullFace"
