type
  Timer* {.header: "Timer", importcpp: "osg::Timer", byref.} = object
    ## Timer class is used for measuring elapsed time or time between two
    ## points.

  ElapsedTime* {.header: "Timer", importcpp: "osg::ElapsedTime", byref.} = object
    ## Helper class for timing sections of code.



{.push header: "Timer".}

proc constructTimer*(): Timer {.constructor,importcpp: "osg::Timer::Timer".}

proc constructElapsedTime*(elapsedTime: ptr double, timer: ptr Timer  = 0): ElapsedTime {.constructor,importcpp: "osg::ElapsedTime::ElapsedTime(@)".}

proc constructElapsedTime*(timer: ptr Timer  = 0): ElapsedTime {.constructor,importcpp: "osg::ElapsedTime::ElapsedTime(@)".}

proc instance*(this: var Timer): ptr Timer   {.importcpp: "instance".}

proc tick*(this: Timer): Timer_t  {.importcpp: "tick".}
    ## Get the timers tick value.

proc setStartTick*(this: var Timer)  {.importcpp: "setStartTick".}
    ## Set the start.

proc setStartTick*(this: var Timer, t: Timer_t)  {.importcpp: "setStartTick".}

proc getStartTick*(this: Timer): Timer_t  {.importcpp: "getStartTick".}

proc time_s*(this: Timer): cdouble  {.importcpp: "time_s".}
    ## Get elapsed time in seconds.

proc time_m*(this: Timer): cdouble  {.importcpp: "time_m".}
    ## Get elapsed time in milliseconds.

proc time_u*(this: Timer): cdouble  {.importcpp: "time_u".}
    ## Get elapsed time in microseconds.

proc time_n*(this: Timer): cdouble  {.importcpp: "time_n".}
    ## Get elapsed time in nanoseconds.

proc delta_s*(this: Timer, t1: Timer_t, t2: Timer_t): cdouble  {.importcpp: "delta_s".}
    ## Get the time in seconds between timer ticks t1 and t2.

proc delta_m*(this: Timer, t1: Timer_t, t2: Timer_t): cdouble  {.importcpp: "delta_m".}
    ## Get the time in milliseconds between timer ticks t1 and t2.

proc delta_u*(this: Timer, t1: Timer_t, t2: Timer_t): cdouble  {.importcpp: "delta_u".}
    ## Get the time in microseconds between timer ticks t1 and t2.

proc delta_n*(this: Timer, t1: Timer_t, t2: Timer_t): cdouble  {.importcpp: "delta_n".}
    ## Get the time in nanoseconds between timer ticks t1 and t2.

proc getSecondsPerTick*(this: Timer): cdouble  {.importcpp: "getSecondsPerTick".}
    ## Get the number of seconds per tick.

proc reset*(this: var ElapsedTime)  {.importcpp: "reset".}

proc elapsedTime*(this: ElapsedTime): cdouble  {.importcpp: "elapsedTime".}
    ## elapsed time in seconds.

proc elapsedTime_m*(this: ElapsedTime): cdouble  {.importcpp: "elapsedTime_m".}
    ## elapsed time in milliseconds.

proc elapsedTime_u*(this: ElapsedTime): cdouble  {.importcpp: "elapsedTime_u".}
    ## elapsed time in microseconds.

proc elapsedTime_n*(this: ElapsedTime): cdouble  {.importcpp: "elapsedTime_n".}
    ## elapsed time in nanoseconds.

proc finish*(this: var ElapsedTime)  {.importcpp: "finish".}

proc init*(this: var ElapsedTime, timer: ptr Timer )  {.importcpp: "init".}

{.pop.}  # header: "Timer"
