import Vec3 # Provides Vec3
import BoundingBox # Provides BoundingBox
import CopyOp # Provides CopyOp
import Object # Provides Object
import Image # Provides Image
import RenderInfo # Provides RenderInfo


{.push header: "DrawPixels".}


# Constructors and methods
proc constructDrawPixels*(): DrawPixels {.constructor,importcpp: "DrawPixels".}

proc constructDrawPixels*(drawimage: Drawpixels, copyop: Copyop = SHALLOW_COPY): DrawPixels {.constructor,importcpp: "DrawPixels(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: DrawPixels): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawPixels, copyop: Copyop): ptr Object   {.importcpp: "clone".}

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

proc drawImplementation*(this: DrawPixels, renderInfo: Renderinfo)  {.importcpp: "drawImplementation".}

proc computeBoundingBox*(this: DrawPixels): Boundingbox  {.importcpp: "computeBoundingBox".}

proc `=`*(this: var DrawPixels, Drawpixels): Drawpixels  {.importcpp: "# = #".}

{.pop.} # header: "DrawPixels
