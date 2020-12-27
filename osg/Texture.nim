import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type
import Image  # provides: osg::Image
import CopyOp  # provides: osg::CopyOp
import GraphicsContext  # provides: osg::GraphicsContext
import Vec4d  # provides: osg::Vec4d
import FrameStamp  # provides: osg::FrameStamp
import Vec4i  # provides: osg::Vec4i
type
  WrapParameter* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::WrapParameter".} = enum
    wrpprmtrWRAP_S = 0,
    wrpprmtrWRAP_T = 1,
    wrpprmtrWRAP_R = 2

  WrapMode* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::WrapMode".} = enum
    wrpmdCLAMP = 10496,
    wrpmdREPEAT = 10497,
    wrpmdCLAMP_TO_BORDER = 33069,
    wrpmdCLAMP_TO_EDGE = 33071,
    wrpmdMIRROR = 33648

  FilterParameter* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::FilterParameter".} = enum
    fltrprmtrMIN_FILTER = 0,
    fltrprmtrMAG_FILTER = 1

  FilterMode* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::FilterMode".} = enum
    fltrmdNEAREST = 9728,
    fltrmdLINEAR = 9729,
    fltrmdNEAREST_MIPMAP_NEAREST = 9984,
    fltrmdLINEAR_MIPMAP_NEAREST = 9985,
    fltrmdNEAREST_MIPMAP_LINEAR = 9986,
    fltrmdLINEAR_MIPMAP_LINEAR = 9987

  InternalFormatMode* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::InternalFormatMode".} = enum
    ntrnlfrmtmdUSE_IMAGE_DATA_FORMAT = 0,
    ntrnlfrmtmdUSE_USER_DEFINED_FORMAT = 1,
    ntrnlfrmtmdUSE_ARB_COMPRESSION = 2,
    ntrnlfrmtmdUSE_S3TC_DXT1_COMPRESSION = 3,
    ntrnlfrmtmdUSE_S3TC_DXT3_COMPRESSION = 4,
    ntrnlfrmtmdUSE_S3TC_DXT5_COMPRESSION = 5,
    ntrnlfrmtmdUSE_PVRTC_2BPP_COMPRESSION = 6,
    ntrnlfrmtmdUSE_PVRTC_4BPP_COMPRESSION = 7,
    ntrnlfrmtmdUSE_ETC_COMPRESSION = 8,
    ntrnlfrmtmdUSE_ETC2_COMPRESSION = 9,
    ntrnlfrmtmdUSE_RGTC1_COMPRESSION = 10,
    ntrnlfrmtmdUSE_RGTC2_COMPRESSION = 11,
    ntrnlfrmtmdUSE_S3TC_DXT1c_COMPRESSION = 12,
    ntrnlfrmtmdUSE_S3TC_DXT1a_COMPRESSION = 13

  InternalFormatType* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::InternalFormatType".} = enum
    ## Texture type determined by the internal texture format

    ntrnlfrmttypNORMALIZED = 0,
      ## default OpenGL format (clamped values to [0,1) or [0,255])
    ntrnlfrmttypFLOAT = 1,
      ## float values, Shader Model 3.0 (see ARB_texture_float)
    ntrnlfrmttypSIGNED_INTEGER = 2,
      ## Signed integer values (see EXT_texture_integer)
    ntrnlfrmttypUNSIGNED_INTEGER = 4
      ## Unsigned integer value (see EXT_texture_integer)

  ShadowCompareFunc* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::ShadowCompareFunc".} = enum
    shdwcmprfncNEVER = 512,
    shdwcmprfncLESS = 513,
    shdwcmprfncEQUAL = 514,
    shdwcmprfncLEQUAL = 515,
    shdwcmprfncGREATER = 516,
    shdwcmprfncNOTEQUAL = 517,
    shdwcmprfncGEQUAL = 518,
    shdwcmprfncALWAYS = 519

  ShadowTextureMode* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::ShadowTextureMode".} = enum
    shdwtxtrmdNONE = 0,
    shdwtxtrmdALPHA = 6406,
    shdwtxtrmdLUMINANCE = 6409,
    shdwtxtrmdINTENSITY = 32841

  GenerateMipmapMode* {.size:sizeof(cuint),header: "Texture", importcpp: "osg::Texture::GenerateMipmapMode".} = enum
    ## Returned by mipmapBeforeTexImage() to indicate what
    ## mipmapAfterTexImage() should do

    gnrtmpmpmdGENERATE_MIPMAP_NONE = 0,
    gnrtmpmpmdGENERATE_MIPMAP = 1,
    gnrtmpmpmdGENERATE_MIPMAP_TEX_PARAMETER = 2

  TextureObject* {.header: "Texture", importcpp: "osg::Texture::TextureObject", byref.} = object #of class osg::GraphicsObject

  TextureObjectSet* {.header: "Texture", importcpp: "osg::TextureObjectSet", byref.} = object #of class osg::Referenced

  TextureObjectManager* {.header: "Texture", importcpp: "osg::TextureObjectManager", byref.} = object #of class osg::GraphicsObjectManager

  TexParameterDirtyList* {.header: "Texture", importcpp: "osg::Texture::TexParameterDirtyList".} = buffered_value[unsigned int]
  TextureObjectList* {.header: "Texture", importcpp: "osg::Texture::TextureObjectList".} = cint
  TextureObjectBuffer* {.header: "Texture", importcpp: "osg::Texture::TextureObjectBuffer".} = Buffered_object[Ref_ptr[Textureobject]]
  TextureSetMap* {.header: "Texture", importcpp: "osg::TextureObjectManager::TextureSetMap".} = cint


