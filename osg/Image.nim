import gl # Provides GLenum, GLvoid, GLint
import stringfwd # Provides string
import CopyOp # Provides CopyOp
import Object # Provides Object
import FrameStamp # Provides FrameStamp
import BufferObject # Provides PixelBufferObject
import Vec2 # Provides Vec2
import Vec3 # Provides Vec3
import Vec3i # Provides Vec3i
import Vec4 # Provides Vec4
import StateAttribute # Provides StateAttribute
import Geode # Provides Geode
import NodeVisitor # Provides NodeVisitor


type
  # Enums
  WriteHint* {.size:sizeof(cuint),header: "Image", importcpp: "osg::Image::WriteHint".} = enum
    NO_PREFERENCE = 0,
    STORE_INLINE = 1,
    EXTERNAL_FILE = 2

  AllocationMode* {.size:sizeof(cuint),header: "Image", importcpp: "osg::Image::AllocationMode".} = enum
    NO_DELETE = 0,
    USE_NEW_DELETE = 1,
    USE_MALLOC_FREE = 2

  Origin* {.size:sizeof(cuint),header: "Image", importcpp: "osg::Image::Origin".} = enum
    BOTTOM_LEFT = 0,
    TOP_LEFT = 1

  # Typedefs
  MipmapDataType* {.header: "Image", importcpp: "osg::Image::MipmapDataType".} = cint
  DimensionsChangedCallbackVector* {.header: "Image", importcpp: "osg::Image::DimensionsChangedCallbackVector".} = cint
{.push header: "Image".}


# Constructors and methods
proc constructImage*(): Image {.constructor,importcpp: "Image".}

proc constructImage*(image: Image, copyop: Copyop = SHALLOW_COPY): Image {.constructor,importcpp: "Image(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructDataIterator*(image: ptr Image ): DataIterator {.constructor,importcpp: "DataIterator(@)".}

proc constructDataIterator*(ri: Dataiterator): DataIterator {.constructor,importcpp: "DataIterator(@)".}

proc constructDimensionsChangedCallback*(): DimensionsChangedCallback {.constructor,importcpp: "DimensionsChangedCallback".}

proc cloneType*(this: Image): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Image, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Image, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Image): cstring  {.importcpp: "libraryName".}

proc className*(this: Image): cstring  {.importcpp: "className".}

proc asImage*(this: var Image): ptr Image   {.importcpp: "asImage".}

proc asImage*(this: Image): ptr Image   {.importcpp: "asImage".}

proc getDataPointer*(this: Image): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: Image): cuint  {.importcpp: "getTotalDataSize".}

proc compare*(this: Image, rhs: Image): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setFileName*(this: var Image, fileName: String)  {.importcpp: "setFileName".}

proc getFileName*(this: Image): String  {.importcpp: "getFileName".}

proc setWriteHint*(this: var Image, writeHint: Writehint)  {.importcpp: "setWriteHint".}

proc getWriteHint*(this: Image): Writehint  {.importcpp: "getWriteHint".}

proc setAllocationMode*(this: var Image, mode: Allocationmode)  {.importcpp: "setAllocationMode".}
    ## Set the method used for deleting data once it goes out of scope.

proc getAllocationMode*(this: Image): Allocationmode  {.importcpp: "getAllocationMode".}
    ## Get the method used for deleting data once it goes out of scope.

proc allocateImage*(this: var Image, s: cint, t: cint, r: cint, pixelFormat: GLenum, `type`: GLenum, packing: cint)  {.importcpp: "allocateImage".}
    ## Allocate a pixel block of specified size and type.

proc setImage*(this: var Image, s: cint, t: cint, r: cint, internalTextureformat: GLint, pixelFormat: GLenum, `type`: GLenum, data: ptr unsigned char, mode: Allocationmode, packing: cint, rowLength: cint)  {.importcpp: "setImage".}
    ## Set the image dimensions, format and data.

