import Vec3  # provides: osg::Vec3
import State  # provides: osg::State
import BoundingSphere  # provides: osg::BoundingSphere
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import Array  # provides: osg::Vec2Array, osg::UIntArray, osg::ShortArray, osg::Vec2dArray, osg::IntArray, osg::Array, osg::Vec3dArray, osg::ByteArray, osg::Vec4Array, osg::Vec3Array, osg::UByteArray, osg::FloatArray, osg::Vec4dArray, osg::DoubleArray, osg::Vec4ubArray, osg::UShortArray
import Shape  # provides: osg::Shape
import PrimitiveSet  # provides: osg::PrimitiveIndexFunctor, osg::PrimitiveFunctor
import Node  # provides: osg::Node, osg::MatrixList
import Callback  # provides: osg::DrawableCullCallback, osg::DrawableUpdateCallback, osg::DrawableEventCallback
import Vec2  # provides: osg::Vec2
import BoundingBox  # provides: osg::BoundingBox
import CopyOp  # provides: osg::CopyOp
import VertexArrayState  # provides: osg::VertexArrayState, osg::VertexArrayStateList
import RenderInfo  # provides: osg::RenderInfo
import Vec4d  # provides: osg::Vec4d
import Vec3d  # provides: osg::Vec3d
import Vec2d  # provides: osg::Vec2d
import Vec4ub  # provides: osg::Vec4ub
import NodeVisitor  # provides: osg::NodeVisitor
type
  AttributeTypes* {.size:sizeof(cuint),header: "Drawable", importcpp: "osg::Drawable::AttributeTypes".} = enum
    VERTICES = 0,
    WEIGHTS = 1,
    NORMALS = 2,
    COLORS = 3,
    SECONDARY_COLORS = 4,
    FOG_COORDS = 5,
    ATTRIBUTE_6 = 6,
    ATTRIBUTE_7 = 7,
    TEXTURE_COORDS = 8,
    TEXTURE_COORDS_0 = 8,
    TEXTURE_COORDS = 8,
    TEXTURE_COORDS_0 = 8,
    TEXTURE_COORDS_1 = 9,
    TEXTURE_COORDS_2 = 10,
    TEXTURE_COORDS_3 = 11,
    TEXTURE_COORDS_4 = 12,
    TEXTURE_COORDS_5 = 13,
    TEXTURE_COORDS_6 = 14,
    TEXTURE_COORDS_7 = 15

  UpdateCallback* {.header: "Drawable", importcpp: "osg::Drawable::UpdateCallback".} = Drawableupdatecallback
  EventCallback* {.header: "Drawable", importcpp: "osg::Drawable::EventCallback".} = Drawableeventcallback
  CullCallback* {.header: "Drawable", importcpp: "osg::Drawable::CullCallback".} = Drawablecullcallback
  AttributeType* {.header: "Drawable", importcpp: "osg::Drawable::AttributeType".} = cuint
  GLObjectList* {.header: "Drawable", importcpp: "osg::Drawable::GLObjectList".} = Buffered_value[GLuint]
  AttributeFunctor* {.header: "Drawable", importcpp: "osg::Drawable::AttributeFunctor", byref.} = object

  ConstAttributeFunctor* {.header: "Drawable", importcpp: "osg::Drawable::ConstAttributeFunctor", byref.} = object

  AttributeFunctorArrayVisitor* {.header: "Drawable", importcpp: "osg::AttributeFunctorArrayVisitor", byref.} = object #of class osg::ArrayVisitor

  ConstAttributeFunctorArrayVisitor* {.header: "Drawable", importcpp: "osg::ConstAttributeFunctorArrayVisitor", byref.} = object #of class osg::ConstArrayVisitor



{.push header: "Drawable".}

proc constructDrawable*(): Drawable {.constructor,importcpp: "osg::Drawable::Drawable".}

