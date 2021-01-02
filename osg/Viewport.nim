import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
{.push header: "Viewport".}

proc constructViewport*(): Viewport {.constructor,importcpp: "osg::Viewport::Viewport".}

proc constructViewport*(x: value_type, y: value_type, width: value_type, height: value_type): Viewport {.constructor,importcpp: "osg::Viewport::Viewport(@)".}

proc constructViewport*(vp: Viewport, copyop: CopyOp = SHALLOW_COPY): Viewport {.constructor,importcpp: "osg::Viewport::Viewport(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Viewport): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Viewport, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Viewport, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Viewport): cstring  {.importcpp: "libraryName".}

proc className*(this: Viewport): cstring  {.importcpp: "className".}

proc getType*(this: Viewport): Type  {.importcpp: "getType".}

proc compare*(this: Viewport, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `=`*(this: var Viewport, rhs: Viewport): Viewport  {.importcpp: "# = #".}

proc setViewport*(this: var Viewport, x: value_type, y: value_type, width: value_type, height: value_type)  {.importcpp: "setViewport".}

proc x*(this: var Viewport): value_type  {.importcpp: "x".}

proc x*(this: Viewport): value_type  {.importcpp: "x".}

proc y*(this: var Viewport): value_type  {.importcpp: "y".}

proc y*(this: Viewport): value_type  {.importcpp: "y".}

proc width*(this: var Viewport): value_type  {.importcpp: "width".}

proc width*(this: Viewport): value_type  {.importcpp: "width".}

proc height*(this: var Viewport): value_type  {.importcpp: "height".}

proc height*(this: Viewport): value_type  {.importcpp: "height".}

proc valid*(this: Viewport): bool  {.importcpp: "valid".}

proc aspectRatio*(this: Viewport): cdouble  {.importcpp: "aspectRatio".}
    ## Return the aspectRatio of the viewport, which is equal to
    ## width/height. If height is zero, the potential division by zero is
    ## avoided by simply returning 1.0f.

proc computeWindowMatrix*(this: Viewport): Matrix  {.importcpp: "computeWindowMatrix".}
    ## Compute the Window Matrix which takes projected coords into Window
    ## coordinates. To convert local coordinates into window coordinates use
    ## v_window = v_local * MVPW matrix, where the MVPW matrix is
    ## ModelViewMatrix * ProjectionMatrix * WindowMatrix, the latter supplied
    ## by Viewport::computeWindowMatrix(), the ModelView and Projection
    ## Matrix can either be sourced from the current osg::State object, via
    ## osgUtil::SceneView or CullVisitor.

proc apply*(this: Viewport, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Viewport"
