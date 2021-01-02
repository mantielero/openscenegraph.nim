import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: State  was providing: osg::State
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: Array  was providing: osg::ShortArray, osg::UIntArray, osg::DoubleArray, osg::Vec4ubArray, osg::UShortArray, osg::IntArray, osg::Vec4dArray, osg::ByteArray, osg::Vec2Array, osg::UByteArray, osg::Array, osg::Vec4Array, osg::FloatArray, osg::Vec3dArray, osg::Vec2dArray, osg::Vec3Array
  # File: Shape  was providing: osg::Shape
  # File: PrimitiveSet  was providing: osg::PrimitiveIndexFunctor, osg::PrimitiveFunctor
  # File: Node  was providing: osg::Node, osg::MatrixList
  # File: buffered_value  was providing: osg::buffered_value
  # File: Callback  was providing: osg::DrawableEventCallback, osg::DrawableCullCallback, osg::DrawableUpdateCallback
  # File: Vec2  was providing: osg::Vec2
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: VertexArrayState  was providing: osg::VertexArrayStateList, osg::VertexArrayState
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
  # File: Vec4ub  was providing: osg::Vec4ub
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  AttributeTypes* {.size:sizeof(cuint),header: "Drawable", importcpp: "osg::Drawable::AttributeTypes", pure.} = enum
    VERTICES = 0,
    WEIGHTS = 1,
    NORMALS = 2,
    COLORS = 3,
    SECONDARY_COLORS = 4,
    FOG_COORDS = 5,
    ATTRIBUTE_6 = 6,
    ATTRIBUTE_7 = 7,
    TEXTURE_COORDS = 8,
    TEXTURE_COORDS_1 = 9,
    TEXTURE_COORDS_2 = 10,
    TEXTURE_COORDS_3 = 11,
    TEXTURE_COORDS_4 = 12,
    TEXTURE_COORDS_5 = 13,
    TEXTURE_COORDS_6 = 14,
    TEXTURE_COORDS_7 = 15

  AttributeFunctor* {.header: "Drawable", importcpp: "osg::Drawable::AttributeFunctor", byref.} = object

  ConstAttributeFunctor* {.header: "Drawable", importcpp: "osg::Drawable::ConstAttributeFunctor", byref.} = object

  AttributeFunctorArrayVisitor* {.header: "Drawable", importcpp: "osg::AttributeFunctorArrayVisitor", byref.} = object #of class osg::ArrayVisitor

  ConstAttributeFunctorArrayVisitor* {.header: "Drawable", importcpp: "osg::ConstAttributeFunctorArrayVisitor", byref.} = object #of class osg::ConstArrayVisitor

  UpdateCallback* {.header: "Drawable", importcpp: "osg::Drawable::UpdateCallback".} = DrawableUpdateCallback
  EventCallback* {.header: "Drawable", importcpp: "osg::Drawable::EventCallback".} = DrawableEventCallback
  CullCallback* {.header: "Drawable", importcpp: "osg::Drawable::CullCallback".} = DrawableCullCallback
  AttributeType* {.header: "Drawable", importcpp: "osg::Drawable::AttributeType".} = cuint
  GLObjectList* {.header: "Drawable", importcpp: "osg::Drawable::GLObjectList".} = buffered_value[GLuint]


{.push header: "Drawable".}

proc constructDrawable*(): Drawable {.constructor,importcpp: "osg::Drawable::Drawable".}

