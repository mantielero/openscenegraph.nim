import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import Image  # provides: osg::Image
import CopyOp  # provides: osg::CopyOp
type
  Texture2D* {.header: "Texture2D", importcpp: "osg::Texture2D", byref.} = object #of class osg::Texture
    ## Encapsulates OpenGL 2D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  SubloadCallback* {.header: "Texture2D", importcpp: "osg::Texture2D::SubloadCallback", byref.} = object #of class osg::Referenced

  ImageModifiedCount* {.header: "Texture2D", importcpp: "osg::Texture2D::ImageModifiedCount".} = buffered_value[unsigned int]


{.push header: "Texture2D".}

proc constructTexture2D*(): Texture2D {.constructor,importcpp: "osg::Texture2D::Texture2D".}

proc constructTexture2D*(image: ptr Image ): Texture2D {.constructor,importcpp: "osg::Texture2D::Texture2D(@)".}

proc constructTexture2D*(text: Texture2d, copyop: Copyop = SHALLOW_COPY): Texture2D {.constructor,importcpp: "osg::Texture2D::Texture2D(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Texture2D): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture2D, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture2D, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture2D): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture2D): cstring  {.importcpp: "className".}

proc getType*(this: Texture2D): Type  {.importcpp: "getType".}

proc compare*(this: Texture2D, rhs: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: Texture2D): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var Texture2D, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image.

proc getImage*(this: var Texture2D): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image.

proc getImage*(this: Texture2D): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image.

proc isDirty*(this: Texture2D, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: Texture2D, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setImage*(this: var Texture2D, cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image, ignoring face.

proc getImage*(this: var Texture2D, cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image, ignoring face.

proc getImage*(this: Texture2D, cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image, ignoring face.

proc getNumImages*(this: Texture2D): cuint  {.importcpp: "getNumImages".}
    ## Gets the number of images that can be assigned to the Texture.

proc setTextureSize*(this: Texture2D, width: cint, height: cint)  {.importcpp: "setTextureSize".}
    ## Sets the texture width and height. If width or height are zero,
    ## calculate the respective value from the source image size.

proc setTextureWidth*(this: var Texture2D, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var Texture2D, height: cint)  {.importcpp: "setTextureHeight".}

proc getTextureWidth*(this: Texture2D): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: Texture2D): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture2D): cint  {.importcpp: "getTextureDepth".}

proc textureObjectValid*(this: SubloadCallback, texture: Texture2d, state: State): bool  {.importcpp: "textureObjectValid".}

proc generateTextureObject*(this: SubloadCallback, texture: Texture2d, state: State): Ref_ptr[TextureObject]  {.importcpp: "generateTextureObject".}

proc load*(this: SubloadCallback, texture: Texture2d, state: State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, texture: Texture2d, state: State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var Texture2D, cb: ptr Subloadcallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var Texture2D): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: Texture2D): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc setNumMipmapLevels*(this: Texture2D, num: cuint)  {.importcpp: "setNumMipmapLevels".}
    ## Helper function. Sets the number of mipmap levels created for this
    ## texture. Should only be called within an osg::Texture::apply(), or
    ## during a custom OpenGL texture load.

proc getNumMipmapLevels*(this: Texture2D): cuint  {.importcpp: "getNumMipmapLevels".}
    ## Gets the number of mipmap levels created.

proc copyTexImage2D*(this: var Texture2D, state: State, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexImage2D".}
    ## Copies pixels into a 2D texture image, as per glCopyTexImage2D.
    ## Creates an OpenGL texture object from the current OpenGL background
    ## framebuffer contents at position x, y with width width and height
    ## height. width and height must be a power of two.

proc copyTexSubImage2D*(this: var Texture2D, state: State, xoffset: cint, yoffset: cint, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexSubImage2D".}
    ## Copies a two-dimensional texture subimage, as per glCopyTexSubImage2D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width and height height. Loads framebuffer data into the texture
    ## using offsets xoffset and yoffset. width and height must be powers of
    ## two.

proc apply*(this: Texture2D, state: State)  {.importcpp: "apply".}
    ## Bind the texture object. If the texture object hasn't already been
    ## compiled, create the texture mipmap levels.

proc computeInternalFormat*(this: Texture2D)  {.importcpp: "computeInternalFormat".}

proc allocateMipmap*(this: Texture2D, state: State)  {.importcpp: "allocateMipmap".}

proc textureObjectValid*(this: Texture2D, state: State): bool  {.importcpp: "textureObjectValid".}
    ## Return true of the TextureObject assigned to the context associate
    ## with osg::State object is valid.

{.pop.}  # header: "Texture2D"