{.push header: "Texture".}

proc constructTexture*(): Texture {.constructor,importcpp: "osg::Texture::Texture".}

proc constructTexture*(text: Texture, copyop: Copyop = SHALLOW_COPY): Texture {.constructor,importcpp: "osg::Texture::Texture(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructTextureProfile*(target: GLenum): TextureProfile {.constructor,importcpp: "osg::Texture::TextureProfile::TextureProfile(@)".}

proc constructTextureProfile*(target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): TextureProfile {.constructor,importcpp: "osg::Texture::TextureProfile::TextureProfile(@)".}

proc constructTextureObject*(texture: ptr Texture , id: GLuint, target: GLenum): TextureObject {.constructor,importcpp: "osg::Texture::TextureObject::TextureObject(@)".}

proc constructTextureObject*(texture: ptr Texture , id: GLuint, profile: Textureprofile): TextureObject {.constructor,importcpp: "osg::Texture::TextureObject::TextureObject(@)".}

proc constructTextureObject*(texture: ptr Texture , id: GLuint, target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): TextureObject {.constructor,importcpp: "osg::Texture::TextureObject::TextureObject(@)".}

proc constructTextureObjectSet*(parent: ptr Textureobjectmanager , profile: Textureprofile): TextureObjectSet {.constructor,importcpp: "osg::TextureObjectSet::TextureObjectSet(@)".}

proc constructTextureObjectManager*(contextID: cuint): TextureObjectManager {.constructor,importcpp: "osg::TextureObjectManager::TextureObjectManager(@)".}

proc cloneType*(this: Texture): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture): cstring  {.importcpp: "className".}

proc asTexture*(this: var Texture): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc asTexture*(this: Texture): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc getType*(this: Texture): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: Texture): bool  {.importcpp: "isTextureAttribute".}

proc getTextureTarget*(this: Texture): GLenum  {.importcpp: "getTextureTarget".}

proc getModeUsage*(this: Texture, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc getTextureWidth*(this: Texture): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: Texture): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture): cint  {.importcpp: "getTextureDepth".}

proc setWrap*(this: var Texture, which: Wrapparameter, wrap: Wrapmode)  {.importcpp: "setWrap".}
    ## Sets the texture wrap mode.

proc getWrap*(this: Texture, which: Wrapparameter): Wrapmode  {.importcpp: "getWrap".}
    ## Gets the texture wrap mode.

proc setBorderColor*(this: var Texture, color: Vec4d)  {.importcpp: "setBorderColor".}
    ## Sets the border color. Only used when wrap mode is CLAMP_TO_BORDER.
    ## The border color will be casted to the appropriate type to match the
    ## internal pixel format of the texture.

proc getBorderColor*(this: Texture): Vec4d  {.importcpp: "getBorderColor".}
    ## Gets the border color.