proc constructDrawable*(drawable: Drawable, copyop: CopyOp = SHALLOW_COPY): Drawable {.constructor,importcpp: "osg::Drawable::Drawable(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructComputeBoundingBoxCallback*(): ComputeBoundingBoxCallback {.constructor,importcpp: "osg::Drawable::ComputeBoundingBoxCallback::ComputeBoundingBoxCallback".}

proc constructComputeBoundingBoxCallback*(org: ComputeBoundingBoxCallback, copyop: CopyOp): ComputeBoundingBoxCallback {.constructor,importcpp: "osg::Drawable::ComputeBoundingBoxCallback::ComputeBoundingBoxCallback(@)".}

proc constructCreateVertexArrayStateCallback*(): CreateVertexArrayStateCallback {.constructor,importcpp: "osg::Drawable::CreateVertexArrayStateCallback::CreateVertexArrayStateCallback".}

proc constructCreateVertexArrayStateCallback*(rhs: CreateVertexArrayStateCallback, copyop: CopyOp): CreateVertexArrayStateCallback {.constructor,importcpp: "osg::Drawable::CreateVertexArrayStateCallback::CreateVertexArrayStateCallback(@)".}

proc constructDrawCallback*(): DrawCallback {.constructor,importcpp: "osg::Drawable::DrawCallback::DrawCallback".}

proc constructDrawCallback*(org: DrawCallback, copyop: CopyOp): DrawCallback {.constructor,importcpp: "osg::Drawable::DrawCallback::DrawCallback(@)".}

proc constructAttributeFunctorArrayVisitor*(af: AttributeFunctor): AttributeFunctorArrayVisitor {.constructor,importcpp: "osg::AttributeFunctorArrayVisitor::AttributeFunctorArrayVisitor(@)".}

proc constructConstAttributeFunctorArrayVisitor*(af: ConstAttributeFunctor): ConstAttributeFunctorArrayVisitor {.constructor,importcpp: "osg::ConstAttributeFunctorArrayVisitor::ConstAttributeFunctorArrayVisitor(@)".}

proc cloneType*(this: Drawable): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Drawable, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Drawable, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Drawable): cstring  {.importcpp: "className".}

proc libraryName*(this: Drawable): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Drawable, nv: NodeVisitor)  {.importcpp: "accept".}

proc asDrawable*(this: var Drawable): ptr Drawable   {.importcpp: "asDrawable".}
    ## Convert 'this' into a Drawable pointer if Object is a Drawable,
    ## otherwise return 0. Equivalent to dynamic_cast<Drawable*>(this).

proc asDrawable*(this: Drawable): ptr Drawable   {.importcpp: "asDrawable".}
    ## convert 'const this' into a const Drawable pointer if Object is a
    ## Drawable, otherwise return 0. Equivalent to dynamic_cast<const
    ## Drawable*>(this).

proc computeDataVariance*(this: var Drawable)  {.importcpp: "computeDataVariance".}
    ## Compute the DataVariance based on an assessment of callback etc.

proc getWorldMatrices*(this: Drawable, haltTraversalAtNode: ptr Node  = 0): MatrixList  {.importcpp: "getWorldMatrices".}
    ## Get the list of matrices that transform this node from local
    ## coordinates to world coordinates. The optional Node*
    ## haltTraversalAtNode allows the user to prevent traversal beyond a
    ## specified node.

