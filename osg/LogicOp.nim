import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Opcode* {.size:sizeof(cuint),header: "LogicOp", importcpp: "osg::LogicOp::Opcode".} = enum
    pcdCLEAR = 5376,
    pcdAND = 5377,
    pcdAND_REVERSE = 5378,
    pcdCOPY = 5379,
    pcdAND_INVERTED = 5380,
    pcdNOOP = 5381,
    pcdXOR = 5382,
    pcdOR = 5383,
    pcdNOR = 5384,
    pcdEQUIV = 5385,
    pcdINVERT = 5386,
    pcdOR_REVERSE = 5387,
    pcdCOPY_INVERTED = 5388,
    pcdOR_INVERTED = 5389,
    pcdNAND = 5390,
    pcdSET = 5391

  LogicOp* {.header: "LogicOp", importcpp: "osg::LogicOp", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL LogicOp state.



{.push header: "LogicOp".}

proc constructLogicOp*(): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp".}

proc constructLogicOp*(opcode: Opcode): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp(@)".}

proc constructLogicOp*(trans: Logicop, copyop: Copyop = SHALLOW_COPY): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LogicOp): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LogicOp, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LogicOp, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LogicOp): cstring  {.importcpp: "libraryName".}

proc className*(this: LogicOp): cstring  {.importcpp: "className".}

proc getType*(this: LogicOp): Type  {.importcpp: "getType".}

proc compare*(this: LogicOp, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: LogicOp, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setOpcode*(this: var LogicOp, opcode: Opcode)  {.importcpp: "setOpcode".}

proc getOpcode*(this: LogicOp): Opcode  {.importcpp: "getOpcode".}

proc apply*(this: LogicOp, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LogicOp"
