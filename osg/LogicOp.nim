import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  Opcode* {.size:sizeof(cuint),header: "LogicOp", importcpp: "osg::LogicOp::Opcode".} = enum
    CLEAR = 5376,
    SET = 5391,
    COPY = 5379,
    COPY_INVERTED = 5388,
    NOOP = 5381,
    INVERT = 5386,
    AND = 5377,
    NAND = 5390,
    OR = 5383,
    NOR = 5384,
    XOR = 5382,
    EQUIV = 5385,
    AND_REVERSE = 5378,
    AND_INVERTED = 5380,
    OR_REVERSE = 5387,
    OR_INVERTED = 5389

{.push header: "LogicOp".}


# Constructors and methods
proc constructLogicOp*(): LogicOp {.constructor,importcpp: "LogicOp".}

proc constructLogicOp*(opcode: Opcode): LogicOp {.constructor,importcpp: "LogicOp(@)".}

proc constructLogicOp*(trans: Logicop, copyop: Copyop = SHALLOW_COPY): LogicOp {.constructor,importcpp: "LogicOp(@)".}
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

{.pop.} # header: "LogicOp
