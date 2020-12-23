import stringfwd # Provides string
import iosfwd # Provides ostream


type
  # Typedefs
  AttributeMap* {.header: "Stats", importcpp: "osg::Stats::AttributeMap".} = cint
  AttributeMapList* {.header: "Stats", importcpp: "osg::Stats::AttributeMapList".} = cint
  CollectMap* {.header: "Stats", importcpp: "osg::Stats::CollectMap".} = cint
{.push header: "Stats".}


# Constructors and methods
proc constructStats*(name: String): Stats {.constructor,importcpp: "Stats(@)".}

proc constructStats*(name: String, numberOfFrames: cuint): Stats {.constructor,importcpp: "Stats(@)".}

proc setName*(this: var Stats, name: String)  {.importcpp: "setName".}

proc getName*(this: Stats): String  {.importcpp: "getName".}

proc allocate*(this: var Stats, numberOfFrames: cuint)  {.importcpp: "allocate".}

proc getEarliestFrameNumber*(this: Stats): cuint  {.importcpp: "getEarliestFrameNumber".}

proc getLatestFrameNumber*(this: Stats): cuint  {.importcpp: "getLatestFrameNumber".}

proc setAttribute*(this: var Stats, frameNumber: cuint, attributeName: String, value: cdouble): bool  {.importcpp: "setAttribute".}

proc getAttribute*(this: Stats, frameNumber: cuint, attributeName: String, value: cdouble): bool  {.importcpp: "getAttribute".}

proc getAveragedAttribute*(this: Stats, attributeName: String, value: cdouble, averageInInverseSpace: bool): bool  {.importcpp: "getAveragedAttribute".}

proc getAveragedAttribute*(this: Stats, startFrameNumber: cuint, endFrameNumber: cuint, attributeName: String, value: cdouble, averageInInverseSpace: bool): bool  {.importcpp: "getAveragedAttribute".}

proc getAttributeMap*(this: var Stats, frameNumber: cuint): Attributemap  {.importcpp: "getAttributeMap".}

proc getAttributeMap*(this: Stats, frameNumber: cuint): Attributemap  {.importcpp: "getAttributeMap".}

proc collectStats*(this: var Stats, str: String, flag: bool)  {.importcpp: "collectStats".}

proc collectStats*(this: Stats, str: String): bool  {.importcpp: "collectStats".}

proc report*(this: Stats, `out`: Ostream, indent: cstring = 0)  {.importcpp: "report".}

proc report*(this: Stats, `out`: Ostream, frameNumber: cuint, indent: cstring = 0)  {.importcpp: "report".}

proc getAttributeNoMutex*(this: Stats, frameNumber: cuint, attributeName: String, value: cdouble): bool  {.importcpp: "getAttributeNoMutex".}

proc getAttributeMapNoMutex*(this: var Stats, frameNumber: cuint): Attributemap  {.importcpp: "getAttributeMapNoMutex".}

proc getAttributeMapNoMutex*(this: Stats, frameNumber: cuint): Attributemap  {.importcpp: "getAttributeMapNoMutex".}

proc getIndex*(this: Stats, frameNumber: cuint): cint  {.importcpp: "getIndex".}

{.pop.} # header: "Stats