proc setBorderWidth*(this: var Texture, width: GLint)  {.importcpp: "setBorderWidth".}
    ## Sets the border width.

proc getBorderWidth*(this: Texture): GLint  {.importcpp: "getBorderWidth".}

proc setFilter*(this: var Texture, which: Filterparameter, filter: Filtermode)  {.importcpp: "setFilter".}
    ## Sets the texture filter mode.

proc getFilter*(this: Texture, which: Filterparameter): Filtermode  {.importcpp: "getFilter".}
    ## Gets the texture filter mode.

proc setMaxAnisotropy*(this: var Texture, anis: cfloat)  {.importcpp: "setMaxAnisotropy".}
    ## Sets the maximum anisotropy value, default value is 1.0 for no
    ## anisotropic filtering. If hardware does not support anisotropic
    ## filtering, use normal filtering (equivalent to a max anisotropy value
    ## of 1.0. Valid range is 1.0f upwards. The maximum value depends on the
    ## graphics system.

proc getMaxAnisotropy*(this: Texture): cfloat  {.importcpp: "getMaxAnisotropy".}
    ## Gets the maximum anisotropy value.

proc setMinLOD*(this: var Texture, minlod: cfloat)  {.importcpp: "setMinLOD".}
    ## Sets the minimum level of detail value.

proc getMinLOD*(this: Texture): cfloat  {.importcpp: "getMinLOD".}
    ## Gets the minimum level of detail value.

proc setMaxLOD*(this: var Texture, maxlod: cfloat)  {.importcpp: "setMaxLOD".}
    ## Sets the maximum level of detail value.

proc getMaxLOD*(this: Texture): cfloat  {.importcpp: "getMaxLOD".}
    ## Gets the maximum level of detail value.

proc setLODBias*(this: var Texture, lodbias: cfloat)  {.importcpp: "setLODBias".}
    ## Gets the level of detail bias value.

proc getLODBias*(this: Texture): cfloat  {.importcpp: "getLODBias".}
    ## Sets the level of detail bias value.

proc setSwizzle*(this: var Texture, swizzle: Vec4i)  {.importcpp: "setSwizzle".}
    ## Configure the source of texture swizzling for all channels

proc getSwizzle*(this: Texture): Vec4i  {.importcpp: "getSwizzle".}
    ## Gets the source of texture swizzling for all channels

proc setUseHardwareMipMapGeneration*(this: var Texture, useHardwareMipMapGeneration: bool)  {.importcpp: "setUseHardwareMipMapGeneration".}
    ## Sets the hardware mipmap generation hint. If enabled, it will only be
    ## used if supported in the graphics system.

proc getUseHardwareMipMapGeneration*(this: Texture): bool  {.importcpp: "getUseHardwareMipMapGeneration".}
    ## Gets the hardware mipmap generation hint.

proc setUnRefImageDataAfterApply*(this: var Texture, flag: bool)  {.importcpp: "setUnRefImageDataAfterApply".}
    ## Sets whether or not the apply() function will unreference the image
    ## data. If enabled, and the image data is only referenced by this
    ## Texture, apply() will delete the image data.

proc getUnRefImageDataAfterApply*(this: Texture): bool  {.importcpp: "getUnRefImageDataAfterApply".}
    ## Gets whether or not apply() unreferences image data.

proc setClientStorageHint*(this: var Texture, flag: bool)  {.importcpp: "setClientStorageHint".}
    ## Sets whether to use client storage for the texture, if supported by
    ## the graphics system. Note: If enabled, and the graphics system
    ## supports it, the osg::Image(s) associated with this texture cannot be
    ## deleted, so the UnRefImageDataAfterApply flag would be ignored.

proc getClientStorageHint*(this: Texture): bool  {.importcpp: "getClientStorageHint".}
    ## Gets whether to use client storage for the texture.

proc setResizeNonPowerOfTwoHint*(this: var Texture, flag: bool)  {.importcpp: "setResizeNonPowerOfTwoHint".}
    ## Sets whether to force the texture to resize images that have
    ## dimensions that are not a power of two. If enabled, NPOT images will
    ## be resized, whether or not NPOT textures are supported by the
    ## hardware. If disabled, NPOT images will not be resized if supported by
    ## hardware.

