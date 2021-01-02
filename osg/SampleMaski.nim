import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  SampleMaski* {.header: "SampleMaski", importcpp: "osg::SampleMaski", byref.} = object #of class osg::StateAttribute
    ## osg::SampleMaski does nothing if OpenGL 3.2 or ARB_texture_multisample
    ## are not available.



{.push header: "SampleMaski".}

proc constructSampleMaski*(): SampleMaski {.constructor,importcpp: "osg::SampleMaski::SampleMaski".}

proc constructSampleMaski*(sampleMaski: SampleMaski, copyop: CopyOp = SHALLOW_COPY): SampleMaski {.constructor,importcpp: "osg::SampleMaski::SampleMaski(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: SampleMaski): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: SampleMaski, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: SampleMaski, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: SampleMaski): cstring  {.importcpp: "libraryName".}

proc className*(this: SampleMaski): cstring  {.importcpp: "className".}

proc getType*(this: SampleMaski): Type  {.importcpp: "getType".}

proc compare*(this: SampleMaski, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMask*(this: var SampleMaski, mask: cuint, maskNumber: cuint)  {.importcpp: "setMask".}

proc getMask*(this: SampleMaski, maskNumber: cuint): cuint  {.importcpp: "getMask".}

proc apply*(this: SampleMaski, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "SampleMaski"
