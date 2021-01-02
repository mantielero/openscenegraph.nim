import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Image  was providing: osg::Image
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Face* {.size:sizeof(cuint),header: "TextureCubeMap", importcpp: "osg::TextureCubeMap::Face", pure.} = enum
    POSITIVE_X = 0,
    NEGATIVE_X = 1,
    POSITIVE_Y = 2,
    NEGATIVE_Y = 3,
    POSITIVE_Z = 4,
    NEGATIVE_Z = 5

  SubloadCallback* {.header: "TextureCubeMap", importcpp: "osg::TextureCubeMap::SubloadCallback", byref.} = object #of class osg::Referenced

  ImageModifiedCount* {.header: "TextureCubeMap", importcpp: "osg::TextureCubeMap::ImageModifiedCount".} = buffered_value[unsigned int]


{.push header: "TextureCubeMap".}

proc constructTextureCubeMap*(): TextureCubeMap {.constructor,importcpp: "osg::TextureCubeMap::TextureCubeMap".}

proc constructTextureCubeMap*(cm: TextureCubeMap, copyop: CopyOp = SHALLOW_COPY): TextureCubeMap {.constructor,importcpp: "osg::TextureCubeMap::TextureCubeMap(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TextureCubeMap): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TextureCubeMap, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TextureCubeMap, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TextureCubeMap): cstring  {.importcpp: "libraryName".}

proc className*(this: TextureCubeMap): cstring  {.importcpp: "className".}

proc getType*(this: TextureCubeMap): Type  {.importcpp: "getType".}

proc compare*(this: TextureCubeMap, rhs: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: TextureCubeMap): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var TextureCubeMap, face: cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Set the texture image for specified face.

proc getImage*(this: var TextureCubeMap, face: cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the texture image for specified face.

proc getImage*(this: TextureCubeMap, face: cuint): ptr Image   {.importcpp: "getImage".}
    ## Get the const texture image for specified face.

proc getNumImages*(this: TextureCubeMap): cuint  {.importcpp: "getNumImages".}
    ## Get the number of images that can be assigned to the Texture.

proc isDirty*(this: TextureCubeMap, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: TextureCubeMap, face: cuint, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setTextureSize*(this: TextureCubeMap, width: cint, height: cint)  {.importcpp: "setTextureSize".}
    ## Set the texture width and height. If width or height are zero then the
    ## respective size value is calculated from the source image sizes.

proc setTextureWidth*(this: var TextureCubeMap, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var TextureCubeMap, height: cint)  {.importcpp: "setTextureHeight".}

proc getTextureWidth*(this: TextureCubeMap): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: TextureCubeMap): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: TextureCubeMap): cint  {.importcpp: "getTextureDepth".}

proc load*(this: SubloadCallback, texture: TextureCubeMap, state: State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, texture: TextureCubeMap, state: State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var TextureCubeMap, cb: ptr SubloadCallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var TextureCubeMap): ptr SubloadCallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: TextureCubeMap): ptr SubloadCallback   {.importcpp: "getSubloadCallback".}

proc setNumMipmapLevels*(this: TextureCubeMap, num: cuint)  {.importcpp: "setNumMipmapLevels".}
    ## Set the number of mip map levels the texture has been created with.
    ## Should only be called within an osg::Texuture::apply() and custom
    ## OpenGL texture load.

proc getNumMipmapLevels*(this: TextureCubeMap): cuint  {.importcpp: "getNumMipmapLevels".}
    ## Get the number of mip map levels the texture has been created with.

proc copyTexSubImageCubeMap*(this: var TextureCubeMap, state: State, face: cint, xoffset: cint, yoffset: cint, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexSubImageCubeMap".}
    ## Copies a two-dimensional texture subimage, as per glCopyTexSubImage2D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width and height height. Loads framebuffer data into the texture
    ## using offsets xoffset and yoffset. width and height must be powers of
    ## two.

proc apply*(this: TextureCubeMap, state: State)  {.importcpp: "apply".}
    ## On first apply (unless already compiled), create the mipmapped texture
    ## and bind it. Subsequent apply will simple bind to texture.

proc imagesValid*(this: TextureCubeMap): bool  {.importcpp: "imagesValid".}

proc computeInternalFormat*(this: TextureCubeMap)  {.importcpp: "computeInternalFormat".}

proc allocateMipmap*(this: TextureCubeMap, state: State)  {.importcpp: "allocateMipmap".}

{.pop.}  # header: "TextureCubeMap"
