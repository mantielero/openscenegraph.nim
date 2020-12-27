import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import Image  # provides: osg::Image
import CopyOp  # provides: osg::CopyOp
type
  Texture2DArray* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray", byref.} = object #of class osg::Texture
    ## Texture2DArray state class which encapsulates OpenGL 2D array texture
    ## functionality. Texture arrays were introduced with Shader Model 4.0
    ## hardware.

  SubloadCallback* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray::SubloadCallback", byref.} = object #of class osg::Referenced

  Images* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray::Images".} = cint
  ImageModifiedCount* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray::ImageModifiedCount".} = buffered_value[unsigned int]


{.push header: "Texture2DArray".}

proc constructTexture2DArray*(): Texture2DArray {.constructor,importcpp: "osg::Texture2DArray::Texture2DArray".}

proc constructTexture2DArray*(cm: Texture2darray, copyop: Copyop = SHALLOW_COPY): Texture2DArray {.constructor,importcpp: "osg::Texture2DArray::Texture2DArray(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Texture2DArray): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture2DArray, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture2DArray, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture2DArray): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture2DArray): cstring  {.importcpp: "className".}

proc getType*(this: Texture2DArray): Type  {.importcpp: "getType".}

proc compare*(this: Texture2DArray, rhs: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: Texture2DArray): GLenum  {.importcpp: "getTextureTarget".}

proc getModeUsage*(this: Texture2DArray, Modeusage): bool  {.importcpp: "getModeUsage".}
    ## Texture2DArray is related to non fixed pipeline usage only so isn't
    ## appropriate to enable/disable.

proc setImage*(this: var Texture2DArray, layer: cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Set the texture image for specified layer.

proc getImage*(this: var Texture2DArray, layer: cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the texture image for specified layer.

proc getImage*(this: Texture2DArray, layer: cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the const texture image for specified layer.

proc getNumImages*(this: Texture2DArray): cuint  {.importcpp: "getNumImages".}
    ## Get the number of images that are assigned to the Texture. The number
    ## is equal to the texture depth. To get the maximum possible image/layer
    ## count, you have to use the extension subclass, since it provides
    ## graphic context dependent information.

proc isDirty*(this: Texture2DArray, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: Texture2DArray, layer: cuint, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}
    ## Check how often was a certain layer in the given context modified

proc setTextureSize*(this: var Texture2DArray, width: cint, height: cint, depth: cint)  {.importcpp: "setTextureSize".}
    ## Set the texture width and height. If width or height are zero then the
    ## respective size value is calculated from the source image sizes. Depth
    ## parameter specifies the number of layers to be used.

proc setTextureWidth*(this: var Texture2DArray, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var Texture2DArray, height: cint)  {.importcpp: "setTextureHeight".}

proc setTextureDepth*(this: var Texture2DArray, depth: cint)  {.importcpp: "setTextureDepth".}

proc getTextureWidth*(this: Texture2DArray): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: Texture2DArray): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture2DArray): cint  {.importcpp: "getTextureDepth".}

proc load*(this: SubloadCallback, texture: Texture2darray, state: State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, texture: Texture2darray, state: State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var Texture2DArray, cb: ptr Subloadcallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var Texture2DArray): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: Texture2DArray): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc setNumMipmapLevels*(this: Texture2DArray, num: cuint)  {.importcpp: "setNumMipmapLevels".}
    ## Set the number of mip map levels the texture has been created with.
    ## Should only be called within an osg::Texture::apply() and custom
    ## OpenGL texture load.

proc getNumMipmapLevels*(this: Texture2DArray): cuint  {.importcpp: "getNumMipmapLevels".}
    ## Get the number of mip map levels the texture has been created with.

proc copyTexSubImage2DArray*(this: var Texture2DArray, state: State, xoffset: cint, yoffset: cint, zoffset: cint, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexSubImage2DArray".}
    ## Copies a two-dimensional texture subimage, as per glCopyTexSubImage3D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width and height height. Loads framebuffer data into the texture
    ## using offsets xoffset and yoffset. zoffset specifies the layer of the
    ## texture array to which the result is copied.

proc apply*(this: Texture2DArray, state: State)  {.importcpp: "apply".}
    ## Bind the texture if already compiled. Otherwise recompile.

proc imagesValid*(this: Texture2DArray): bool  {.importcpp: "imagesValid".}

proc computeInternalFormat*(this: Texture2DArray)  {.importcpp: "computeInternalFormat".}

proc computeTextureDepth*(this: Texture2DArray): GLsizei  {.importcpp: "computeTextureDepth".}

proc allocateMipmap*(this: Texture2DArray, state: State)  {.importcpp: "allocateMipmap".}

proc applyTexImage2DArray_subload*(this: Texture2DArray, state: State, image: ptr Image , layer: GLsizei, inwidth: GLsizei, inheight: GLsizei, indepth: GLsizei, inInternalFormat: GLint, numMipmapLevels: var GLsizei)  {.importcpp: "applyTexImage2DArray_subload".}

{.pop.}  # header: "Texture2DArray"
