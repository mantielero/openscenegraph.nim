import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  BlendFunci* {.header: "BlendFunci", importcpp: "osg::BlendFunci", byref.} = object #of class osg::BlendFunc
    ## Encapsulates glBlendFunci function : the index version of
    ## glBlendEquation for multiple render target.



{.push header: "BlendFunci".}

proc constructBlendFunci*(): BlendFunci {.constructor,importcpp: "osg::BlendFunci::BlendFunci".}

proc constructBlendFunci*(buf: cuint, source: GLenum, destination: GLenum): BlendFunci {.constructor,importcpp: "osg::BlendFunci::BlendFunci(@)".}

proc constructBlendFunci*(buf: cuint, source: GLenum, destination: GLenum, source_alpha: GLenum, destination_alpha: GLenum): BlendFunci {.constructor,importcpp: "osg::BlendFunci::BlendFunci(@)".}

proc constructBlendFunci*(cm: Blendfunci, copyop: Copyop = SHALLOW_COPY): BlendFunci {.constructor,importcpp: "osg::BlendFunci::BlendFunci(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: BlendFunci): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BlendFunci, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BlendFunci, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BlendFunci): cstring  {.importcpp: "libraryName".}

proc className*(this: BlendFunci): cstring  {.importcpp: "className".}

proc getType*(this: BlendFunci): Type  {.importcpp: "getType".}

proc compare*(this: BlendFunci, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: BlendFunci): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var BlendFunci, buf: cuint)  {.importcpp: "setIndex".}
    ## Set the renderbuffer index of the BlendFunci.

proc getIndex*(this: BlendFunci): cuint  {.importcpp: "getIndex".}
    ## Get the renderbuffer index of the BlendFunci.

proc apply*(this: BlendFunci, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "BlendFunci"