proc constructDrawable*(drawable: Drawable, copyop: Copyop = SHALLOW_COPY): Drawable {.constructor,importcpp: "osg::Drawable::Drawable(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructComputeBoundingBoxCallback*(): ComputeBoundingBoxCallback {.constructor,importcpp: "osg::Drawable::ComputeBoundingBoxCallback::ComputeBoundingBoxCallback".}

proc constructComputeBoundingBoxCallback*(org: Computeboundingboxcallback, copyop: Copyop): ComputeBoundingBoxCallback {.constructor,importcpp: "osg::Drawable::ComputeBoundingBoxCallback::ComputeBoundingBoxCallback(@)".}

proc constructCreateVertexArrayStateCallback*(): CreateVertexArrayStateCallback {.constructor,importcpp: "osg::Drawable::CreateVertexArrayStateCallback::CreateVertexArrayStateCallback".}

proc constructCreateVertexArrayStateCallback*(rhs: Createvertexarraystatecallback, copyop: Copyop): CreateVertexArrayStateCallback {.constructor,importcpp: "osg::Drawable::CreateVertexArrayStateCallback::CreateVertexArrayStateCallback(@)".}

proc constructDrawCallback*(): DrawCallback {.constructor,importcpp: "osg::Drawable::DrawCallback::DrawCallback".}

proc constructDrawCallback*(org: Drawcallback, copyop: Copyop): DrawCallback {.constructor,importcpp: "osg::Drawable::DrawCallback::DrawCallback(@)".}

proc constructAttributeFunctorArrayVisitor*(af: Attributefunctor): AttributeFunctorArrayVisitor {.constructor,importcpp: "osg::AttributeFunctorArrayVisitor::AttributeFunctorArrayVisitor(@)".}

proc constructConstAttributeFunctorArrayVisitor*(af: Constattributefunctor): ConstAttributeFunctorArrayVisitor {.constructor,importcpp: "osg::ConstAttributeFunctorArrayVisitor::ConstAttributeFunctorArrayVisitor(@)".}

proc cloneType*(this: Drawable): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Drawable, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Drawable, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Drawable): cstring  {.importcpp: "className".}

proc libraryName*(this: Drawable): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Drawable, nv: Nodevisitor)  {.importcpp: "accept".}

proc asDrawable*(this: var Drawable): ptr Drawable   {.importcpp: "asDrawable".}
    ## Convert 'this' into a Drawable pointer if Object is a Drawable,
    ## otherwise return 0. Equivalent to dynamic_cast<Drawable*>(this).

proc asDrawable*(this: Drawable): ptr Drawable   {.importcpp: "asDrawable".}
    ## convert 'const this' into a const Drawable pointer if Object is a
    ## Drawable, otherwise return 0. Equivalent to dynamic_cast<const
    ## Drawable*>(this).

proc computeDataVariance*(this: var Drawable)  {.importcpp: "computeDataVariance".}
    ## Compute the DataVariance based on an assessment of callback etc.

proc getWorldMatrices*(this: Drawable, haltTraversalAtNode: ptr Node  = 0): Matrixlist  {.importcpp: "getWorldMatrices".}
    ## Get the list of matrices that transform this node from local
    ## coordinates to world coordinates. The optional Node*
    ## haltTraversalAtNode allows the user to prevent traversal beyond a
    ## specified node.

