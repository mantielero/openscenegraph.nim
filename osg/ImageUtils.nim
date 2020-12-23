import gl # Provides GLenum
import Image # Provides Image


type
  ColorSpaceOperation* {.size:sizeof(cuint),header: "ImageUtils", importcpp: "osg::ColorSpaceOperation".} = enum
    NO_COLOR_SPACE_OPERATION = 0,
    MODULATE_ALPHA_BY_LUMINANCE = 1,
    MODULATE_ALPHA_BY_COLOR = 2,
    REPLACE_ALPHA_WITH_LUMINANCE = 3,
    REPLACE_RGB_WITH_LUMINANCE = 4

  ImageList* {.header: "ImageUtils", importcpp: "osg::ImageList".} = cint
{.push header: "ImageUtils".}


# Constructors and methods
proc prefixreadRow*[T;O](this: var osg, num: cuint, pixelFormat: GLenum, data: ptr T, operation: var O)  {.importcpp: "_readRow".}

proc readRow*[O](this: var osg, num: cuint, pixelFormat: GLenum, dataType: GLenum, data: ptr unsigned char, operation: var O)  {.importcpp: "readRow".}

proc readImage*[O](this: var osg, image: ptr Image , operation: var O)  {.importcpp: "readImage".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cchar): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cuchar): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cshort): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cushort): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cint): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cuint): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cfloat): cfloat  {.importcpp: "cast".}

proc `cast`*(this: var CastAndScaleToFloatOperation, v: cdouble): cfloat  {.importcpp: "cast".}

proc prefixmodifyRow*[T;M](this: var osg, num: cuint, pixelFormat: GLenum, data: ptr T, scale: cfloat, operation: M)  {.importcpp: "_modifyRow".}

proc modifyRow*[M](this: var osg, num: cuint, pixelFormat: GLenum, dataType: GLenum, data: ptr unsigned char, operation: M)  {.importcpp: "modifyRow".}

proc modifyImage*[M](this: var osg, image: ptr Image , operation: M)  {.importcpp: "modifyImage".}

{.pop.} # header: "ImageUtils