proc getResizeNonPowerOfTwoHint*(this: Texture): bool  {.importcpp: "getResizeNonPowerOfTwoHint".}
    ## Gets whether texture will force non power to two images to be resized.

proc setInternalFormatMode*(this: var Texture, mode: Internalformatmode)  {.importcpp: "setInternalFormatMode".}
    ## Sets the internal texture format mode. Note: If the texture format is
    ## USE_IMAGE_DATA_FORMAT, USE_ARB_COMPRESSION, or USE_S3TC_COMPRESSION,
    ## the internal format mode is set automatically and will overwrite the
    ## previous _internalFormat.

proc getInternalFormatMode*(this: Texture): Internalformatmode  {.importcpp: "getInternalFormatMode".}
    ## Gets the internal texture format mode.

proc setInternalFormat*(this: var Texture, internalFormat: GLint)  {.importcpp: "setInternalFormat".}
    ## Sets the internal texture format. Implicitly sets the
    ## internalFormatMode to USE_USER_DEFINED_FORMAT. The corresponding
    ## internal format type will be computed.

proc getInternalFormat*(this: Texture): GLint  {.importcpp: "getInternalFormat".}
    ## Gets the internal texture format.

proc isCompressedInternalFormat*(this: Texture): bool  {.importcpp: "isCompressedInternalFormat".}
    ## Return true if the internal format is one of the compressed formats.

proc setSourceFormat*(this: var Texture, sourceFormat: GLenum)  {.importcpp: "setSourceFormat".}
    ## Sets the external source image format, used as a fallback when no
    ## osg::Image is attached to provide the source image format.

proc getSourceFormat*(this: Texture): GLenum  {.importcpp: "getSourceFormat".}
    ## Gets the external source image format.

proc setSourceType*(this: var Texture, sourceType: GLenum)  {.importcpp: "setSourceType".}
    ## Sets the external source data type, used as a fallback when no
    ## osg::Image is attached to provide the source image format.

proc getSourceType*(this: Texture): GLenum  {.importcpp: "getSourceType".}
    ## Gets the external source data type.

proc getInternalFormatType*(this: Texture): Internalformattype  {.importcpp: "getInternalFormatType".}
    ## Get the internal texture format type.

proc selectSizedInternalFormat*(this: Texture, image: ptr Image  = 0): GLenum  {.importcpp: "selectSizedInternalFormat".}

proc isDirty*(this: Texture, cuint): bool  {.importcpp: "isDirty".}
    ## return true if the texture image data has been modified and the
    ## associated GL texture object needs to be updated.

proc getTextureObject*(this: Texture, contextID: cuint): ptr Textureobject   {.importcpp: "getTextureObject".}
    ## Returns a pointer to the TextureObject for the current context.

proc setTextureObject*(this: var Texture, contextID: cuint, to: ptr Textureobject )  {.importcpp: "setTextureObject".}

proc dirtyTextureObject*(this: var Texture)  {.importcpp: "dirtyTextureObject".}
    ## Forces a recompile on next apply() of associated OpenGL texture
    ## objects.

proc areAllTextureObjectsLoaded*(this: Texture): bool  {.importcpp: "areAllTextureObjectsLoaded".}
    ## Returns true if the texture objects for all the required graphics
    ## contexts are loaded.

proc getTextureParameterDirty*(this: Texture, contextID: cuint): cuint  {.importcpp: "getTextureParameterDirty".}
    ## Gets the dirty flag for the current contextID.

proc dirtyTextureParameters*(this: var Texture)  {.importcpp: "dirtyTextureParameters".}
    ## Force a reset on next apply() of associated OpenGL texture parameters.

proc allocateMipmapLevels*(this: var Texture)  {.importcpp: "allocateMipmapLevels".}
    ## Force a manual allocation of the mipmap levels on the next apply()
    ## call. User is responsible for filling the mipmap levels with valid
    ## data. The OpenGL's glGenerateMipmapEXT function is used to generate
    ## the mipmap levels. If glGenerateMipmapEXT is not supported or
    ## texture's internal format is not supported by the glGenerateMipmapEXT,
    ## then empty mipmap levels will be allocated manually. The mipmap levels
    ## are also allocated if a non-mipmapped min filter is used.

