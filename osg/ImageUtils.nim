type
  ColorSpaceOperation* {.size:sizeof(cuint),header: "ImageUtils", importcpp: "osg::ColorSpaceOperation", pure.} = enum
    NO_COLOR_SPACE_OPERATION = 0,
    MODULATE_ALPHA_BY_LUMINANCE = 1,
    MODULATE_ALPHA_BY_COLOR = 2,
    REPLACE_ALPHA_WITH_LUMINANCE = 3,
    REPLACE_RGB_WITH_LUMINANCE = 4

  ImageList* {.header: "ImageUtils", importcpp: "osg::ImageList".} = cint


{.push header: "ImageUtils".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cchar): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cuchar): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cshort): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cushort): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cint): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cuint): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cfloat): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cdouble): cfloat  {.importcpp: "cast".}

{.pop.}  # header: "ImageUtils"
