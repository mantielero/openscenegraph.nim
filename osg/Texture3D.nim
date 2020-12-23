import gl # Provides GLenum, GLsizei
import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Image # Provides Image
import State # Provides State


type
  ImageModifiedCount* {.header: "Texture3D", importcpp: "osg::Texture3D::ImageModifiedCount".} = buffered_value[unsigned int]
{.push header: "Texture3D".}


# Constructors and methods
proc constructTexture3D*(): Texture3D {.constructor,importcpp: "Texture3D".}

proc constructTexture3D*(image: ptr Image ): Texture3D {.constructor,importcpp: "Texture3D(@)".}

proc constructTexture3D*(text: Texture3d, copyop: Copyop = SHALLOW_COPY): Texture3D {.constructor,importcpp: "Texture3D(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc texture3D*[T](this: var Texture3D, image: Ref_ptr[T])  {.importcpp: "Texture3D".}

proc cloneType*(this: Texture3D): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture3D, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture3D, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture3D): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture3D): cstring  {.importcpp: "className".}

proc getType*(this: Texture3D): Type  {.importcpp: "getType".}

proc compare*(this: Texture3D, rhs: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: Texture3D): GLenum  {.importcpp: "getTextureTarget".}

proc setImage*(this: var Texture3D, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image.

proc setImage*[T](this: var Texture3D, image: ref_ptr[T])  {.importcpp: "setImage".}

proc getImage*(this: var Texture3D): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image.

proc getImage*(this: Texture3D): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image.

proc isDirty*(this: Texture3D, contextID: cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getModifiedCount*(this: Texture3D, contextID: cuint): cuint  {.importcpp: "getModifiedCount".}

proc setImage*(this: var Texture3D, cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image, ignoring face.

proc getImage*(this: var Texture3D, cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image, ignoring face.

proc getImage*(this: Texture3D, cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image, ignoring face.

proc getNumImages*(this: Texture3D): cuint  {.importcpp: "getNumImages".}
    ## Gets the number of images that can be assigned to the Texture.

proc setTextureSize*(this: Texture3D, width: cint, height: cint, depth: cint)  {.importcpp: "setTextureSize".}
    ## Sets the texture width, height, and depth. If width, height, or depth
    ## are zero, calculate the respective value from the source image size.

proc getTextureSize*(this: Texture3D, width: cint, height: cint, depth: cint)  {.importcpp: "getTextureSize".}
    ## Gets the texture subload width.

proc setTextureWidth*(this: var Texture3D, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var Texture3D, height: cint)  {.importcpp: "setTextureHeight".}

proc setTextureDepth*(this: var Texture3D, depth: cint)  {.importcpp: "setTextureDepth".}

proc getTextureWidth*(this: Texture3D): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: Texture3D): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture3D): cint  {.importcpp: "getTextureDepth".}

proc load*(this: SubloadCallback, texture: Texture3d, state: State)  {.importcpp: "load".}

proc subload*(this: SubloadCallback, texture: Texture3d, state: State)  {.importcpp: "subload".}

proc setSubloadCallback*(this: var Texture3D, cb: ptr Subloadcallback )  {.importcpp: "setSubloadCallback".}

proc getSubloadCallback*(this: var Texture3D): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc getSubloadCallback*(this: Texture3D): ptr Subloadcallback   {.importcpp: "getSubloadCallback".}

proc setNumMipmapLevels*(this: Texture3D, num: cuint)  {.importcpp: "setNumMipmapLevels".}
    ## Helper function. Sets the number of mipmap levels created for this
    ## texture. Should only be called within an osg::Texture::apply(), or
    ## during a custom OpenGL texture load.

proc getNumMipmapLevels*(this: Texture3D): cuint  {.importcpp: "getNumMipmapLevels".}
    ## Gets the number of mipmap levels created.

proc copyTexSubImage3D*(this: var Texture3D, state: State, xoffset: cint, yoffset: cint, zoffset: cint, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "copyTexSubImage3D".}
    ## Copies a two-dimensional texture subimage, as per glCopyTexSubImage3D.
    ## Updates a portion of an existing OpenGL texture object from the
    ## current OpenGL background framebuffer contents at position x, y with
    ## width width and height height. Loads framebuffer data into the texture
    ## using offsets xoffset, yoffset, and zoffset. width and height must be
    ## powers of two.

proc apply*(this: Texture3D, state: State)  {.importcpp: "apply".}
    ## Bind the texture object. If the texture object hasn't already been
    ## compiled, create the texture mipmap levels.

proc computeRequiredTextureDimensions*(this: Texture3D, state: State, image: Image, width: var GLsizei, height: var GLsizei, depth: var GLsizei, numMipmapLevels: var GLsizei)  {.importcpp: "computeRequiredTextureDimensions".}

proc computeInternalFormat*(this: Texture3D)  {.importcpp: "computeInternalFormat".}

proc allocateMipmap*(this: Texture3D, state: State)  {.importcpp: "allocateMipmap".}

proc applyTexImage3D*(this: Texture3D, target: GLenum, image: ptr Image , state: State, inwidth: var GLsizei, inheight: var GLsizei, indepth: var GLsizei, numMipmapLevels: var GLsizei)  {.importcpp: "applyTexImage3D".}

{.pop.} # header: "Texture3D