proc readPixels*(this: var Image, x: cint, y: cint, width: cint, height: cint, pixelFormat: GLenum, `type`: GLenum, packing: cint)  {.importcpp: "readPixels".}
    ## Read pixels from current frame buffer at specified position and size,
    ## using glReadPixels. Create memory for storage if required, reuse
    ## existing pixel coords if possible.

proc readImageFromCurrentTexture*(this: var Image, contextID: cuint, copyMipMapsIfAvailable: bool, `type`: GLenum, face: cuint = 0)  {.importcpp: "readImageFromCurrentTexture".}
    ## Read the contents of the current bound texture, handling compressed
    ## pixelFormats if present. Create memory for storage if required, reuse
    ## existing pixel coords if possible.

proc swap*(this: var Image, rhs: Image)  {.importcpp: "swap".}
    ## swap the data and settings between two image objects.

proc scaleImage*(this: var Image, s: cint, t: cint, r: cint)  {.importcpp: "scaleImage".}
    ## Scale image to specified size.

proc scaleImage*(this: var Image, s: cint, t: cint, r: cint, newDataType: GLenum)  {.importcpp: "scaleImage".}
    ## Scale image to specified size and with specified data type.

proc copySubImage*(this: var Image, s_offset: cint, t_offset: cint, r_offset: cint, source: ptr Image )  {.importcpp: "copySubImage".}
    ## Copy a source Image into a subpart of this Image at specified
    ## position. Typically used to copy to an already allocated image, such
    ## as creating a 3D image from a stack 2D images. If this Image is empty
    ## then image data is created to accommodate the source image in its
    ## offset position. If source is NULL then no operation happens, this
    ## Image is left unchanged.

proc setOrigin*(this: var Image, origin: Origin)  {.importcpp: "setOrigin".}
    ## Set the origin of the image. The default value is BOTTOM_LEFT and is
    ## consistent with OpenGL. TOP_LEFT is used for imagery that follows
    ## standard Imagery convention, such as movies, and hasn't been flipped
    ## yet. For such images one much flip the t axis of the tex coords. to
    ## handle this origin position.

proc getOrigin*(this: Image): Origin  {.importcpp: "getOrigin".}
    ## Get the origin of the image.

proc s*(this: Image): cint  {.importcpp: "s".}
    ## Width of image.

proc t*(this: Image): cint  {.importcpp: "t".}
    ## Height of image.

proc r*(this: Image): cint  {.importcpp: "r".}
    ## Depth of image.

proc setRowLength*(this: var Image, length: cint)  {.importcpp: "setRowLength".}

proc getRowLength*(this: Image): cint  {.importcpp: "getRowLength".}

proc setInternalTextureFormat*(this: var Image, internalFormat: GLint)  {.importcpp: "setInternalTextureFormat".}

proc getInternalTextureFormat*(this: Image): GLint  {.importcpp: "getInternalTextureFormat".}

proc setPixelFormat*(this: var Image, pixelFormat: GLenum)  {.importcpp: "setPixelFormat".}

proc getPixelFormat*(this: Image): GLenum  {.importcpp: "getPixelFormat".}

proc setDataType*(this: var Image, dataType: GLenum)  {.importcpp: "setDataType".}

proc getDataType*(this: Image): GLenum  {.importcpp: "getDataType".}

proc setPacking*(this: var Image, packing: cuint)  {.importcpp: "setPacking".}

proc getPacking*(this: Image): cuint  {.importcpp: "getPacking".}

proc isCompressed*(this: Image): bool  {.importcpp: "isCompressed".}
    ## Return true of the pixel format is an OpenGL compressed pixel format.

proc setPixelAspectRatio*(this: var Image, pixelAspectRatio: cfloat)  {.importcpp: "setPixelAspectRatio".}
    ## Set the pixel aspect ratio, defined as the pixel width divided by the
    ## pixel height.

