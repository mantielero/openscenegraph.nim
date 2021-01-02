{.push header: "FrameStamp".}

proc constructFrameStamp*(): FrameStamp {.constructor,importcpp: "osg::FrameStamp::FrameStamp".}

proc constructFrameStamp*(fs: FrameStamp): FrameStamp {.constructor,importcpp: "osg::FrameStamp::FrameStamp(@)".}

proc `=`*(this: var FrameStamp, fs: FrameStamp): FrameStamp  {.importcpp: "# = #".}

proc setFrameNumber*(this: var FrameStamp, fnum: cuint)  {.importcpp: "setFrameNumber".}

proc getFrameNumber*(this: FrameStamp): cuint  {.importcpp: "getFrameNumber".}

proc setReferenceTime*(this: var FrameStamp, refTime: cdouble)  {.importcpp: "setReferenceTime".}

proc getReferenceTime*(this: FrameStamp): cdouble  {.importcpp: "getReferenceTime".}

proc setSimulationTime*(this: var FrameStamp, refTime: cdouble)  {.importcpp: "setSimulationTime".}

proc getSimulationTime*(this: FrameStamp): cdouble  {.importcpp: "getSimulationTime".}

proc setCalendarTime*(this: var FrameStamp, calendarTime: tm)  {.importcpp: "setCalendarTime".}

proc getCalendarTime*(this: FrameStamp, calendarTime: var tm)  {.importcpp: "getCalendarTime".}

{.pop.}  # header: "FrameStamp"