proc setInitialBound*(this: var Drawable, bbox: BoundingBox)  {.importcpp: "setInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc getInitialBound*(this: Drawable): BoundingBox  {.importcpp: "getInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc getBound*(this: Drawable): BoundingSphere  {.importcpp: "getBound".}

proc getBoundingBox*(this: Drawable): BoundingBox  {.importcpp: "getBoundingBox".}
    ## Get BoundingBox of Drawable. If the BoundingBox is not up to date then
    ## its updated via an internal call to computeBond().

proc computeBound*(this: Drawable): BoundingSphere  {.importcpp: "computeBound".}
    ## Compute the bounding sphere around Drawables's geometry.

proc computeBoundingBox*(this: Drawable): BoundingBox  {.importcpp: "computeBoundingBox".}
    ## Compute the bounding box around Drawables's geometry.

proc cloneType*(this: ComputeBoundingBoxCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ComputeBoundingBoxCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ComputeBoundingBoxCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ComputeBoundingBoxCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ComputeBoundingBoxCallback): cstring  {.importcpp: "className".}

proc computeBound*(this: ComputeBoundingBoxCallback, a00: Drawable): BoundingBox  {.importcpp: "computeBound".}

proc setComputeBoundingBoxCallback*(this: var Drawable, callback: ptr ComputeBoundingBoxCallback )  {.importcpp: "setComputeBoundingBoxCallback".}
    ## Set the compute bound callback to override the default computeBound.

proc getComputeBoundingBoxCallback*(this: var Drawable): ptr ComputeBoundingBoxCallback   {.importcpp: "getComputeBoundingBoxCallback".}
    ## Get the compute bound callback.

proc getComputeBoundingBoxCallback*(this: Drawable): ptr ComputeBoundingBoxCallback   {.importcpp: "getComputeBoundingBoxCallback".}
    ## Get the const compute bound callback.

proc setShape*(this: var Drawable, shape: ptr Shape )  {.importcpp: "setShape".}
    ## Set the Shape of the Drawable. The shape can be used to speed up
    ## collision detection or as a guide for procedural geometry generation.

proc getShape*(this: var Drawable): ptr Shape   {.importcpp: "getShape".}
    ## Get the Shape of the Drawable.

proc getShape*(this: Drawable): ptr Shape   {.importcpp: "getShape".}
    ## Get the const Shape of the const Drawable.

proc setSupportsDisplayList*(this: var Drawable, flag: bool)  {.importcpp: "setSupportsDisplayList".}
    ## Set the drawable so that it can or cannot be used in conjunction with
    ## OpenGL display lists. When set to true, calls to
    ## Drawable::setUseDisplayList, whereas when set to false, no display
    ## lists can be created and calls to setUseDisplayList are ignored, and a
    ## warning is produced. The latter is typically used to guard against the
    ## switching on of display lists on objects with dynamic internal data
    ## such as continuous Level of Detail algorithms.

proc getSupportsDisplayList*(this: Drawable): bool  {.importcpp: "getSupportsDisplayList".}
    ## Get whether display lists are supported for this drawable instance.

proc setUseDisplayList*(this: var Drawable, flag: bool)  {.importcpp: "setUseDisplayList".}
    ## When set to true, force the draw method to use OpenGL Display List for
    ## rendering. If false, rendering directly. If the display list has not
    ## been compiled already, the next call to draw will automatically create
    ## the display list.

proc getUseDisplayList*(this: Drawable): bool  {.importcpp: "getUseDisplayList".}
    ## Return whether OpenGL display lists are being used for rendering.

proc getDisplayList*(this: Drawable, contextID: cuint): GLuint  {.importcpp: "getDisplayList".}
    ## Return OpenGL display list for specified contextID.

proc setUseVertexBufferObjects*(this: var Drawable, flag: bool)  {.importcpp: "setUseVertexBufferObjects".}
    ## When set to true, ignore the setUseDisplayList() settings, and hints
    ## to the drawImplementation method to use OpenGL vertex buffer objects
    ## for rendering.

proc getUseVertexBufferObjects*(this: Drawable): bool  {.importcpp: "getUseVertexBufferObjects".}
    ## Return whether OpenGL vertex buffer objects should be used when
    ## supported by OpenGL driver.

proc setUseVertexArrayObject*(this: var Drawable, flag: bool)  {.importcpp: "setUseVertexArrayObject".}
    ## Set whether to use a local VertexArrayObject for this Drawable.

proc getUseVertexArrayObject*(this: Drawable): bool  {.importcpp: "getUseVertexArrayObject".}
    ## Return whether to use a local VertexArrayObject for this Drawable.

proc dirtyDisplayList*(this: var Drawable)  {.importcpp: "dirtyDisplayList".}
    ## Deprecated, use dirtyGLObjects() instead.

proc dirtyGLObjects*(this: var Drawable)  {.importcpp: "dirtyGLObjects".}
    ## Force a recompile on next draw() of any OpenGL objects associated with
    ## this geoset.

proc getGLObjectSizeHint*(this: Drawable): cuint  {.importcpp: "getGLObjectSizeHint".}
    ## Return the estimated size of GLObjects (display lists/vertex buffer
    ## objects) that are associated with this drawable. This size is used a
    ## hint for reuse of deleted display lists/vertex buffer objects.

proc draw*(this: Drawable, renderInfo: RenderInfo)  {.importcpp: "draw".}

proc drawInner*(this: Drawable, renderInfo: RenderInfo)  {.importcpp: "drawInner".}

proc compileGLObjects*(this: Drawable, renderInfo: RenderInfo)  {.importcpp: "compileGLObjects".}
    ## Immediately compile this Drawable into an OpenGL Display
    ## List/VertexBufferObjects.

proc cloneType*(this: CreateVertexArrayStateCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CreateVertexArrayStateCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CreateVertexArrayStateCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CreateVertexArrayStateCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: CreateVertexArrayStateCallback): cstring  {.importcpp: "className".}

proc createVertexArrayStateImplementation*(this: CreateVertexArrayStateCallback, renderInfo: RenderInfo, drawable: ptr Drawable ): ptr VertexArrayState   {.importcpp: "createVertexArrayStateImplementation".}
    ## do customized createVertexArrayState .

proc setCreateVertexArrayStateCallback*(this: var Drawable, cb: ptr CreateVertexArrayStateCallback )  {.importcpp: "setCreateVertexArrayStateCallback".}
    ## Set the callback to override the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc getCreateVertexArrayStateCallback*(this: var Drawable): ptr CreateVertexArrayStateCallback   {.importcpp: "getCreateVertexArrayStateCallback".}
    ## Get the callback that overrides the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc getCreateVertexArrayStateCallback*(this: Drawable): ptr CreateVertexArrayStateCallback   {.importcpp: "getCreateVertexArrayStateCallback".}
    ## Get the const callback that overrides the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc createVertexArrayState*(this: Drawable, renderInfo: RenderInfo): ptr VertexArrayState   {.importcpp: "createVertexArrayState".}
    ## Create the VertexArrayState object used to track vertex array and
    ## vertex array object state. This method will be called automatically
    ## during rendering setup so users should not call this themselves.

proc createVertexArrayStateImplementation*(this: Drawable, renderInfo: RenderInfo): ptr VertexArrayState   {.importcpp: "createVertexArrayStateImplementation".}
    ## Implementation of Create the VertexArrayState object.

proc setVertexArrayStateList*(this: var Drawable, vasl: VertexArrayStateList)  {.importcpp: "setVertexArrayStateList".}

proc getVertexArrayStateList*(this: var Drawable): VertexArrayStateList  {.importcpp: "getVertexArrayStateList".}

proc getVertexArrayStateList*(this: Drawable): VertexArrayStateList  {.importcpp: "getVertexArrayStateList".}

proc setThreadSafeRefUnref*(this: var Drawable, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc resizeGLObjectBuffers*(this: var Drawable, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Drawable, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases OpenGL objects for the
    ## specified graphics context. Otherwise, releases OpenGL objects for all
    ## graphics contexts.

proc cloneType*(this: DrawCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawCallback): cstring  {.importcpp: "className".}

proc drawImplementation*(this: DrawCallback, a00: RenderInfo, a01: ptr Drawable )  {.importcpp: "drawImplementation".}
    ## do customized draw code.

proc setDrawCallback*(this: var Drawable, dc: ptr DrawCallback )  {.importcpp: "setDrawCallback".}
    ## Set the DrawCallback which allows users to attach customize the
    ## drawing of existing Drawable object.

proc getDrawCallback*(this: var Drawable): ptr DrawCallback   {.importcpp: "getDrawCallback".}
    ## Get the non const DrawCallback.

proc getDrawCallback*(this: Drawable): ptr DrawCallback   {.importcpp: "getDrawCallback".}
    ## Get the const DrawCallback.

proc drawImplementation*(this: Drawable, a00: RenderInfo)  {.importcpp: "drawImplementation".}
    ## drawImplementation(RenderInfo&) is a pure virtual method for the
    ## actual implementation of OpenGL drawing calls, such as vertex arrays
    ## and primitives, that must be implemented in concrete subclasses of the
    ## Drawable base class, examples include osg::Geometry and
    ## osg::ShapeDrawable. drawImplementation(RenderInfo&) is called from the
    ## draw(RenderInfo&) method, with the draw method handling management of
    ## OpenGL display lists, and drawImplementation(RenderInfo&) handling the
    ## actual drawing itself. renderInfo : The osg::RenderInfo object that
    ## encapsulates the current rendering information including the
    ## osg::State OpenGL state for the current graphics context.

proc generateDisplayList*(this: var Drawable, contextID: cuint, sizeHint: cuint = 0): GLuint  {.importcpp: "generateDisplayList".}
    ## Return a OpenGL display list handle a newly generated or reused from
    ## display list cache.

proc deleteDisplayList*(this: var Drawable, contextID: cuint, globj: GLuint, sizeHint: cuint = 0)  {.importcpp: "deleteDisplayList".}
    ## Use deleteDisplayList instead of glDeleteList to allow OpenGL display
    ## list to be cached until they can be deleted by the OpenGL context in
    ## which they were created, specified by contextID.

proc setMinimumNumberOfDisplayListsToRetainInCache*(this: var Drawable, minimum: cuint)  {.importcpp: "setMinimumNumberOfDisplayListsToRetainInCache".}
    ## Set the minimum number of display lists to retain in the deleted
    ## display list cache.

proc getMinimumNumberOfDisplayListsToRetainInCache*(this: var Drawable): cuint  {.importcpp: "getMinimumNumberOfDisplayListsToRetainInCache".}
    ## Get the minimum number of display lists to retain in the deleted
    ## display list cache.

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLbyte)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLshort)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLint)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLubyte)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLushort)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLuint)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr float)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec2 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec3 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4ub )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr double)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec2d )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec3d )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4d )  {.importcpp: "apply".}

