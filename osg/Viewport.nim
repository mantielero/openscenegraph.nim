import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
type
  Value_type* {.header: "Viewport", importcpp: "osg::Viewport::value_type".} = cdouble


{.push header: "Viewport".}

proc constructViewport*(): Viewport {.constructor,importcpp: "osg::Viewport::Viewport".}

proc constructViewport*(x: Value_type, y: Value_type, width: Value_type, height: Value_type): Viewport {.constructor,importcpp: "osg::Viewport::Viewport(@)".}

proc constructViewport*(vp: Viewport, copyop: Copyop = SHALLOW_COPY): Viewport {.constructor,importcpp: "osg::Viewport::Viewport(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Viewport): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Viewport, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Viewport, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Viewport): cstring  {.importcpp: "libraryName".}

proc className*(this: Viewport): cstring  {.importcpp: "className".}

proc getType*(this: Viewport): Type  {.importcpp: "getType".}

proc compare*(this: Viewport, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `=`*(this: var Viewport, rhs: Viewport): Viewport  {.importcpp: "# = #".}

proc setViewport*(this: var Viewport, x: Value_type, y: Value_type, width: Value_type, height: Value_type)  {.importcpp: "setViewport".}

proc x*(this: var Viewport): Value_type  {.importcpp: "x".}

proc x*(this: Viewport): Value_type  {.importcpp: "x".}

proc y*(this: var Viewport): Value_type  {.importcpp: "y".}

proc y*(this: Viewport): Value_type  {.importcpp: "y".}

proc width*(this: var Viewport): Value_type  {.importcpp: "width".}

proc width*(this: Viewport): Value_type  {.importcpp: "width".}

proc height*(this: var Viewport): Value_type  {.importcpp: "height".}

proc height*(this: Viewport): Value_type  {.importcpp: "height".}

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
