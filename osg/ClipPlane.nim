import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: Plane  was providing: osg::Plane
  # File: CopyOp  was providing: osg::CopyOp
  # File: Vec4d  was providing: osg::Vec4d
{.push header: "ClipPlane".}

proc constructClipPlane*(): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane".}

proc constructClipPlane*(no: cuint): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane(@)".}

proc constructClipPlane*(no: cuint, plane: Vec4d): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane(@)".}

proc constructClipPlane*(no: cuint, plane: Plane): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane(@)".}

proc constructClipPlane*(no: cuint, a: cdouble, b: cdouble, c: cdouble, d: cdouble): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane(@)".}

proc constructClipPlane*(cp: ClipPlane, copyop: CopyOp = SHALLOW_COPY): ClipPlane {.constructor,importcpp: "osg::ClipPlane::ClipPlane(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ClipPlane): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClipPlane, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClipPlane, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ClipPlane): cstring  {.importcpp: "libraryName".}

proc className*(this: ClipPlane): cstring  {.importcpp: "className".}

proc getType*(this: ClipPlane): Type  {.importcpp: "getType".}

proc compare*(this: ClipPlane, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: ClipPlane): cuint  {.importcpp: "getMember".}

proc getModeUsage*(this: ClipPlane, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setClipPlane*(this: var ClipPlane, plane: Plane)  {.importcpp: "setClipPlane".}
    ## Set the clip plane with the given Plane.

proc setClipPlane*(this: var ClipPlane, a: cdouble, b: cdouble, c: cdouble, d: cdouble)  {.importcpp: "setClipPlane".}
    ## Defines the plane as [ a b c d ].

proc setClipPlane*(this: var ClipPlane, plane: Vec4d)  {.importcpp: "setClipPlane".}
    ## Set the clip plane with the given Vec4.

proc getClipPlane*(this: ClipPlane): Vec4d  {.importcpp: "getClipPlane".}
    ## Gets the clip plane as a Vec4d.

proc setClipPlaneNum*(this: var ClipPlane, num: cuint)  {.importcpp: "setClipPlaneNum".}
    ## Sets the clip plane number.

proc getClipPlaneNum*(this: ClipPlane): cuint  {.importcpp: "getClipPlaneNum".}
    ## Gets the clip plane number.

proc apply*(this: ClipPlane, state: State)  {.importcpp: "apply".}
    ## Applies the clip plane's state to the OpenGL state machine.

{.pop.}  # header: "ClipPlane"
