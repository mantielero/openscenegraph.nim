import Object  # provides: osg::Object
import Image  # provides: osg::Image
import CopyOp  # provides: osg::CopyOp
import Texture  # provides: osg::Texture
type
  StreamStatus* {.size:sizeof(cuint),header: "ImageStream", importcpp: "osg::ImageStream::StreamStatus".} = enum
    strmsttsINVALID = 0,
    strmsttsPLAYING = 1,
    strmsttsPAUSED = 2,
    strmsttsREWINDING = 3

  LoopingMode* {.size:sizeof(cuint),header: "ImageStream", importcpp: "osg::ImageStream::LoopingMode".} = enum
    lpngmdNO_LOOPING = 0,
    lpngmdLOOPING = 1

  ImageStream* {.header: "ImageStream", importcpp: "osg::ImageStream", byref.} = object #of class osg::Image
    ## Image Stream class.

  AudioStreams* {.header: "ImageStream", importcpp: "osg::ImageStream::AudioStreams".} = cint


{.push header: "ImageStream".}

proc constructImageStream*(): ImageStream {.constructor,importcpp: "osg::ImageStream::ImageStream".}

proc constructImageStream*(image: Imagestream, copyop: Copyop = SHALLOW_COPY): ImageStream {.constructor,importcpp: "osg::ImageStream::ImageStream(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ImageStream): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ImageStream, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ImageStream, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ImageStream): cstring  {.importcpp: "libraryName".}

proc className*(this: ImageStream): cstring  {.importcpp: "className".}

proc compare*(this: ImageStream, rhs: Image): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc seek*(this: var ImageStream, cdouble)  {.importcpp: "seek".}

proc play*(this: var ImageStream)  {.importcpp: "play".}

proc pause*(this: var ImageStream)  {.importcpp: "pause".}

proc rewind*(this: var ImageStream)  {.importcpp: "rewind".}

proc quit*(this: var ImageStream, bool)  {.importcpp: "quit".}

proc getStatus*(this: ImageStream): Streamstatus  {.importcpp: "getStatus".}

proc setLoopingMode*(this: var ImageStream, mode: Loopingmode)  {.importcpp: "setLoopingMode".}

proc getLoopingMode*(this: ImageStream): Loopingmode  {.importcpp: "getLoopingMode".}

proc getCreationTime*(this: ImageStream): cdouble  {.importcpp: "getCreationTime".}

proc getLength*(this: ImageStream): cdouble  {.importcpp: "getLength".}

proc getFrameRate*(this: ImageStream): cdouble  {.importcpp: "getFrameRate".}

proc getCurrentTime*(this: ImageStream): cdouble  {.importcpp: "getCurrentTime".}

proc setReferenceTime*(this: var ImageStream, cdouble)  {.importcpp: "setReferenceTime".}

proc getReferenceTime*(this: ImageStream): cdouble  {.importcpp: "getReferenceTime".}

proc setTimeMultiplier*(this: var ImageStream, cdouble)  {.importcpp: "setTimeMultiplier".}

proc getTimeMultiplier*(this: ImageStream): cdouble  {.importcpp: "getTimeMultiplier".}

proc setVolume*(this: var ImageStream, cfloat)  {.importcpp: "setVolume".}

proc getVolume*(this: ImageStream): cfloat  {.importcpp: "getVolume".}

proc getAudioBalance*(this: var ImageStream): cfloat  {.importcpp: "getAudioBalance".}
    ## set the balance of the audio: -1 = left, 0 = center, 1 = right

proc setAudioBalance*(this: var ImageStream, cfloat)  {.importcpp: "setAudioBalance".}

proc setAudioStreams*(this: var ImageStream, asl: Audiostreams)  {.importcpp: "setAudioStreams".}

proc getAudioStreams*(this: var ImageStream): Audiostreams  {.importcpp: "getAudioStreams".}

proc getAudioStreams*(this: ImageStream): Audiostreams  {.importcpp: "getAudioStreams".}

proc createSuitableTexture*(this: var ImageStream): ptr Texture   {.importcpp: "createSuitableTexture".}
    ## create a suitable texture for this imagestream, return NULL, if not
    ## supported implement this method in subclasses to use special
    ## technologies like CoreVideo or similar.

proc applyLoopingMode*(this: var ImageStream)  {.importcpp: "applyLoopingMode".}

{.pop.}  # header: "ImageStream"