proc setShadowComparison*(this: var Texture, flag: bool)  {.importcpp: "setShadowComparison".}
    ## Sets GL_TEXTURE_COMPARE_MODE_ARB to GL_COMPARE_R_TO_TEXTURE_ARB See
    ## http://oss.sgi.com/projects/ogl-sample/registry/ARB/shadow.txt.

proc getShadowComparison*(this: Texture): bool  {.importcpp: "getShadowComparison".}

proc setShadowCompareFunc*(this: var Texture, `func`: Shadowcomparefunc)  {.importcpp: "setShadowCompareFunc".}
    ## Sets shadow texture comparison function.

proc getShadowCompareFunc*(this: Texture): Shadowcomparefunc  {.importcpp: "getShadowCompareFunc".}

proc setShadowTextureMode*(this: var Texture, mode: Shadowtexturemode)  {.importcpp: "setShadowTextureMode".}
    ## Sets shadow texture mode after comparison.

proc getShadowTextureMode*(this: Texture): Shadowtexturemode  {.importcpp: "getShadowTextureMode".}

proc setShadowAmbient*(this: var Texture, shadow_ambient: cfloat)  {.importcpp: "setShadowAmbient".}
    ## Sets the TEXTURE_COMPARE_FAIL_VALUE_ARB texture parameter. See
    ## http://oss.sgi.com/projects/ogl-
    ## sample/registry/ARB/shadow_ambient.txt.

proc getShadowAmbient*(this: Texture): cfloat  {.importcpp: "getShadowAmbient".}

proc setImage*(this: var Texture, face: cuint, image: ptr Image )  {.importcpp: "setImage".}
    ## Sets the texture image for the specified face.

