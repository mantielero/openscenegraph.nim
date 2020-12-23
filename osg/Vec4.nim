import Vec4f # Provides Vec4f


type
  Vec4* {.header: "Vec4", importcpp: "osg::Vec4".} = Vec4f
