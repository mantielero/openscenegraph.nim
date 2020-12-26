import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import Shape  # provides: osg::TessellationHints, osg::Shape
import CopyOp  # provides: osg::CopyOp
type
  ShapeDrawable* {.header: "ShapeDrawable", importcpp: "osg::ShapeDrawable", byref.} = object #of osg::Geometry
    ## Allow the use of Shapes as Drawables, so that they can be rendered
    ## with reduced effort. The implementation of ShapeDrawable is not geared
    ## to efficiency; it's better to think of it as a convenience to render
    ## Shapes easily (perhaps for test or debugging purposes) than as the
    ## right way to render basic shapes in some efficiency-critical section
    ## of code.



{.push header: "ShapeDrawable".}

proc constructShapeDrawable*(): ShapeDrawable {.constructor,importcpp: "osg::ShapeDrawable::ShapeDrawable".}

proc constructShapeDrawable*(shape: ptr Shape , hints: ptr Tessellationhints  = 0): ShapeDrawable {.constructor,importcpp: "osg::ShapeDrawable::ShapeDrawable(@)".}

proc constructShapeDrawable*(pg: Shapedrawable, copyop: Copyop = SHALLOW_COPY): ShapeDrawable {.constructor,importcpp: "osg::ShapeDrawable::ShapeDrawable(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ShapeDrawable): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShapeDrawable, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShapeDrawable, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShapeDrawable): cstring  {.importcpp: "libraryName".}

proc className*(this: ShapeDrawable): cstring  {.importcpp: "className".}

proc setShape*(this: var ShapeDrawable, shape: ptr Shape )  {.importcpp: "setShape".}

proc setColor*(this: var ShapeDrawable, color: Vec4)  {.importcpp: "setColor".}
    ## Set the color of the shape.

proc getColor*(this: ShapeDrawable): Vec4  {.importcpp: "getColor".}
    ## Get the color of the shape.

proc setTessellationHints*(this: var ShapeDrawable, hints: ptr Tessellationhints )  {.importcpp: "setTessellationHints".}

proc getTessellationHints*(this: var ShapeDrawable): ptr Tessellationhints   {.importcpp: "getTessellationHints".}

proc getTessellationHints*(this: ShapeDrawable): ptr Tessellationhints   {.importcpp: "getTessellationHints".}

proc build*(this: var ShapeDrawable)  {.importcpp: "build".}
    ## method to invoke to rebuild the geometry that renders the shape.

proc `=`*(this: var ShapeDrawable, Shapedrawable): Shapedrawable  {.importcpp: "# = #".}

{.pop.}  # header: "ShapeDrawable"