proc getPixelAspectRatio*(this: Image): cfloat  {.importcpp: "getPixelAspectRatio".}
    ## Get the pixel aspect ratio.

proc getPixelSizeInBits*(this: Image): cuint  {.importcpp: "getPixelSizeInBits".}
    ## Return the number of bits required for each pixel.

proc getRowSizeInBytes*(this: Image): cuint  {.importcpp: "getRowSizeInBytes".}
    ## Return the number of bytes each row of pixels occupies once it has
    ## been packed.

proc getRowStepInBytes*(this: Image): cuint  {.importcpp: "getRowStepInBytes".}
    ## Return the number of bytes between each successive row. Note,
    ## getRowSizeInBytes() will only equal getRowStepInBytes() when
    ## isDataContiguous() return true.

proc getImageSizeInBytes*(this: Image): cuint  {.importcpp: "getImageSizeInBytes".}
    ## Return the number of bytes each image (_s*_t) of pixels occupies.

proc getImageStepInBytes*(this: Image): cuint  {.importcpp: "getImageStepInBytes".}
    ## Return the number of bytes between each successive image. Note,
    ## getImageSizeInBytes() will only equal getImageStepInBytes() when
    ## isDataContiguous() return true.

proc getTotalSizeInBytes*(this: Image): cuint  {.importcpp: "getTotalSizeInBytes".}
    ## Return the number of bytes the whole row/image/volume of pixels
    ## occupies.

proc getTotalSizeInBytesIncludingMipmaps*(this: Image): cuint  {.importcpp: "getTotalSizeInBytesIncludingMipmaps".}
    ## Return the number of bytes the whole row/image/volume of pixels
    ## occupies, including all mip maps if included.

proc valid*(this: Image): bool  {.importcpp: "valid".}
    ## Return true if the Image represent a valid and usable imagery.

proc data*(this: var Image): ptr unsigned char  {.importcpp: "data".}
    ## Raw image data. Note, data in successive rows may not be contiguous,
    ## isDataContiguous() return false then you should take care to access
    ## the data per row rather than treating the whole data as a single
    ## block.

proc data*(this: Image): ptr unsigned char  {.importcpp: "data".}
    ## Raw const image data. Note, data in successive rows may not be
    ## contiguous, isDataContiguous() return false then you should take care
    ## to access the data per row rather than treating the whole data as a
    ## single block.

proc data*(this: var Image, column: cuint, row: cuint = 0, image: cuint = 0): ptr unsigned char  {.importcpp: "data".}

proc data*(this: Image, column: cuint, row: cuint = 0, image: cuint = 0): ptr unsigned char  {.importcpp: "data".}

proc isDataContiguous*(this: Image): bool  {.importcpp: "isDataContiguous".}
    ## return true if the data stored in the image is a contiguous block of
    ## data.

proc `++`*(this: var DataIterator)  {.importcpp: "# ++ #".}
    ## advance iterator to next block of data.

proc valid*(this: DataIterator): bool  {.importcpp: "valid".}
    ## is iterator valid.

proc data*(this: DataIterator): ptr unsigned char  {.importcpp: "data".}
    ## data pointer of current block to copy.

proc size*(this: DataIterator): cuint  {.importcpp: "size".}
    ## Size of current block to copy.

proc assign*(this: var DataIterator)  {.importcpp: "assign".}

proc getColor*(this: Image, s: cuint, t: cuint = 0, r: cuint = 0): Vec4  {.importcpp: "getColor".}
    ## Get the color value for specified texcoord.

proc getColor*(this: Image, texcoord: Vec2): Vec4  {.importcpp: "getColor".}
    ## Get the color value for specified texcoord.

proc getColor*(this: Image, texcoord: Vec3): Vec4  {.importcpp: "getColor".}
    ## Get the color value for specified texcoord.

proc setColor*(this: var Image, color: Vec4, s: cuint, t: cuint = 0, r: cuint = 0)  {.importcpp: "setColor".}
    ## Set the color value for specified texcoord.

