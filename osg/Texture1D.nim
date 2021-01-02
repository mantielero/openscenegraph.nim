import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Image  was providing: osg::Image
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  SubloadCallback* {.header: "Texture1D", importcpp: "osg::Texture1D::SubloadCallback", byref.} = object #of class osg::Referenced

  ImageModifiedCount* {.header: "Texture1D", importcpp: "osg::Texture1D::ImageModifiedCount".} = buffered_value[unsigned int]


{.push header: "Texture1D".}

proc constructTexture1D*(): Texture1D {.constructor,importcpp: "osg::Texture1D::Texture1D".}

proc constructTexture1D*(image: ptr Image ): Texture1D {.constructor,importcpp: "osg::Texture1D::Texture1D(@)".}

proc constructTexture1D*(text: Texture1D, copyop: CopyOp = SHALLOW_COPY): Texture1D {.constructor,importcpp: "osg::Texture1D::Texture1D(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Texture1D): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture1D, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture1D, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture1D): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture1D): cstring  {.importcpp: "className".}

proc getType*(this: Texture1D): Type  {.importcpp: "getType".}

proc compare*(this: Texture1D, rhs: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: Texture1D): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var Texture1D, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image.

proc getImage*(this: var Texture1D): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image.

proc getImage*(this: Texture1D): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image.

proc isDirty*(this: Texture1D, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: Texture1D, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setImage*(this: var Texture1D, a00: cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image, ignoring face.

proc getImage*(this: var Texture1D, a00: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image, ignoring face.

proc getImage*(this: Texture1D, a00: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image, ignoring face.

proc getNumImages*(this: Texture1D): cuint  {.importcpp: "getNumImages".}
    ## Gets the number of images that can be assigned to the Texture.

proc setTextureWidth*(this: var Texture1D, width: cint)  {.importcpp: "setTextureWidth".}
    ## Sets the texture width. If width is zero, calculate the value from the
    ## source image width.

proc getTextureWidth*(this: Texture1D): cint  {.importcpp: "getTextureWidth".}
    ## Gets the texture width.

proc getTextureHeight*(this: Texture1D): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture1D): cint  {.importcpp: "getTextureDepth".}

proc load*(this: SubloadCallback, texture: Texture1D, state: State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, texture: Texture1D, state: State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var Texture1D, cb: ptr SubloadCallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var Texture1D): ptr SubloadCallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: Texture1D): ptr SubloadCallback   {.importcpp: "getSubloadCallback".}

proc setNumMipmapLevels*(this: Texture1D, num: cuint)  {.importcpp: "setNumMipmapLevels".}
    ## Helper function. Sets the number of mipmap levels created for this
    ## texture. Should only be called within an osg::Texture::apply(), or
    ## during a custom OpenGL texture load.

proc getNumMipmapLevels*(this: Texture1D): cuint  {.importcpp: "getNumMipmapLevels".}
    ## Gets the number of mipmap levels created.

proc copyTexImage1D*(this: var Texture1D, state: State, x: cint, y: cint, width: cint)  {.importcpp: "copyTexImage1D".}
    ## Copies pixels into a 1D texture image, as per glCopyTexImage1D.
    ## Creates an OpenGL texture object from the current OpenGL background
    ## framebuffer contents at position x, y with width width. width must be
    ## a power of two.

proc copyTexSubImage1D*(this: var Texture1D, state: State, xoffset: cint, x: cint, y: cint, width: cint)  {.importcpp: "copyTexSubImage1D".}
    ## Copies a one-dimensional texture subimage, as per glCopyTexSubImage1D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width.

proc apply*(this: Texture1D, state: State)  {.importcpp: "apply".}
    ## Bind the texture object. If the texture object hasn't already been
    ## compiled, create the texture mipmap levels.

proc computeInternalFormat*(this: Texture1D)  {.importcpp: "computeInternalFormat".}

proc allocateMipmap*(this: Texture1D, state: State)  {.importcpp: "allocateMipmap".}

proc applyTexImage1D*(this: Texture1D, target: GLenum, image: ptr Image , state: State, width: var GLsizei, numMipmapLevels: var GLsizei)  {.importcpp: "applyTexImage1D".}
    ## Helper method. Create the texture without setting or using a texture
    ## binding.

{.pop.}  # header: "Texture1D"
