import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: Object  was providing: osg::Object
  # File: Image  was providing: osg::Image
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: RenderInfo  was providing: osg::RenderInfo
type
  DrawPixels* {.header: "DrawPixels", importcpp: "osg::DrawPixels", byref.} = object #of class osg::Drawable
    ## DrawPixels is an osg::Drawable subclass which encapsulates the drawing
    ## of images using glDrawPixels.



{.push header: "DrawPixels".}

proc constructDrawPixels*(): DrawPixels {.constructor,importcpp: "osg::DrawPixels::DrawPixels".}

proc constructDrawPixels*(drawimage: DrawPixels, copyop: CopyOp = SHALLOW_COPY): DrawPixels {.constructor,importcpp: "osg::DrawPixels::DrawPixels(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: DrawPixels): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawPixels, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawPixels, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawPixels): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawPixels): cstring  {.importcpp: "className".}

proc setPosition*(this: var DrawPixels, position: Vec3)  {.importcpp: "setPosition".}

proc getPosition*(this: var DrawPixels): Vec3  {.importcpp: "getPosition".}

proc getPosition*(this: DrawPixels): Vec3  {.importcpp: "getPosition".}

proc setImage*(this: var DrawPixels, image: ptr Image )  {.importcpp: "setImage".}

proc getImage*(this: var DrawPixels): ptr Image   {.importcpp: "getImage".}

proc getImage*(this: DrawPixels): ptr Image   {.importcpp: "getImage".}

proc setUseSubImage*(this: var DrawPixels, useSubImage: bool)  {.importcpp: "setUseSubImage".}

proc getUseSubImage*(this: DrawPixels): bool  {.importcpp: "getUseSubImage".}

proc setSubImageDimensions*(this: var DrawPixels, offsetX: cuint, offsetY: cuint, width: cuint, height: cuint)  {.importcpp: "setSubImageDimensions".}

proc getSubImageDimensions*(this: DrawPixels, offsetX: cuint, offsetY: cuint, width: cuint, height: cuint)  {.importcpp: "getSubImageDimensions".}

proc drawImplementation*(this: DrawPixels, renderInfo: RenderInfo)  {.importcpp: "drawImplementation".}

proc computeBoundingBox*(this: DrawPixels): BoundingBox  {.importcpp: "computeBoundingBox".}

proc `=`*(this: var DrawPixels, a00: DrawPixels): DrawPixels  {.importcpp: "# = #".}

{.pop.}  # header: "DrawPixels"