proc setInitialBound*(this: var Drawable, bbox: Boundingbox)  {.importcpp: "setInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc getInitialBound*(this: Drawable): Boundingbox  {.importcpp: "getInitialBound".}
    ## Set the initial bounding volume to use when computing the overall
    ## bounding volume.

proc getBound*(this: Drawable): Boundingsphere  {.importcpp: "getBound".}

proc getBoundingBox*(this: Drawable): Boundingbox  {.importcpp: "getBoundingBox".}
    ## Get BoundingBox of Drawable. If the BoundingBox is not up to date then
    ## its updated via an internal call to computeBond().

proc computeBound*(this: Drawable): Boundingsphere  {.importcpp: "computeBound".}
    ## Compute the bounding sphere around Drawables's geometry.

proc computeBoundingBox*(this: Drawable): Boundingbox  {.importcpp: "computeBoundingBox".}
    ## Compute the bounding box around Drawables's geometry.

proc cloneType*(this: ComputeBoundingBoxCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ComputeBoundingBoxCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ComputeBoundingBoxCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ComputeBoundingBoxCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ComputeBoundingBoxCallback): cstring  {.importcpp: "className".}

proc computeBound*(this: ComputeBoundingBoxCallback, Drawable): Boundingbox  {.importcpp: "computeBound".}

proc setComputeBoundingBoxCallback*(this: var Drawable, callback: ptr Computeboundingboxcallback )  {.importcpp: "setComputeBoundingBoxCallback".}
    ## Set the compute bound callback to override the default computeBound.

proc getComputeBoundingBoxCallback*(this: var Drawable): ptr Computeboundingboxcallback   {.importcpp: "getComputeBoundingBoxCallback".}
    ## Get the compute bound callback.

proc getComputeBoundingBoxCallback*(this: Drawable): ptr Computeboundingboxcallback   {.importcpp: "getComputeBoundingBoxCallback".}
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

proc draw*(this: Drawable, renderInfo: Renderinfo)  {.importcpp: "draw".}

proc drawInner*(this: Drawable, renderInfo: Renderinfo)  {.importcpp: "drawInner".}

proc compileGLObjects*(this: Drawable, renderInfo: Renderinfo)  {.importcpp: "compileGLObjects".}
    ## Immediately compile this Drawable into an OpenGL Display
    ## List/VertexBufferObjects.

proc cloneType*(this: CreateVertexArrayStateCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CreateVertexArrayStateCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CreateVertexArrayStateCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CreateVertexArrayStateCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: CreateVertexArrayStateCallback): cstring  {.importcpp: "className".}

proc createVertexArrayStateImplementation*(this: CreateVertexArrayStateCallback, renderInfo: Renderinfo, drawable: ptr Drawable ): ptr Vertexarraystate   {.importcpp: "createVertexArrayStateImplementation".}
    ## do customized createVertexArrayState .

proc setCreateVertexArrayStateCallback*(this: var Drawable, cb: ptr Createvertexarraystatecallback )  {.importcpp: "setCreateVertexArrayStateCallback".}
    ## Set the callback to override the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc getCreateVertexArrayStateCallback*(this: var Drawable): ptr Createvertexarraystatecallback   {.importcpp: "getCreateVertexArrayStateCallback".}
    ## Get the callback that overrides the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc getCreateVertexArrayStateCallback*(this: Drawable): ptr Createvertexarraystatecallback   {.importcpp: "getCreateVertexArrayStateCallback".}
    ## Get the const callback that overrides the default
    ## Drawable::createCreateVertexArrayStateImplementation().

proc createVertexArrayState*(this: Drawable, renderInfo: Renderinfo): ptr Vertexarraystate   {.importcpp: "createVertexArrayState".}
    ## Create the VertexArrayState object used to track vertex array and
    ## vertex array object state. This method will be called automatically
    ## during rendering setup so users should not call this themselves.

proc createVertexArrayStateImplementation*(this: Drawable, renderInfo: Renderinfo): ptr Vertexarraystate   {.importcpp: "createVertexArrayStateImplementation".}
    ## Implementation of Create the VertexArrayState object.

proc setVertexArrayStateList*(this: var Drawable, vasl: Vertexarraystatelist)  {.importcpp: "setVertexArrayStateList".}

proc getVertexArrayStateList*(this: var Drawable): Vertexarraystatelist  {.importcpp: "getVertexArrayStateList".}

proc getVertexArrayStateList*(this: Drawable): Vertexarraystatelist  {.importcpp: "getVertexArrayStateList".}

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

proc clone*(this: DrawCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawCallback): cstring  {.importcpp: "className".}

proc drawImplementation*(this: DrawCallback, Renderinfo, ptr Drawable )  {.importcpp: "drawImplementation".}
    ## do customized draw code.

proc setDrawCallback*(this: var Drawable, dc: ptr Drawcallback )  {.importcpp: "setDrawCallback".}
    ## Set the DrawCallback which allows users to attach customize the
    ## drawing of existing Drawable object.

proc getDrawCallback*(this: var Drawable): ptr Drawcallback   {.importcpp: "getDrawCallback".}
    ## Get the non const DrawCallback.

proc getDrawCallback*(this: Drawable): ptr Drawcallback   {.importcpp: "getDrawCallback".}
    ## Get the const DrawCallback.

proc drawImplementation*(this: Drawable, Renderinfo)  {.importcpp: "drawImplementation".}
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

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLbyte)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLshort)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLint)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLubyte)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLushort)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr GLuint)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr float)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec2 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec3 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec4 )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec4ub )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr double)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec2d )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec3d )  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctor, Attributetype, cuint, ptr Vec4d )  {.importcpp: "apply".}

