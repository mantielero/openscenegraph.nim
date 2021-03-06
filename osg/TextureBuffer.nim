import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: BufferObject  was providing: osg::BufferData
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Image  was providing: osg::Image
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  TextureBuffer* {.header: "TextureBuffer", importcpp: "osg::TextureBuffer", byref.} = object #of class osg::Texture
    ## Encapsulates OpenGL texture buffer functionality in a Texture
    ## delegating its content to attached BufferObject

  BufferDataModifiedCount* {.header: "TextureBuffer", importcpp: "osg::TextureBuffer::BufferDataModifiedCount".} = buffered_value[unsigned int]


{.push header: "TextureBuffer".}

proc constructTextureBuffer*(): TextureBuffer {.constructor,importcpp: "osg::TextureBuffer::TextureBuffer".}

proc constructTextureBuffer*(image: ptr BufferData ): TextureBuffer {.constructor,importcpp: "osg::TextureBuffer::TextureBuffer(@)".}

proc constructTextureBuffer*(text: TextureBuffer, copyop: CopyOp = SHALLOW_COPY): TextureBuffer {.constructor,importcpp: "osg::TextureBuffer::TextureBuffer(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TextureBuffer): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TextureBuffer, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TextureBuffer, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TextureBuffer): cstring  {.importcpp: "libraryName".}

proc className*(this: TextureBuffer): cstring  {.importcpp: "className".}

proc getType*(this: TextureBuffer): Type  {.importcpp: "getType".}

proc compare*(this: TextureBuffer, rhs: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: TextureBuffer): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var TextureBuffer, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image.

proc getImage*(this: var TextureBuffer): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image.

proc getImage*(this: TextureBuffer): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image.

proc isDirty*(this: TextureBuffer, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: TextureBuffer, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setImage*(this: var TextureBuffer, a00: cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image, ignoring face.

proc getImage*(this: var TextureBuffer, a00: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image, ignoring face.

proc getImage*(this: TextureBuffer, a00: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image, ignoring face.

proc getNumImages*(this: TextureBuffer): cuint  {.importcpp: "getNumImages".}
    ## Gets the number of images that can be assigned to the Texture.

proc setTextureWidth*(this: var TextureBuffer, width: cint)  {.importcpp: "setTextureWidth".}
    ## Sets the texture width. If width is zero, calculate the value from the
    ## source image width.

proc getTextureWidth*(this: TextureBuffer): cint  {.importcpp: "getTextureWidth".}
    ## Gets the texture width.

proc getTextureHeight*(this: TextureBuffer): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: TextureBuffer): cint  {.importcpp: "getTextureDepth".}

proc allocateMipmap*(this: TextureBuffer, a00: State)  {.importcpp: "allocateMipmap".}

proc apply*(this: TextureBuffer, state: State)  {.importcpp: "apply".}
    ## Bind the texture buffer.

proc setBufferData*(this: var TextureBuffer, bo: ptr BufferData )  {.importcpp: "setBufferData".}
    ## Set setBufferData attached

proc getBufferData*(this: TextureBuffer): ptr BufferData   {.importcpp: "getBufferData".}
    ## Set setBufferData attached

proc computeInternalFormat*(this: TextureBuffer)  {.importcpp: "computeInternalFormat".}

{.pop.}  # header: "TextureBuffer"