proc setColor*(this: var Image, color: Vec4, texcoord: Vec2)  {.importcpp: "setColor".}
    ## Set the color value for specified texcoord. Note texcoord is clamped
    ## to edge.

proc setColor*(this: var Image, color: Vec4, texcoord: Vec3)  {.importcpp: "setColor".}
    ## Set the color value for specified texcoord. Note texcoord is clamped
    ## to edge.

proc flipHorizontal*(this: var Image)  {.importcpp: "flipHorizontal".}
    ## Flip the image horizontally, around s dimension.

proc flipVertical*(this: var Image)  {.importcpp: "flipVertical".}
    ## Flip the image vertically, around t dimension.

proc flipDepth*(this: var Image)  {.importcpp: "flipDepth".}
    ## Flip the image around the r dimension. Only relevant for 3D textures.

proc ensureValidSizeForTexturing*(this: var Image, maxTextureSize: GLint)  {.importcpp: "ensureValidSizeForTexturing".}
    ## Ensure image dimensions are a power of two. Mipmapped textures require
    ## the image dimensions to be power of two and are within the maximum
    ## texture size for the host machine.

proc isPackedType*(this: var Image, `type`: GLenum): bool  {.importcpp: "isPackedType".}

proc computePixelFormat*(this: var Image, pixelFormat: GLenum): GLenum  {.importcpp: "computePixelFormat".}

proc computeFormatDataType*(this: var Image, pixelFormat: GLenum): GLenum  {.importcpp: "computeFormatDataType".}

proc computeBlockFootprint*(this: var Image, pixelFormat: GLenum): Vec3i  {.importcpp: "computeBlockFootprint".}
    ## return the dimensions of a block of compressed pixels

proc computeBlockSize*(this: var Image, pixelFormat: GLenum, packing: GLenum): cuint  {.importcpp: "computeBlockSize".}
    ## return the size in bytes of a block of compressed pixels

proc computeNumComponents*(this: var Image, pixelFormat: GLenum): cuint  {.importcpp: "computeNumComponents".}

proc computePixelSizeInBits*(this: var Image, pixelFormat: GLenum, `type`: GLenum): cuint  {.importcpp: "computePixelSizeInBits".}

proc computeRowWidthInBytes*(this: var Image, width: cint, pixelFormat: GLenum, `type`: GLenum, packing: cint): cuint  {.importcpp: "computeRowWidthInBytes".}

proc computeImageSizeInBytes*(this: var Image, width: cint, height: cint, depth: cint, pixelFormat: GLenum, `type`: GLenum, packing: cint, slice_packing: cint, image_packing: cint): cuint  {.importcpp: "computeImageSizeInBytes".}

proc roudUpToMultiple*(this: var Image, s: cint, pack: cint): cint  {.importcpp: "roudUpToMultiple".}

proc computeNearestPowerOfTwo*(this: var Image, s: cint, bias: cfloat): cint  {.importcpp: "computeNearestPowerOfTwo".}

proc computeNumberOfMipmapLevels*(this: var Image, s: cint, t: cint, r: cint): cint  {.importcpp: "computeNumberOfMipmapLevels".}

proc isMipmap*(this: Image): bool  {.importcpp: "isMipmap".}

proc getNumMipmapLevels*(this: Image): cuint  {.importcpp: "getNumMipmapLevels".}

proc setMipmapLevels*(this: var Image, mipmapDataVector: Mipmapdatatype)  {.importcpp: "setMipmapLevels".}
    ## Send offsets into data. It is assumed that first mipmap offset (index
    ## 0) is 0.

proc getMipmapLevels*(this: Image): Mipmapdatatype  {.importcpp: "getMipmapLevels".}

proc getMipmapOffset*(this: Image, mipmapLevel: cuint): cuint  {.importcpp: "getMipmapOffset".}

