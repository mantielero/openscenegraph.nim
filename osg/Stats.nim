type
  AttributeMap* {.header: "Stats", importcpp: "osg::Stats::AttributeMap".} = cint
  AttributeMapList* {.header: "Stats", importcpp: "osg::Stats::AttributeMapList".} = cint
  CollectMap* {.header: "Stats", importcpp: "osg::Stats::CollectMap".} = cint


{.push header: "Stats".}

proc constructStats*(name: string): Stats {.constructor,importcpp: "osg::Stats::Stats(@)".}

proc constructStats*(name: string, numberOfFrames: cuint): Stats {.constructor,importcpp: "osg::Stats::Stats(@)".}

proc setName*(this: var Stats, name: string)  {.importcpp: "setName".}

proc getName*(this: Stats): string  {.importcpp: "getName".}

proc allocate*(this: var Stats, numberOfFrames: cuint)  {.importcpp: "allocate".}

proc getEarliestFrameNumber*(this: Stats): cuint  {.importcpp: "getEarliestFrameNumber".}

proc getLatestFrameNumber*(this: Stats): cuint  {.importcpp: "getLatestFrameNumber".}

proc setAttribute*(this: var Stats, frameNumber: cuint, attributeName: string, value: cdouble): bool  {.importcpp: "setAttribute".}

proc getAttribute*(this: Stats, frameNumber: cuint, attributeName: string, value: cdouble): bool  {.importcpp: "getAttribute".}

proc getAveragedAttribute*(this: Stats, attributeName: string, value: cdouble, averageInInverseSpace: bool): bool  {.importcpp: "getAveragedAttribute".}

proc getAveragedAttribute*(this: Stats, startFrameNumber: cuint, endFrameNumber: cuint, attributeName: string, value: cdouble, averageInInverseSpace: bool): bool  {.importcpp: "getAveragedAttribute".}

proc getAttributeMap*(this: var Stats, frameNumber: cuint): AttributeMap  {.importcpp: "getAttributeMap".}

proc getAttributeMap*(this: Stats, frameNumber: cuint): AttributeMap  {.importcpp: "getAttributeMap".}

proc collectStats*(this: var Stats, str: string, flag: bool)  {.importcpp: "collectStats".}

proc collectStats*(this: Stats, str: string): bool  {.importcpp: "collectStats".}

proc report*(this: Stats, `out`: ostream, indent: cstring = 0)  {.importcpp: "report".}

proc report*(this: Stats, `out`: ostream, frameNumber: cuint, indent: cstring = 0)  {.importcpp: "report".}

proc getAttributeNoMutex*(this: Stats, frameNumber: cuint, attributeName: string, value: cdouble): bool  {.importcpp: "getAttributeNoMutex".}

proc getAttributeMapNoMutex*(this: var Stats, frameNumber: cuint): AttributeMap  {.importcpp: "getAttributeMapNoMutex".}

proc getAttributeMapNoMutex*(this: Stats, frameNumber: cuint): AttributeMap  {.importcpp: "getAttributeMapNoMutex".}

proc getIndex*(this: Stats, frameNumber: cuint): cint  {.importcpp: "getIndex".}

{.pop.}  # header: "Stats"
