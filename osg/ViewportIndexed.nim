import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Viewport  was providing: osg::Viewport::value_type
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  ViewportIndexed* {.header: "ViewportIndexed", importcpp: "osg::ViewportIndexed", byref.} = object #of class osg::Viewport
    ## Encapsulates glViewportIndexed function : the index version of
    ## glViewport for multiple render target.



{.push header: "ViewportIndexed".}

proc constructViewportIndexed*(): ViewportIndexed {.constructor,importcpp: "osg::ViewportIndexed::ViewportIndexed".}

proc constructViewportIndexed*(index: cuint, x: value_type, y: value_type, width: value_type, height: value_type): ViewportIndexed {.constructor,importcpp: "osg::ViewportIndexed::ViewportIndexed(@)".}

proc constructViewportIndexed*(cm: ViewportIndexed, copyop: CopyOp = SHALLOW_COPY): ViewportIndexed {.constructor,importcpp: "osg::ViewportIndexed::ViewportIndexed(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ViewportIndexed): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ViewportIndexed, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ViewportIndexed, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ViewportIndexed): cstring  {.importcpp: "libraryName".}

proc className*(this: ViewportIndexed): cstring  {.importcpp: "className".}

proc getType*(this: ViewportIndexed): Type  {.importcpp: "getType".}

proc compare*(this: ViewportIndexed, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: ViewportIndexed): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var ViewportIndexed, index: cuint)  {.importcpp: "setIndex".}
    ## Set the index of the ViewportIndexed.

proc getIndex*(this: ViewportIndexed): cuint  {.importcpp: "getIndex".}
    ## Get the index of the ViewportIndexed.

proc apply*(this: ViewportIndexed, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "ViewportIndexed"
