import osg_types
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  SampleFormat* {.size:sizeof(cuint),header: "AudioStream", importcpp: "osg::AudioStream::SampleFormat", pure.} = enum
    SAMPLE_FORMAT_U8 = 0,
    SAMPLE_FORMAT_S16 = 1,
    SAMPLE_FORMAT_S24 = 2,
    SAMPLE_FORMAT_S32 = 3,
    SAMPLE_FORMAT_F32 = 4

  AudioSink* {.header: "AudioStream", importcpp: "osg::AudioSink", byref.} = object #of osg::Object
    ## Pure virtual AudioSink bass class that is used to connect the audio
    ## system with AudioStreams.

  AudioStream* {.header: "AudioStream", importcpp: "osg::AudioStream", byref.} = object #of osg::Object
    ## Pure virtual AudioStream base class. Subclasses provide mechanism for
    ## reading/generating audio data



{.push header: "AudioStream".}

proc constructAudioSink*(): AudioSink {.constructor,importcpp: "osg::AudioSink::AudioSink".}

proc constructAudioStream*(): AudioStream {.constructor,importcpp: "osg::AudioStream::AudioStream".}

proc constructAudioStream*(audio: AudioStream, copyop: CopyOp = SHALLOW_COPY): AudioStream {.constructor,importcpp: "osg::AudioStream::AudioStream(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc libraryName*(this: AudioSink): cstring  {.importcpp: "libraryName".}

proc className*(this: AudioSink): cstring  {.importcpp: "className".}

proc play*(this: var AudioSink)  {.importcpp: "play".}

proc pause*(this: var AudioSink)  {.importcpp: "pause".}

proc stop*(this: var AudioSink)  {.importcpp: "stop".}

proc playing*(this: AudioSink): bool  {.importcpp: "playing".}

proc getDelay*(this: AudioSink): cdouble  {.importcpp: "getDelay".}

proc setDelay*(this: var AudioSink, delay: cdouble)  {.importcpp: "setDelay".}

proc setVolume*(this: var AudioSink, a00: cfloat)  {.importcpp: "setVolume".}

proc getVolume*(this: AudioSink): cfloat  {.importcpp: "getVolume".}

proc cloneType*(this: AudioSink): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AudioSink, a00: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AudioStream, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AudioStream): cstring  {.importcpp: "libraryName".}

proc className*(this: AudioStream): cstring  {.importcpp: "className".}

proc setAudioSink*(this: var AudioStream, audio_sink: ptr AudioSink )  {.importcpp: "setAudioSink".}

proc consumeAudioBuffer*(this: var AudioStream, buffer: void *const, size: cint)  {.importcpp: "consumeAudioBuffer".}

proc audioFrequency*(this: AudioStream): cint  {.importcpp: "audioFrequency".}

proc audioNbChannels*(this: AudioStream): cint  {.importcpp: "audioNbChannels".}

proc audioSampleFormat*(this: AudioStream): SampleFormat  {.importcpp: "audioSampleFormat".}

{.pop.}  # header: "AudioStream"
