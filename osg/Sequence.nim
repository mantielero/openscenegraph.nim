import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Node  # provides: osg::Node
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
type
  LoopMode* {.size:sizeof(cuint),header: "Sequence", importcpp: "osg::Sequence::LoopMode".} = enum
    ## Interval modes. 'Loop' repeats frames 1-N; 'swing' repeats 1->N,
    ## (N-1)->1.

    LOOP = 0,
    SWING = 1

  SequenceMode* {.size:sizeof(cuint),header: "Sequence", importcpp: "osg::Sequence::SequenceMode".} = enum
    ## Sequence modes.

    START = 0,
    STOP = 1,
    PAUSE = 2,
    RESUME = 3



{.push header: "Sequence".}

proc constructSequence*(): Sequence {.constructor,importcpp: "osg::Sequence::Sequence".}

proc constructSequence*(Sequence, copyop: Copyop = SHALLOW_COPY): Sequence {.constructor,importcpp: "osg::Sequence::Sequence(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Sequence): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Sequence, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Sequence, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Sequence): cstring  {.importcpp: "className".}

proc libraryName*(this: Sequence): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Sequence, nv: Nodevisitor)  {.importcpp: "accept".}

proc traverse*(this: var Sequence, nv: Nodevisitor)  {.importcpp: "traverse".}

proc addChild*(this: var Sequence, child: ptr Node ): bool  {.importcpp: "addChild".}

proc addChild*(this: var Sequence, child: ptr Node , t: cdouble): bool  {.importcpp: "addChild".}

proc insertChild*(this: var Sequence, index: cuint, child: ptr Node ): bool  {.importcpp: "insertChild".}

proc insertChild*(this: var Sequence, index: cuint, child: ptr Node , t: cdouble): bool  {.importcpp: "insertChild".}

proc removeChild*(this: var Sequence, child: ptr Node ): bool  {.importcpp: "removeChild".}

proc removeChildren*(this: var Sequence, pos: cuint, numChildrenToRemove: cuint): bool  {.importcpp: "removeChildren".}

proc setValue*(this: var Sequence, value: cint)  {.importcpp: "setValue".}
    ## value is which child node is to be displayed

proc getValue*(this: Sequence): cint  {.importcpp: "getValue".}

proc setTime*(this: var Sequence, frame: cuint, t: cdouble)  {.importcpp: "setTime".}
    ## Set time in seconds for child.

proc getTime*(this: Sequence, frame: cuint): cdouble  {.importcpp: "getTime".}
    ## Get time for child.

proc setTimeList*(this: var Sequence, timeList: cint)  {.importcpp: "setTimeList".}
    ## Set the time list for children.

proc getTimeList*(this: Sequence): cint  {.importcpp: "getTimeList".}
    ## Get the time list for children.

proc setDefaultTime*(this: var Sequence, t: cdouble)  {.importcpp: "setDefaultTime".}
    ## Set default time in seconds for new child. if t<0, t=0

proc getDefaultTime*(this: Sequence): cdouble  {.importcpp: "getDefaultTime".}
    ## Get default time in seconds for new child.

proc setLastFrameTime*(this: var Sequence, t: cdouble)  {.importcpp: "setLastFrameTime".}
    ## Set time of last frame of last loop, in seconds. if t<= 0, then
    ## ignored

proc getLastFrameTime*(this: Sequence): cdouble  {.importcpp: "getLastFrameTime".}
    ## Get last frame time in seconds

proc getNumFrames*(this: Sequence): cuint  {.importcpp: "getNumFrames".}
    ## Get number of frames

proc setLoopMode*(this: var Sequence, mode: Loopmode)  {.importcpp: "setLoopMode".}
    ## Set sequence mode.

proc getLoopMode*(this: Sequence): Loopmode  {.importcpp: "getLoopMode".}
    ## Get sequence mode.

proc setBegin*(this: var Sequence, begin: cint)  {.importcpp: "setBegin".}
    ## Set interval beginning.

proc getBegin*(this: Sequence): cint  {.importcpp: "getBegin".}
    ## Get interval beginning.

proc setEnd*(this: var Sequence, `end`: cint)  {.importcpp: "setEnd".}
    ## Set interval ending.

proc getEnd*(this: Sequence): cint  {.importcpp: "getEnd".}
    ## Get interval ending.

proc setInterval*(this: var Sequence, mode: Loopmode, begin: cint, `end`: cint)  {.importcpp: "setInterval".}
    ## Set sequence mode & interval (range of children to be displayed).

proc getInterval*(this: Sequence, mode: Loopmode, begin: cint, `end`: cint)  {.importcpp: "getInterval".}
    ## Get sequence mode & interval.

proc setSpeed*(this: var Sequence, speed: cfloat)  {.importcpp: "setSpeed".}
    ## Set speed.

proc getSpeed*(this: Sequence): cfloat  {.importcpp: "getSpeed".}
    ## Get speed.

proc setNumRepeats*(this: var Sequence, nreps: cint)  {.importcpp: "setNumRepeats".}
    ## Set number of repeats.

proc getNumRepeats*(this: Sequence): cint  {.importcpp: "getNumRepeats".}
    ## Get number of repeats.

proc setDuration*(this: var Sequence, speed: cfloat, nreps: cint = 1)  {.importcpp: "setDuration".}
    ## Set duration: speed-up & number of repeats

proc getDuration*(this: Sequence, speed: cfloat, nreps: cint)  {.importcpp: "getDuration".}
    ## Get duration & number of repeats.

proc setMode*(this: var Sequence, mode: Sequencemode)  {.importcpp: "setMode".}
    ## Set sequence mode. Start/stop & pause/resume.

proc getMode*(this: Sequence): Sequencemode  {.importcpp: "getMode".}
    ## Get sequence mode.

proc setSync*(this: var Sequence, sync: bool)  {.importcpp: "setSync".}
    ## If false (default), frames will not be sync'd to frameTime. If true,
    ## frames will be sync'd to frameTime.

proc getSync*(this: Sequence): bool  {.importcpp: "getSync".}
    ## Get sync value

proc setClearOnStop*(this: var Sequence, clearOnStop: bool)  {.importcpp: "setClearOnStop".}
    ## If true, show no child nodes after stopping

proc getClearOnStop*(this: Sequence): bool  {.importcpp: "getClearOnStop".}
    ## Get whether to show no child nodes after stopping

proc prefixgetNextValue*(this: var Sequence): cint  {.importcpp: "_getNextValue".}

proc prefixupdate*(this: var Sequence)  {.importcpp: "_update".}

{.pop.}  # header: "Sequence"
