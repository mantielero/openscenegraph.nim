

type
  Endian* {.size:sizeof(cuint),header: "Endian", importcpp: "osg::Endian".} = enum
    BigEndian = 0,
    LittleEndian = 1

{.push header: "Endian".}


# Constructors and methods
proc swapBytes*[T](this: var osg, t: var T)  {.importcpp: "swapBytes".}

{.pop.} # header: "Endian