proc supports*(this: Drawable, Attributefunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(AttributeFunctor&).

proc accept*(this: var Drawable, Attributefunctor)  {.importcpp: "accept".}
    ## accept an AttributeFunctor and call its methods to tell it about the
    ## internal attributes that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls.

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLbyte)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLshort)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLint)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLubyte)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLushort)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr GLuint)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr float)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec2 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec3 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec4 )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec4ub )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr double)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec2d )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec3d )  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctor, Attributetype, cuint, ptr Vec4d )  {.importcpp: "apply".}

proc supports*(this: Drawable, Constattributefunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(ConstAttributeFunctor&).

proc accept*(this: Drawable, Constattributefunctor)  {.importcpp: "accept".}
    ## Accept an AttributeFunctor and call its methods to tell it about the
    ## internal attributes that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls.

proc supports*(this: Drawable, Primitivefunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(PrimitiveFunctor&).

proc accept*(this: Drawable, Primitivefunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveFunctor and call its methods to tell it about the
    ## internal primitives that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls. Note, PrimitiveFunctor only provides const access of
    ## the primitives, as primitives may be procedurally generated so one
    ## cannot modify it.

proc supports*(this: Drawable, Primitiveindexfunctor): bool  {.importcpp: "supports".}
    ## Return true if the Drawable subclass supports
    ## accept(PrimitiveIndexFunctor&).

proc accept*(this: Drawable, Primitiveindexfunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveIndexFunctor and call its methods to tell it about
    ## the internal primitives that this Drawable has. return true if functor
    ## handled by drawable, return false on failure of drawable to generate
    ## functor calls. Note, PrimitiveIndexFunctor only provide const access
    ## of the primitives, as primitives may be procedurally generated so one
    ## cannot modify it.

proc `=`*(this: var Drawable, Drawable): Drawable  {.importcpp: "# = #".}

proc setBound*(this: Drawable, bb: Boundingbox)  {.importcpp: "setBound".}
    ## set the bounding box .

proc draw*(this: Drawable, renderInfo: Renderinfo)  {.importcpp: "draw".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Bytearray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Shortarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Intarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Ubytearray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Ushortarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Uintarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4ubarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Floatarray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec2array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec3array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4array)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Doublearray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec2darray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec3darray)  {.importcpp: "apply".}

proc apply*(this: var AttributeFunctorArrayVisitor, array: Vec4darray)  {.importcpp: "apply".}

proc applyArray*(this: var AttributeFunctorArrayVisitor, `type`: Attributetype, array: ptr Array )  {.importcpp: "applyArray".}

proc `=`*(this: var AttributeFunctorArrayVisitor, Attributefunctorarrayvisitor): Attributefunctorarrayvisitor  {.importcpp: "# = #".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Bytearray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Shortarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Intarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Ubytearray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Ushortarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Uintarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4ubarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Floatarray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec2array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec3array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4array)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Doublearray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec2darray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec3darray)  {.importcpp: "apply".}

proc apply*(this: var ConstAttributeFunctorArrayVisitor, array: Vec4darray)  {.importcpp: "apply".}

proc applyArray*(this: var ConstAttributeFunctorArrayVisitor, `type`: Attributetype, array: ptr Array )  {.importcpp: "applyArray".}

proc `=`*(this: var ConstAttributeFunctorArrayVisitor, Constattributefunctorarrayvisitor): Constattributefunctorarrayvisitor  {.importcpp: "# = #".}

{.pop.}  # header: "Drawable"