proc getMipmapData*(this: var Image, mipmapLevel: cuint): ptr unsigned char  {.importcpp: "getMipmapData".}

proc getMipmapData*(this: Image, mipmapLevel: cuint): ptr unsigned char  {.importcpp: "getMipmapData".}

proc supportsTextureSubloading*(this: Image): bool  {.importcpp: "supportsTextureSubloading".}
    ## returns false for texture formats that do not support texture
    ## subloading

proc isImageTranslucent*(this: Image): bool  {.importcpp: "isImageTranslucent".}
    ## Return true if this image is translucent - i.e. it has alpha values
    ## that are less 1.0 (when normalized).

proc setPixelBufferObject*(this: var Image, buffer: ptr Pixelbufferobject )  {.importcpp: "setPixelBufferObject".}
    ## Set the optional PixelBufferObject used to map the image memory
    ## efficiently to graphics memory.

proc getPixelBufferObject*(this: var Image): ptr Pixelbufferobject   {.importcpp: "getPixelBufferObject".}
    ## Get the PixelBufferObject.

proc getPixelBufferObject*(this: Image): ptr Pixelbufferobject   {.importcpp: "getPixelBufferObject".}
    ## Get the const PixelBufferObject.

proc requiresUpdateCall*(this: Image): bool  {.importcpp: "requiresUpdateCall".}
    ## Return whether the update(NodeVisitor* nv) should be required on each
    ## frame to enable proper working of osg::Image.

proc update*(this: var Image, ptr Nodevisitor )  {.importcpp: "update".}
    ## update method for osg::Image subclasses that update themselves during
    ## the update traversal.

proc `()`*(this: var UpdateCallback, attr: ptr Stateattribute , nv: ptr Nodevisitor )  {.importcpp: "# () #".}

proc sendFocusHint*(this: var Image, bool): bool  {.importcpp: "sendFocusHint".}
    ## Hint whether to enable or disable focus to images acting as front ends
    ## to interactive surfaces such as a vnc or browser window. Return true
    ## if handled.

proc sendPointerEvent*(this: var Image, cint, cint, cint): bool  {.importcpp: "sendPointerEvent".}
    ## Send pointer events to images that are acting as front ends to
    ## interactive surfaces such as a vnc or browser window. Return true if
    ## handled.

proc sendKeyEvent*(this: var Image, cint, bool): bool  {.importcpp: "sendKeyEvent".}
    ## Send key events to images that are acting as front ends to interactive
    ## surfaces such as a vnc or browser window. Return true if handled.

proc setFrameLastRendered*(this: var Image, ptr Framestamp )  {.importcpp: "setFrameLastRendered".}
    ## Pass frame information to the custom Image classes, to be called only
    ## when objects associated with imagery are not culled.

proc `()`*(this: var DimensionsChangedCallback, image: ptr Image )  {.importcpp: "# () #".}

proc addDimensionsChangedCallback*(this: var Image, cb: ptr Dimensionschangedcallback )  {.importcpp: "addDimensionsChangedCallback".}

proc removeDimensionsChangedCallback*(this: var Image, cb: ptr Dimensionschangedcallback )  {.importcpp: "removeDimensionsChangedCallback".}

proc `=`*(this: var Image, Image): Image  {.importcpp: "# = #".}

proc handleDimensionsChangedCallbacks*(this: var Image)  {.importcpp: "handleDimensionsChangedCallbacks".}

proc deallocateData*(this: var Image)  {.importcpp: "deallocateData".}

proc setData*(this: var Image, data: ptr unsigned char, allocationMode: Allocationmode)  {.importcpp: "setData".}

proc createGeodeForImage*[T](this: var osg, image: ref_ptr[T]): ptr Geode   {.importcpp: "createGeodeForImage".}

proc createGeodeForImage*[T](this: var osg, image: ref_ptr[T], s: cfloat, t: cfloat): ptr Geode   {.importcpp: "createGeodeForImage".}

{.pop.} # header: "Image
