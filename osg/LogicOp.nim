import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Opcode* {.size:sizeof(cuint),header: "LogicOp", importcpp: "osg::LogicOp::Opcode", pure.} = enum
    CLEAR = 5376,
    AND = 5377,
    AND_REVERSE = 5378,
    COPY = 5379,
    AND_INVERTED = 5380,
    NOOP = 5381,
    XOR = 5382,
    OR = 5383,
    NOR = 5384,
    EQUIV = 5385,
    INVERT = 5386,
    OR_REVERSE = 5387,
    COPY_INVERTED = 5388,
    OR_INVERTED = 5389,
    NAND = 5390,
    SET = 5391

  LogicOp* {.header: "LogicOp", importcpp: "osg::LogicOp", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL LogicOp state.



{.push header: "LogicOp".}

proc constructLogicOp*(): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp".}

proc constructLogicOp*(opcode: Opcode): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp(@)".}

proc constructLogicOp*(trans: LogicOp, copyop: CopyOp = SHALLOW_COPY): LogicOp {.constructor,importcpp: "osg::LogicOp::LogicOp(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LogicOp): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LogicOp, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LogicOp, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LogicOp): cstring  {.importcpp: "libraryName".}

proc className*(this: LogicOp): cstring  {.importcpp: "className".}

proc getType*(this: LogicOp): Type  {.importcpp: "getType".}

proc compare*(this: LogicOp, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: LogicOp, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setOpcode*(this: var LogicOp, opcode: Opcode)  {.importcpp: "setOpcode".}

proc getOpcode*(this: LogicOp): Opcode  {.importcpp: "getOpcode".}

proc apply*(this: LogicOp, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LogicOp"
