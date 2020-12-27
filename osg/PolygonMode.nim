import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "PolygonMode", importcpp: "osg::PolygonMode::Mode".} = enum
    mdPOINT = 6912,
    mdLINE = 6913,
    mdFILL = 6914

  Face* {.size:sizeof(cuint),header: "PolygonMode", importcpp: "osg::PolygonMode::Face".} = enum
    fcFRONT_AND_BACK = 0,
    fcFRONT = 1,
    fcBACK = 2

  PolygonMode* {.header: "PolygonMode", importcpp: "osg::PolygonMode", byref.} = object #of class osg::StateAttribute
    ## State Class for setting OpenGL's polygon culling mode.



{.push header: "PolygonMode".}

proc constructPolygonMode*(): PolygonMode {.constructor,importcpp: "osg::PolygonMode::PolygonMode".}

proc constructPolygonMode*(face: Face, mode: Mode): PolygonMode {.constructor,importcpp: "osg::PolygonMode::PolygonMode(@)".}

proc constructPolygonMode*(pm: Polygonmode, copyop: Copyop = SHALLOW_COPY): PolygonMode {.constructor,importcpp: "osg::PolygonMode::PolygonMode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: PolygonMode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PolygonMode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PolygonMode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PolygonMode): cstring  {.importcpp: "libraryName".}

proc className*(this: PolygonMode): cstring  {.importcpp: "className".}

proc getType*(this: PolygonMode): Type  {.importcpp: "getType".}

proc compare*(this: PolygonMode, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var PolygonMode, face: Face, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: PolygonMode, face: Face): Mode  {.importcpp: "getMode".}

proc getFrontAndBack*(this: PolygonMode): bool  {.importcpp: "getFrontAndBack".}

proc apply*(this: PolygonMode, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "PolygonMode"
