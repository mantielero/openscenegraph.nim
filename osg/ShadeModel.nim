import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "ShadeModel", importcpp: "osg::ShadeModel::Mode".} = enum
    FLAT = 7424,
    SMOOTH = 7425

  ShadeModel* {.header: "ShadeModel", importcpp: "osg::ShadeModel", byref.} = object #of class osg::StateAttribute
    ## Class which encapsulates glShadeModel(..).



{.push header: "ShadeModel".}

proc constructShadeModel*(mode: Mode): ShadeModel {.constructor,importcpp: "osg::ShadeModel::ShadeModel(@)".}

proc constructShadeModel*(sm: Shademodel, copyop: Copyop = SHALLOW_COPY): ShadeModel {.constructor,importcpp: "osg::ShadeModel::ShadeModel(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ShadeModel): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShadeModel, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShadeModel, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShadeModel): cstring  {.importcpp: "libraryName".}

proc className*(this: ShadeModel): cstring  {.importcpp: "className".}

proc getType*(this: ShadeModel): Type  {.importcpp: "getType".}

proc compare*(this: ShadeModel, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var ShadeModel, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: ShadeModel): Mode  {.importcpp: "getMode".}

proc apply*(this: ShadeModel, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "ShadeModel"