proc getImage*(this: var Texture, face: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the texture image for the specified face.

proc getImage*(this: Texture, face: cuint): ptr Image   {.importcpp: "getImage".}
    ## Gets the const texture image for specified face.

proc getNumImages*(this: Texture): cuint  {.importcpp: "getNumImages".}
    ## Gets the number of images that can be assigned to this Texture.

proc setReadPBuffer*(this: var Texture, context: ptr Graphicscontext )  {.importcpp: "setReadPBuffer".}
    ## Set the PBuffer graphics context to read from when using PBuffers for
    ## RenderToTexture.

proc getReadPBuffer*(this: var Texture): ptr Graphicscontext   {.importcpp: "getReadPBuffer".}
    ## Get the PBuffer graphics context to read from when using PBuffers for
    ## RenderToTexture.

proc getReadPBuffer*(this: Texture): ptr Graphicscontext   {.importcpp: "getReadPBuffer".}
    ## Get the const PBuffer graphics context to read from when using
    ## PBuffers for RenderToTexture.

proc apply*(this: Texture, state: State)  {.importcpp: "apply".}
    ## Texture is a pure virtual base class, apply must be overridden.

proc compileGLObjects*(this: Texture, state: State)  {.importcpp: "compileGLObjects".}
    ## Calls apply(state) to compile the texture.

proc resizeGLObjectBuffers*(this: var Texture, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Texture, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases OpenGL objects for the
    ## specified graphics context. Otherwise, releases OpenGL objects for all
    ## graphics contexts.

proc isCompressedInternalFormat*(this: var Texture, internalFormat: GLint): bool  {.importcpp: "isCompressedInternalFormat".}
    ## Determine whether the given internalFormat is a compressed image
    ## format.

proc getCompressedSize*(this: var Texture, internalFormat: GLenum, width: GLint, height: GLint, depth: GLint, blockSize: var GLint, size: var GLint)  {.importcpp: "getCompressedSize".}
    ## Determine the size of a compressed image, given the internalFormat,
    ## the width, the height, and the depth of the image. The block size and
    ## the size are output parameters.

proc applyTexImage2D_load*(this: Texture, state: State, target: GLenum, image: ptr Image , width: GLsizei, height: GLsizei, numMipmapLevels: GLsizei)  {.importcpp: "applyTexImage2D_load".}
    ## Helper method. Creates the texture, but doesn't set or use a texture
    ## binding. Note: Don't call this method directly unless you're
    ## implementing a subload callback.

proc applyTexImage2D_subload*(this: Texture, state: State, target: GLenum, image: ptr Image , width: GLsizei, height: GLsizei, inInternalFormat: GLint, numMipmapLevels: GLsizei)  {.importcpp: "applyTexImage2D_subload".}
    ## Helper method. Subloads images into the texture, but doesn't set or
    ## use a texture binding. Note: Don't call this method directly unless
    ## you're implementing a subload callback.

proc computeInternalFormat*(this: Texture)  {.importcpp: "computeInternalFormat".}

proc computeInternalFormatWithImage*(this: Texture, image: Image)  {.importcpp: "computeInternalFormatWithImage".}
    ## Computes the internal format from Image parameters.

proc computeRequiredTextureDimensions*(this: Texture, state: State, image: Image, width: var GLsizei, height: var GLsizei, numMipmapLevels: var GLsizei)  {.importcpp: "computeRequiredTextureDimensions".}
    ## Computes the texture dimension for the given Image.

proc computeInternalFormatType*(this: Texture)  {.importcpp: "computeInternalFormatType".}
    ## Computes the internal format type.

proc applyTexParameters*(this: Texture, target: GLenum, state: State)  {.importcpp: "applyTexParameters".}
    ## Helper method. Sets texture parameters.

proc isHardwareMipmapGenerationEnabled*(this: Texture, state: State): bool  {.importcpp: "isHardwareMipmapGenerationEnabled".}
    ## Returns true if _useHardwareMipMapGeneration is true and either
    ## glGenerateMipmapEXT() or GL_GENERATE_MIPMAP_SGIS are supported.

proc isSafeToUnrefImageData*(this: Texture, state: State): bool  {.importcpp: "isSafeToUnrefImageData".}
    ## Returns true if the associated Image should be released and it's safe
    ## to do so.

proc mipmapBeforeTexImage*(this: Texture, state: State, hardwareMipmapOn: bool): Generatemipmapmode  {.importcpp: "mipmapBeforeTexImage".}
    ## Helper methods to be called before and after calling
    ## gl[Compressed][Copy]Tex[Sub]Image2D to handle generating mipmaps.

proc mipmapAfterTexImage*(this: Texture, state: State, beforeResult: Generatemipmapmode)  {.importcpp: "mipmapAfterTexImage".}

proc generateMipmap*(this: Texture, state: State)  {.importcpp: "generateMipmap".}
    ## Helper method to generate mipmap levels by calling of
    ## glGenerateMipmapEXT. If it is not supported, then call the virtual
    ## allocateMipmap() method

proc allocateMipmap*(this: Texture, state: State)  {.importcpp: "allocateMipmap".}
    ## Allocate mipmap levels of the texture by subsequent calling of
    ## glTexImage* function.

proc compareTexture*(this: Texture, rhs: Texture): cint  {.importcpp: "compareTexture".}
    ## Returns -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc compareTextureObjects*(this: Texture, rhs: Texture): cint  {.importcpp: "compareTextureObjects".}
    ## Returns -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `<`*(this: TextureProfile, rhs: Textureprofile): bool  {.importcpp: "# < #".}

proc `==`*(this: TextureProfile, rhs: Textureprofile): bool  {.importcpp: "# == #".}

proc set*(this: var TextureProfile, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint)  {.importcpp: "set".}

proc match*(this: var TextureProfile, target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): bool  {.importcpp: "match".}

proc computeSize*(this: var TextureProfile)  {.importcpp: "computeSize".}

proc match*(this: var TextureObject, target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): bool  {.importcpp: "match".}

proc `bind`*(this: var TextureObject)  {.importcpp: "bind".}

proc id*(this: TextureObject): GLenum  {.importcpp: "id".}

proc target*(this: TextureObject): GLenum  {.importcpp: "target".}

proc size*(this: TextureObject): cuint  {.importcpp: "size".}

proc setTexture*(this: var TextureObject, texture: ptr Texture )  {.importcpp: "setTexture".}

proc getTexture*(this: TextureObject): ptr Texture   {.importcpp: "getTexture".}

proc setTimeStamp*(this: var TextureObject, timestamp: cdouble)  {.importcpp: "setTimeStamp".}

proc getTimeStamp*(this: TextureObject): cdouble  {.importcpp: "getTimeStamp".}

proc setAllocated*(this: var TextureObject, allocated: bool)  {.importcpp: "setAllocated".}

proc setAllocated*(this: var TextureObject, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint)  {.importcpp: "setAllocated".}

proc isAllocated*(this: TextureObject): bool  {.importcpp: "isAllocated".}

proc isReusable*(this: TextureObject): bool  {.importcpp: "isReusable".}

proc release*(this: var TextureObject)  {.importcpp: "release".}
    ## release TextureObject to the orphan list to be reused or deleted.

proc generateTextureObject*(this: var Texture, texture: ptr Texture , contextID: cuint, target: GLenum): Ref_ptr[TextureObject]  {.importcpp: "generateTextureObject".}

proc generateTextureObject*(this: var Texture, texture: ptr Texture , contextID: cuint, target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): Ref_ptr[TextureObject]  {.importcpp: "generateTextureObject".}

proc generateAndAssignTextureObject*(this: Texture, contextID: cuint, target: GLenum): ptr Textureobject   {.importcpp: "generateAndAssignTextureObject".}

proc generateAndAssignTextureObject*(this: Texture, contextID: cuint, target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): ptr Textureobject   {.importcpp: "generateAndAssignTextureObject".}

proc getProfile*(this: TextureObjectSet): Textureprofile  {.importcpp: "getProfile".}

proc handlePendingOrphandedTextureObjects*(this: var TextureObjectSet)  {.importcpp: "handlePendingOrphandedTextureObjects".}

proc deleteAllTextureObjects*(this: var TextureObjectSet)  {.importcpp: "deleteAllTextureObjects".}

proc discardAllTextureObjects*(this: var TextureObjectSet)  {.importcpp: "discardAllTextureObjects".}

proc flushAllDeletedTextureObjects*(this: var TextureObjectSet)  {.importcpp: "flushAllDeletedTextureObjects".}

proc discardAllDeletedTextureObjects*(this: var TextureObjectSet)  {.importcpp: "discardAllDeletedTextureObjects".}

proc flushDeletedTextureObjects*(this: var TextureObjectSet, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedTextureObjects".}

proc takeFromOrphans*(this: var TextureObjectSet, texture: ptr Texture ): Ref_ptr[Textureobject]  {.importcpp: "takeFromOrphans".}

proc takeOrGenerate*(this: var TextureObjectSet, texture: ptr Texture ): Ref_ptr[Textureobject]  {.importcpp: "takeOrGenerate".}

proc moveToBack*(this: var TextureObjectSet, to: ptr Textureobject )  {.importcpp: "moveToBack".}

proc addToBack*(this: var TextureObjectSet, to: ptr Textureobject )  {.importcpp: "addToBack".}

proc orphan*(this: var TextureObjectSet, to: ptr Textureobject )  {.importcpp: "orphan".}

proc remove*(this: var TextureObjectSet, to: ptr Textureobject )  {.importcpp: "remove".}

proc moveToSet*(this: var TextureObjectSet, to: ptr Textureobject , set: ptr Textureobjectset )  {.importcpp: "moveToSet".}

proc size*(this: TextureObjectSet): cuint  {.importcpp: "size".}

proc makeSpace*(this: var TextureObjectSet, size: cuint): bool  {.importcpp: "makeSpace".}

proc checkConsistency*(this: TextureObjectSet): bool  {.importcpp: "checkConsistency".}

proc getParent*(this: var TextureObjectSet): ptr Textureobjectmanager   {.importcpp: "getParent".}

proc computeNumTextureObjectsInList*(this: TextureObjectSet): cuint  {.importcpp: "computeNumTextureObjectsInList".}

proc getNumOfTextureObjects*(this: TextureObjectSet): cuint  {.importcpp: "getNumOfTextureObjects".}

proc getNumOrphans*(this: TextureObjectSet): cuint  {.importcpp: "getNumOrphans".}

proc getNumPendingOrphans*(this: TextureObjectSet): cuint  {.importcpp: "getNumPendingOrphans".}

proc setNumberActiveTextureObjects*(this: var TextureObjectManager, size: cuint)  {.importcpp: "setNumberActiveTextureObjects".}

proc getNumberActiveTextureObjects*(this: var TextureObjectManager): cuint  {.importcpp: "getNumberActiveTextureObjects".}

proc getNumberActiveTextureObjects*(this: TextureObjectManager): cuint  {.importcpp: "getNumberActiveTextureObjects".}

proc setNumberOrphanedTextureObjects*(this: var TextureObjectManager, size: cuint)  {.importcpp: "setNumberOrphanedTextureObjects".}

proc getNumberOrphanedTextureObjects*(this: var TextureObjectManager): cuint  {.importcpp: "getNumberOrphanedTextureObjects".}

proc getNumberOrphanedTextureObjects*(this: TextureObjectManager): cuint  {.importcpp: "getNumberOrphanedTextureObjects".}

proc setCurrTexturePoolSize*(this: var TextureObjectManager, size: cuint)  {.importcpp: "setCurrTexturePoolSize".}

proc getCurrTexturePoolSize*(this: var TextureObjectManager): cuint  {.importcpp: "getCurrTexturePoolSize".}

proc getCurrTexturePoolSize*(this: TextureObjectManager): cuint  {.importcpp: "getCurrTexturePoolSize".}

proc setMaxTexturePoolSize*(this: var TextureObjectManager, size: cuint)  {.importcpp: "setMaxTexturePoolSize".}

proc getMaxTexturePoolSize*(this: TextureObjectManager): cuint  {.importcpp: "getMaxTexturePoolSize".}

proc hasSpace*(this: TextureObjectManager, size: cuint): bool  {.importcpp: "hasSpace".}

proc makeSpace*(this: var TextureObjectManager, size: cuint): bool  {.importcpp: "makeSpace".}

proc generateTextureObject*(this: var TextureObjectManager, texture: ptr Texture , target: GLenum): Ref_ptr[Textureobject]  {.importcpp: "generateTextureObject".}

proc generateTextureObject*(this: var TextureObjectManager, texture: ptr Texture , target: GLenum, numMipmapLevels: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint): Ref_ptr[Textureobject]  {.importcpp: "generateTextureObject".}

proc handlePendingOrphandedTextureObjects*(this: var TextureObjectManager)  {.importcpp: "handlePendingOrphandedTextureObjects".}

proc deleteAllGLObjects*(this: var TextureObjectManager)  {.importcpp: "deleteAllGLObjects".}

proc discardAllGLObjects*(this: var TextureObjectManager)  {.importcpp: "discardAllGLObjects".}

proc flushAllDeletedGLObjects*(this: var TextureObjectManager)  {.importcpp: "flushAllDeletedGLObjects".}

proc discardAllDeletedGLObjects*(this: var TextureObjectManager)  {.importcpp: "discardAllDeletedGLObjects".}

proc flushDeletedGLObjects*(this: var TextureObjectManager, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLObjects".}

proc getTextureObjectSet*(this: var TextureObjectManager, profile: Textureprofile): ptr Textureobjectset   {.importcpp: "getTextureObjectSet".}

proc newFrame*(this: var TextureObjectManager, fs: ptr Framestamp )  {.importcpp: "newFrame".}

proc resetStats*(this: var TextureObjectManager)  {.importcpp: "resetStats".}

proc reportStats*(this: var TextureObjectManager, `out`: Ostream)  {.importcpp: "reportStats".}

proc recomputeStats*(this: TextureObjectManager, `out`: Ostream)  {.importcpp: "recomputeStats".}

proc checkConsistency*(this: TextureObjectManager): bool  {.importcpp: "checkConsistency".}

proc getFrameNumber*(this: var TextureObjectManager): cuint  {.importcpp: "getFrameNumber".}

proc getNumberFrames*(this: var TextureObjectManager): cuint  {.importcpp: "getNumberFrames".}

proc getNumberDeleted*(this: var TextureObjectManager): cuint  {.importcpp: "getNumberDeleted".}

proc getDeleteTime*(this: var TextureObjectManager): cdouble  {.importcpp: "getDeleteTime".}

proc getNumberGenerated*(this: var TextureObjectManager): cuint  {.importcpp: "getNumberGenerated".}

proc getGenerateTime*(this: var TextureObjectManager): cdouble  {.importcpp: "getGenerateTime".}

{.pop.}  # header: "Texture"
