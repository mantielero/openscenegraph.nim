type
  Endian* {.size:sizeof(cuint),header: "Endian", importcpp: "osg::Endian", pure.} = enum
    BigEndian = 0,
    LittleEndian = 1



