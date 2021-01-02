import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: Drawable  was providing: osg::Drawable
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "Geode".}

proc constructGeode*(): Geode {.constructor,importcpp: "osg::Geode::Geode".}

proc constructGeode*(a00: Geode, copyop: CopyOp = SHALLOW_COPY): Geode {.constructor,importcpp: "osg::Geode::Geode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Geode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Geode, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Geode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Geode): cstring  {.importcpp: "className".}

proc libraryName*(this: Geode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Geode, nv: NodeVisitor)  {.importcpp: "accept".}

proc asGeode*(this: var Geode): ptr Geode   {.importcpp: "asGeode".}

proc asGeode*(this: Geode): ptr Geode   {.importcpp: "asGeode".}

proc addDrawable*(this: var Geode, drawable: ptr Drawable ): bool  {.importcpp: "addDrawable".}
    ## Add a Drawable to the Geode. If drawable is not NULL and is not
    ## contained in the Geode then increment its reference count, add it to
    ## the drawables list and dirty the bounding sphere to force it to be
    ## recomputed on the next call to getBound().

proc removeDrawable*(this: var Geode, drawable: ptr Drawable ): bool  {.importcpp: "removeDrawable".}
    ## Remove a Drawable from the Geode. Equivalent to
    ## removeDrawable(getDrawableIndex(drawable).

proc removeDrawables*(this: var Geode, i: cuint, numDrawablesToRemove: cuint = 1): bool  {.importcpp: "removeDrawables".}
    ## Remove Drawable(s) from the specified position in Geode's drawable
    ## list.

proc replaceDrawable*(this: var Geode, origDraw: ptr Drawable , newDraw: ptr Drawable ): bool  {.importcpp: "replaceDrawable".}
    ## Replace specified Drawable with another Drawable. Equivalent to
    ## setDrawable(getDrawableIndex(origDraw),newDraw), see docs for
    ## setDrawable() for further details on implementation.

proc setDrawable*(this: var Geode, i: cuint, drawable: ptr Drawable ): bool  {.importcpp: "setDrawable".}
    ## Set Drawable at position i. Decrement the reference count origGSet and
    ## increments the reference count of newGset, and dirty the bounding
    ## sphere to force it to recompute on next getBound() and returns true.
    ## If origDrawable is not found then return false and do not add newGset.
    ## If newGset is NULL then return false and do not remove origGset.

proc getNumDrawables*(this: Geode): cuint  {.importcpp: "getNumDrawables".}
    ## Return the number of Drawables currently attached to the Geode.

proc getDrawable*(this: var Geode, i: cuint): ptr Drawable   {.importcpp: "getDrawable".}
    ## Return the Drawable at position i.

proc getDrawable*(this: Geode, i: cuint): ptr Drawable   {.importcpp: "getDrawable".}
    ## Return the Drawable at position i.

proc containsDrawable*(this: Geode, drawable: ptr Drawable ): bool  {.importcpp: "containsDrawable".}
    ## Return true if a given Drawable is contained within Geode.

proc getDrawableIndex*(this: Geode, drawable: ptr Drawable ): cuint  {.importcpp: "getDrawableIndex".}
    ## Get the index number of drawable.

proc compileDrawables*(this: var Geode, renderInfo: RenderInfo)  {.importcpp: "compileDrawables".}
    ## Compile OpenGL Display List for each drawable.

proc getBoundingBox*(this: Geode): BoundingBox  {.importcpp: "getBoundingBox".}
    ## Return the Geode's bounding box, which is the union of all the
    ## bounding boxes of the geode's drawables.

proc computeBound*(this: Geode): BoundingSphere  {.importcpp: "computeBound".}

{.pop.}  # header: "Geode"
