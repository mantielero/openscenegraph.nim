import CopyOp # Provides CopyOp
import Object # Provides Object
import Vec4 # Provides Vec4
import Shape # Provides Shape, TessellationHints


{.push header: "ShapeDrawable".}


# Constructors and methods
proc constructShapeDrawable*(): ShapeDrawable {.constructor,importcpp: "ShapeDrawable".}

proc constructShapeDrawable*(shape: ptr Shape , hints: ptr Tessellationhints  = 0): ShapeDrawable {.constructor,importcpp: "ShapeDrawable(@)".}

proc constructShapeDrawable*(pg: Shapedrawable, copyop: Copyop = SHALLOW_COPY): ShapeDrawable {.constructor,importcpp: "ShapeDrawable(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc shapeDrawable*[T](this: var ShapeDrawable, shape: ref_ptr[T], hints: ptr Tessellationhints )  {.importcpp: "ShapeDrawable".}

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

{.pop.} # header: "ShapeDrawable
