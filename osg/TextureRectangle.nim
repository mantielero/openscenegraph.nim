import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/Image  # provides: osg::Image
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  ImageModifiedCount* {.header: "TextureRectangle", importcpp: "osg::TextureRectangle::ImageModifiedCount".} = buffered_value[unsigned int]
  TextureRectangle* {.header: "TextureRectangle", importcpp: "osg::TextureRectangle", byref.} = object #of class osg::Texture
    ## Texture state class which encapsulates OpenGL texture functionality.

  SubloadCallback* {.header: "TextureRectangle", importcpp: "osg::TextureRectangle::SubloadCallback", byref.} = object #of class osg::Referenced



{.push header: "TextureRectangle".}

proc constructTextureRectangle*(): TextureRectangle {.constructor,importcpp: "osg::TextureRectangle::TextureRectangle".}

proc constructTextureRectangle*(image: ptr Image ): TextureRectangle {.constructor,importcpp: "osg::TextureRectangle::TextureRectangle(@)".}

proc constructTextureRectangle*(text: Texturerectangle, copyop: Copyop = SHALLOW_COPY): TextureRectangle {.constructor,importcpp: "osg::TextureRectangle::TextureRectangle(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TextureRectangle): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TextureRectangle, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TextureRectangle, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TextureRectangle): cstring  {.importcpp: "libraryName".}

proc className*(this: TextureRectangle): cstring  {.importcpp: "className".}

proc getType*(this: TextureRectangle): Type  {.importcpp: "getType".}

proc compare*(this: TextureRectangle, rhs: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: TextureRectangle): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var TextureRectangle, image: ptr Image )  {.importcpp: "setImage".}
    ## Set the texture image.

proc getImage*(this: var TextureRectangle): ptr Image   {.importcpp: "getImage".}
    ## Get the texture image.

proc getImage*(this: TextureRectangle): ptr Image   {.importcpp: "getImage".}
    ## Get the const texture image.

proc isDirty*(this: TextureRectangle, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: TextureRectangle, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setImage*(this: var TextureRectangle, cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Set the texture image, ignoring face value as there is only one image.

proc getImage*(this: var TextureRectangle, cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the texture image, ignoring face value as there is only one image.

proc getImage*(this: TextureRectangle, cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the const texture image, ignoring face value as there is only one
    ## image.

proc getNumImages*(this: TextureRectangle): cuint  {.importcpp: "getNumImages".}
    ## Get the number of images that can be assigned to the Texture.

proc setTextureSize*(this: TextureRectangle, width: cint, height: cint)  {.importcpp: "setTextureSize".}
    ## Set the texture width and height. If width or height are zero then the
    ## respective size value is calculated from the source image sizes.

proc setTextureWidth*(this: var TextureRectangle, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var TextureRectangle, height: cint)  {.importcpp: "setTextureHeight".}

proc getTextureWidth*(this: TextureRectangle): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: TextureRectangle): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: TextureRectangle): cint  {.importcpp: "getTextureDepth".}

proc load*(this: SubloadCallback, Texturerectangle, State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, Texturerectangle, State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var TextureRectangle, cb: ptr Subloadcallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var TextureRectangle): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: TextureRectangle): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc copyTexImage2D*(this: var TextureRectangle, state: State, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexImage2D".}
    ## Copies pixels into a 2D texture image, as per glCopyTexImage2D.
    ## Creates an OpenGL texture object from the current OpenGL background
    ## framebuffer contents at position x, y with width width and height
    ## height. width and height must be a power of two.

proc copyTexSubImage2D*(this: var TextureRectangle, state: State, xoffset: cint, yoffset: cint, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexSubImage2D".}
    ## Copies a two-dimensional texture subimage, as per glCopyTexSubImage2D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width and height height. Loads framebuffer data into the texture
    ## using offsets xoffset and yoffset. width and height must be powers of
    ## two.

proc apply*(this: TextureRectangle, state: State)  {.importcpp: "apply".}
    ## On first apply (unless already compiled), create and bind the texture,
    ## subsequent apply will simply bind to texture.

proc computeInternalFormat*(this: TextureRectangle)  {.importcpp: "computeInternalFormat".}

proc allocateMipmap*(this: TextureRectangle, state: State)  {.importcpp: "allocateMipmap".}

proc applyTexImage_load*(this: TextureRectangle, target: GLenum, image: ptr Image , state: State, inwidth: var GLsizei, inheight: var GLsizei)  {.importcpp: "applyTexImage_load".}

proc applyTexImage_subload*(this: TextureRectangle, target: GLenum, image: ptr Image , state: State, inwidth: var GLsizei, inheight: var GLsizei, inInternalFormat: var GLint)  {.importcpp: "applyTexImage_subload".}

{.pop.}  # header: "TextureRectangle"
