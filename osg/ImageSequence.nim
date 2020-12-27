import Object  # provides: osg::Object
import Referenced  # provides: osg::Referenced
import Image  # provides: osg::Image::AllocationMode, osg::Image
import CopyOp  # provides: osg::CopyOp
import NodeVisitor  # provides: osg::NodeVisitor
type
  Mode* {.size:sizeof(cuint),header: "ImageSequence", importcpp: "osg::ImageSequence::Mode".} = enum
    mdPRE_LOAD_ALL_IMAGES = 0,
    mdPAGE_AND_RETAIN_IMAGES = 1,
    mdPAGE_AND_DISCARD_USED_IMAGES = 2,
    mdLOAD_AND_RETAIN_IN_UPDATE_TRAVERSAL = 3,
    mdLOAD_AND_DISCARD_IN_UPDATE_TRAVERSAL = 4

  ImageSequence* {.header: "ImageSequence", importcpp: "osg::ImageSequence", byref.} = object #of class osg::ImageStream
    ## Image Buffer class.

  ImageDataList* {.header: "ImageSequence", importcpp: "osg::ImageSequence::ImageDataList".} = cint


{.push header: "ImageSequence".}

proc constructImageSequence*(): ImageSequence {.constructor,importcpp: "osg::ImageSequence::ImageSequence".}

proc constructImageSequence*(ImageSequence: Imagesequence, copyop: Copyop = SHALLOW_COPY): ImageSequence {.constructor,importcpp: "osg::ImageSequence::ImageSequence(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructImageData*(): ImageData {.constructor,importcpp: "osg::ImageSequence::ImageData::ImageData".}

proc constructImageData*(id: Imagedata): ImageData {.constructor,importcpp: "osg::ImageSequence::ImageData::ImageData(@)".}

proc cloneType*(this: ImageSequence): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ImageSequence, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ImageSequence, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ImageSequence): cstring  {.importcpp: "libraryName".}

proc className*(this: ImageSequence): cstring  {.importcpp: "className".}

proc compare*(this: ImageSequence, rhs: Image): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setReferenceTime*(this: var ImageSequence, t: cdouble)  {.importcpp: "setReferenceTime".}

proc getReferenceTime*(this: ImageSequence): cdouble  {.importcpp: "getReferenceTime".}

proc setTimeMultiplier*(this: var ImageSequence, tm: cdouble)  {.importcpp: "setTimeMultiplier".}

proc getTimeMultiplier*(this: ImageSequence): cdouble  {.importcpp: "getTimeMultiplier".}

proc `=`*(this: var ImageData, id: Imagedata): Imagedata  {.importcpp: "# = #".}

proc seek*(this: var ImageSequence, time: cdouble)  {.importcpp: "seek".}

proc play*(this: var ImageSequence)  {.importcpp: "play".}

proc pause*(this: var ImageSequence)  {.importcpp: "pause".}

proc rewind*(this: var ImageSequence)  {.importcpp: "rewind".}

proc setMode*(this: var ImageSequence, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: ImageSequence): Mode  {.importcpp: "getMode".}

proc setLength*(this: var ImageSequence, length: cdouble)  {.importcpp: "setLength".}

proc getLength*(this: ImageSequence): cdouble  {.importcpp: "getLength".}

proc addImageFile*(this: var ImageSequence, fileName: String)  {.importcpp: "addImageFile".}

proc setImageFile*(this: var ImageSequence, pos: cuint, fileName: String)  {.importcpp: "setImageFile".}

proc getImageFile*(this: ImageSequence, pos: cuint): String  {.importcpp: "getImageFile".}

proc addImage*(this: var ImageSequence, image: ptr Image )  {.importcpp: "addImage".}

proc setImage*(this: var ImageSequence, s: cint, t: cint, r: cint, internalTextureformat: GLint, pixelFormat: GLenum, `type`: GLenum, data: ptr unsigned char, mode: Allocationmode, packing: cint)  {.importcpp: "setImage".}

proc setImage*(this: var ImageSequence, pos: cuint, image: ptr Image )  {.importcpp: "setImage".}

proc getImage*(this: var ImageSequence, pos: cuint): ptr Image   {.importcpp: "getImage".}

proc getImage*(this: ImageSequence, pos: cuint): ptr Image   {.importcpp: "getImage".}

proc getNumImageData*(this: ImageSequence): cuint  {.importcpp: "getNumImageData".}

proc getImageDataList*(this: var ImageSequence): Imagedatalist  {.importcpp: "getImageDataList".}

proc getImageDataList*(this: ImageSequence): Imagedatalist  {.importcpp: "getImageDataList".}

proc requiresUpdateCall*(this: ImageSequence): bool  {.importcpp: "requiresUpdateCall".}
    ## ImageSequence requires a call to update(NodeVisitor*) during the
    ## update traversal so return true.

proc update*(this: var ImageSequence, nv: ptr Nodevisitor )  {.importcpp: "update".}
    ## update method for osg::Image subclasses that update themselves during
    ## the update traversal.

proc setReadOptions*(this: var ImageSequence, options: ptr Referenced )  {.importcpp: "setReadOptions".}
    ## Set the optional osgDB::Options object to use when reading images.

proc getReadOptions*(this: var ImageSequence): ptr Referenced   {.importcpp: "getReadOptions".}
    ## Get the optional osgDB::Options object used when reading images.

proc getReadOptions*(this: ImageSequence): ptr Referenced   {.importcpp: "getReadOptions".}
    ## Get the optional osgDB::Options object used when reading images.

proc applyLoopingMode*(this: var ImageSequence)  {.importcpp: "applyLoopingMode".}

proc setImageToChild*(this: var ImageSequence, pos: cint)  {.importcpp: "setImageToChild".}

proc computeTimePerImage*(this: var ImageSequence)  {.importcpp: "computeTimePerImage".}

proc imageIndex*(this: var ImageSequence, time: cdouble): cint  {.importcpp: "imageIndex".}

proc prefixsetImage*(this: var ImageSequence, pos: cuint, image: ptr Image )  {.importcpp: "_setImage".}

{.pop.}  # header: "ImageSequence"
