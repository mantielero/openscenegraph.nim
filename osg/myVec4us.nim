type
  Vec4us* {.header: "Vec4us", importcpp: "osg::Vec4us", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4us - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec4us * float is okay