proc supports*(this: Drawable, a00: AttributeFunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(AttributeFunctor&).

proc accept*(this: var Drawable, a00: AttributeFunctor)  {.importcpp: "accept".}
    ## accept an AttributeFunctor and call its methods to tell it about the
    ## internal attributes that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls.

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLshort)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLint)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLushort)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr GLuint)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr float)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec2 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec3 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4ub )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr double)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec2d )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec3d )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, a00: AttributeType, a01: cuint, a02: ptr Vec4d )  {.importcpp: "apply".}

proc supports*(this: Drawable, a00: ConstAttributeFunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(ConstAttributeFunctor&).

proc accept*(this: Drawable, a00: ConstAttributeFunctor)  {.importcpp: "accept".}
    ## Accept an AttributeFunctor and call its methods to tell it about the
    ## internal attributes that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls.

proc supports*(this: Drawable, a00: PrimitiveFunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(PrimitiveFunctor&).

proc accept*(this: Drawable, a00: PrimitiveFunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveFunctor and call its methods to tell it about the
    ## internal primitives that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls. Note, PrimitiveFunctor only provides const access of
    ## the primitives, as primitives may be procedurally generated so one
    ## cannot modify it.

proc supports*(this: Drawable, a00: PrimitiveIndexFunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(PrimitiveIndexFunctor&).

proc accept*(this: Drawable, a00: PrimitiveIndexFunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveIndexFunctor and call its methods to tell it about
    ## the internal primitives that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls. Note, PrimitiveIndexFunctor only provide const access
    ## of the primitives, as primitives may be procedurally generated so one
    ## cannot modify it.

proc `=`*(this: var Drawable, a00: Drawable): Drawable  {.importcpp: "# = #".}

proc setBound*(this: Drawable, bb: BoundingBox)  {.importcpp: "setBound".}
    ## set the bounding box .

proc draw*(this: Drawable, renderInfo: RenderInfo)  {.importcpp: "draw".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: ByteArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: ShortArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: IntArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: UByteArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: UShortArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: UIntArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4ubArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: FloatArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec2Array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec3Array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4Array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: DoubleArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec2dArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec3dArray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4dArray)  {.importcpp: "apply".}

proc applyArray*(this: var AttributeFunctorArrayVisitor, `type`: AttributeType, array: ptr Array )  {.importcpp: "applyArray".}

proc `=`*(this: var AttributeFunctorArrayVisitor, a00: AttributeFunctorArrayVisitor): AttributeFunctorArrayVisitor  {.importcpp: "# = #".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: ByteArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: ShortArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: IntArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: UByteArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: UShortArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: UIntArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4ubArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: FloatArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec2Array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec3Array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4Array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: DoubleArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec2dArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec3dArray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4dArray)  {.importcpp: "apply".}

proc applyArray*(this: var ConstAttributeFunctorArrayVisitor, `type`: AttributeType, array: ptr Array )  {.importcpp: "applyArray".}

proc `=`*(this: var ConstAttributeFunctorArrayVisitor, a00: ConstAttributeFunctorArrayVisitor): ConstAttributeFunctorArrayVisitor  {.importcpp: "# = #".}

{.pop.}  # header: "Drawable"
