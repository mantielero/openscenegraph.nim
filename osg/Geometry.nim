import State  # provides: osg::State
import Object  # provides: osg::Object
import BufferObject  # provides: osg::ElementBufferObject, osg::VertexBufferObject
import Array  # provides: osg::Array, osg::Array::Binding
import PrimitiveSet  # provides: osg::PrimitiveSet, osg::PrimitiveFunctor, osg::PrimitiveIndexFunctor
import CopyOp  # provides: osg::CopyOp
import VertexArrayState  # provides: osg::VertexArrayState
import RenderInfo  # provides: osg::RenderInfo
import NodeVisitor  # provides: osg::NodeVisitor
type
  AttributeBinding* {.size:sizeof(cuint),header: "Geometry", importcpp: "osg::Geometry::AttributeBinding".} = enum
    ## deprecated, Same values as Array::Binding.

    BIND_OFF = 0,
    BIND_OVERALL = 1,
    BIND_PER_PRIMITIVE_SET = 2,
    BIND_PER_VERTEX = 4

  ConfigureBufferObjectsVisitor* {.header: "Geometry", importcpp: "osg::ConfigureBufferObjectsVisitor", byref.} = object #of osg::NodeVisitor
    ## Convenience visitor for making sure that any BufferObjects that might
    ## be required are set up in the scene graph.

  ArrayList* {.header: "Geometry", importcpp: "osg::Geometry::ArrayList".} = cint
  PrimitiveSetList* {.header: "Geometry", importcpp: "osg::Geometry::PrimitiveSetList".} = cint
  DrawElementsList* {.header: "Geometry", importcpp: "osg::Geometry::DrawElementsList".} = cint


{.push header: "Geometry".}

proc constructGeometry*(): Geometry {.constructor,importcpp: "osg::Geometry::Geometry".}

proc constructGeometry*(geometry: Geometry, copyop: Copyop = SHALLOW_COPY): Geometry {.constructor,importcpp: "osg::Geometry::Geometry(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructConfigureBufferObjectsVisitor*(): ConfigureBufferObjectsVisitor {.constructor,importcpp: "osg::ConfigureBufferObjectsVisitor::ConfigureBufferObjectsVisitor".}

proc cloneType*(this: Geometry): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Geometry, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Geometry, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Geometry): cstring  {.importcpp: "className".}

proc libraryName*(this: Geometry): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Geometry, nv: Nodevisitor)  {.importcpp: "accept".}

proc asGeometry*(this: var Geometry): ptr Geometry   {.importcpp: "asGeometry".}

proc asGeometry*(this: Geometry): ptr Geometry   {.importcpp: "asGeometry".}

proc empty*(this: Geometry): bool  {.importcpp: "empty".}

proc setVertexArray*(this: var Geometry, array: ptr Array )  {.importcpp: "setVertexArray".}

proc getVertexArray*(this: var Geometry): ptr Array   {.importcpp: "getVertexArray".}

proc getVertexArray*(this: Geometry): ptr Array   {.importcpp: "getVertexArray".}

proc setNormalArray*(this: var Geometry, array: ptr Array )  {.importcpp: "setNormalArray".}

proc setNormalArray*(this: var Geometry, array: ptr Array , binding: Binding)  {.importcpp: "setNormalArray".}

proc getNormalArray*(this: var Geometry): ptr Array   {.importcpp: "getNormalArray".}

proc getNormalArray*(this: Geometry): ptr Array   {.importcpp: "getNormalArray".}

proc setColorArray*(this: var Geometry, array: ptr Array )  {.importcpp: "setColorArray".}

proc setColorArray*(this: var Geometry, array: ptr Array , binding: Binding)  {.importcpp: "setColorArray".}

proc getColorArray*(this: var Geometry): ptr Array   {.importcpp: "getColorArray".}

proc getColorArray*(this: Geometry): ptr Array   {.importcpp: "getColorArray".}

proc setSecondaryColorArray*(this: var Geometry, array: ptr Array )  {.importcpp: "setSecondaryColorArray".}

proc setSecondaryColorArray*(this: var Geometry, array: ptr Array , binding: Binding)  {.importcpp: "setSecondaryColorArray".}

proc getSecondaryColorArray*(this: var Geometry): ptr Array   {.importcpp: "getSecondaryColorArray".}

proc getSecondaryColorArray*(this: Geometry): ptr Array   {.importcpp: "getSecondaryColorArray".}

proc setFogCoordArray*(this: var Geometry, array: ptr Array )  {.importcpp: "setFogCoordArray".}

proc setFogCoordArray*(this: var Geometry, array: ptr Array , binding: Binding)  {.importcpp: "setFogCoordArray".}

proc getFogCoordArray*(this: var Geometry): ptr Array   {.importcpp: "getFogCoordArray".}

proc getFogCoordArray*(this: Geometry): ptr Array   {.importcpp: "getFogCoordArray".}

proc setTexCoordArray*(this: var Geometry, unit: cuint, array: ptr Array )  {.importcpp: "setTexCoordArray".}

proc setTexCoordArray*(this: var Geometry, unit: cuint, array: ptr Array , binding: Binding)  {.importcpp: "setTexCoordArray".}

proc getTexCoordArray*(this: var Geometry, unit: cuint): ptr Array   {.importcpp: "getTexCoordArray".}

proc getTexCoordArray*(this: Geometry, unit: cuint): ptr Array   {.importcpp: "getTexCoordArray".}

proc getNumTexCoordArrays*(this: Geometry): cuint  {.importcpp: "getNumTexCoordArrays".}

proc setTexCoordArrayList*(this: var Geometry, arrrayList: Arraylist)  {.importcpp: "setTexCoordArrayList".}

proc getTexCoordArrayList*(this: var Geometry): Arraylist  {.importcpp: "getTexCoordArrayList".}

proc getTexCoordArrayList*(this: Geometry): Arraylist  {.importcpp: "getTexCoordArrayList".}

proc setVertexAttribArray*(this: var Geometry, index: cuint, array: ptr Array )  {.importcpp: "setVertexAttribArray".}

proc setVertexAttribArray*(this: var Geometry, index: cuint, array: ptr Array , binding: Binding)  {.importcpp: "setVertexAttribArray".}

proc getVertexAttribArray*(this: var Geometry, index: cuint): ptr Array   {.importcpp: "getVertexAttribArray".}

proc getVertexAttribArray*(this: Geometry, index: cuint): ptr Array   {.importcpp: "getVertexAttribArray".}

proc getNumVertexAttribArrays*(this: Geometry): cuint  {.importcpp: "getNumVertexAttribArrays".}

proc setVertexAttribArrayList*(this: var Geometry, arrayList: Arraylist)  {.importcpp: "setVertexAttribArrayList".}

proc getVertexAttribArrayList*(this: var Geometry): Arraylist  {.importcpp: "getVertexAttribArrayList".}

proc getVertexAttribArrayList*(this: Geometry): Arraylist  {.importcpp: "getVertexAttribArrayList".}

proc setPrimitiveSetList*(this: var Geometry, primitives: Primitivesetlist)  {.importcpp: "setPrimitiveSetList".}

proc getPrimitiveSetList*(this: var Geometry): Primitivesetlist  {.importcpp: "getPrimitiveSetList".}

proc getPrimitiveSetList*(this: Geometry): Primitivesetlist  {.importcpp: "getPrimitiveSetList".}

proc getNumPrimitiveSets*(this: Geometry): cuint  {.importcpp: "getNumPrimitiveSets".}

proc getPrimitiveSet*(this: var Geometry, pos: cuint): ptr Primitiveset   {.importcpp: "getPrimitiveSet".}

proc getPrimitiveSet*(this: Geometry, pos: cuint): ptr Primitiveset   {.importcpp: "getPrimitiveSet".}

proc addPrimitiveSet*(this: var Geometry, primitiveset: ptr Primitiveset ): bool  {.importcpp: "addPrimitiveSet".}
    ## Add a primitive set to the geometry.

proc setPrimitiveSet*(this: var Geometry, i: cuint, primitiveset: ptr Primitiveset ): bool  {.importcpp: "setPrimitiveSet".}
    ## Set a primitive set to the specified position in geometry's primitive
    ## set list.

proc insertPrimitiveSet*(this: var Geometry, i: cuint, primitiveset: ptr Primitiveset ): bool  {.importcpp: "insertPrimitiveSet".}
    ## Insert a primitive set to the specified position in geometry's
    ## primitive set list.

proc removePrimitiveSet*(this: var Geometry, i: cuint, numElementsToRemove: cuint = 1): bool  {.importcpp: "removePrimitiveSet".}
    ## Remove primitive set(s) from the specified position in geometry's
    ## primitive set list.

proc getPrimitiveSetIndex*(this: Geometry, primitiveset: ptr Primitiveset ): cuint  {.importcpp: "getPrimitiveSetIndex".}
    ## Get the index number of a primitive set, return a value between 0 and
    ## getNumPrimitiveSet()-1 if found, if not found then return
    ## getNumPrimitiveSet(). When checking for a valid find value use if ((va
    ## lue=geometry->getPrimitiveSetIndex(primitive))!=geometry.getNumPrimiti
    ## veSet())

proc configureBufferObjects*(this: var Geometry)  {.importcpp: "configureBufferObjects".}
    ## Convenience method that checks all the vertex arrays to make sure that
    ## the buffer objects are all assigned appropriate.

proc containsSharedArrays*(this: Geometry): bool  {.importcpp: "containsSharedArrays".}
    ## return true if any arrays are shared.

proc duplicateSharedArrays*(this: var Geometry)  {.importcpp: "duplicateSharedArrays".}
    ## duplicate any shared arrays.

proc setUseVertexBufferObjects*(this: var Geometry, flag: bool)  {.importcpp: "setUseVertexBufferObjects".}
    ## When set to true, ignore the setUseDisplayList() settings, and hints
    ## to the drawImplementation method to use OpenGL vertex buffer objects
    ## for rendering.

proc dirtyGLObjects*(this: var Geometry)  {.importcpp: "dirtyGLObjects".}
    ## Force a recompile on next draw() of any OpenGL objects associated with
    ## this geoset.

proc resizeGLObjectBuffers*(this: var Geometry, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Geometry, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases OpenGL objects for the
    ## specified graphics context. Otherwise, releases OpenGL objects for all
    ## graphics contexts.

proc getArrayList*(this: Geometry, arrayList: Arraylist): bool  {.importcpp: "getArrayList".}

proc getDrawElementsList*(this: Geometry, drawElementsList: Drawelementslist): bool  {.importcpp: "getDrawElementsList".}

proc getOrCreateVertexBufferObject*(this: var Geometry): ptr Vertexbufferobject   {.importcpp: "getOrCreateVertexBufferObject".}

proc getOrCreateElementBufferObject*(this: var Geometry): ptr Elementbufferobject   {.importcpp: "getOrCreateElementBufferObject".}

proc getGLObjectSizeHint*(this: Geometry): cuint  {.importcpp: "getGLObjectSizeHint".}
    ## Return the estimated size of GLObjects (display lists/vertex buffer
    ## objects) that are associated with this drawable. This size is used a
    ## hint for reuse of deleted display lists/vertex buffer objects.

proc compileGLObjects*(this: Geometry, renderInfo: Renderinfo)  {.importcpp: "compileGLObjects".}
    ## Immediately compile this Drawable into an OpenGL Display
    ## List/VertexBufferObjects.

proc drawImplementation*(this: Geometry, renderInfo: Renderinfo)  {.importcpp: "drawImplementation".}
    ## Draw Geometry directly ignoring an OpenGL display list which could be
    ## attached. This is the internal draw method which does the drawing
    ## itself, and is the method to override when deriving from Geometry for
    ## user-drawn objects.

proc drawVertexArraysImplementation*(this: Geometry, renderInfo: Renderinfo)  {.importcpp: "drawVertexArraysImplementation".}
    ## Set up the vertex arrays for the purpose of rendering, called by
    ## drawImplemtation() prior to it calling drawPrimitivesImplementation().

proc drawPrimitivesImplementation*(this: Geometry, renderInfo: Renderinfo)  {.importcpp: "drawPrimitivesImplementation".}
    ## dispatch the primitives to OpenGL, called by drawImplemtation() after
    ## calling drawVertexArraysImplementation().

proc supports*(this: Geometry, Attributefunctor): bool  {.importcpp: "supports".}
    ## Return true, osg::Geometry does support
    ## accept(Drawable::AttributeFunctor&).

proc accept*(this: var Geometry, af: Attributefunctor)  {.importcpp: "accept".}
    ## Accept an Drawable::AttributeFunctor and call its methods to tell it
    ## about the internal attributes that this Drawable has.

proc supports*(this: Geometry, Constattributefunctor): bool  {.importcpp: "supports".}
    ## Return true, osg::Geometry does support
    ## accept(Drawable::ConstAttributeFunctor&).

proc accept*(this: Geometry, af: Constattributefunctor)  {.importcpp: "accept".}
    ## Accept a Drawable::ConstAttributeFunctor and call its methods to tell
    ## it about the internal attributes that this Drawable has.

proc supports*(this: Geometry, Primitivefunctor): bool  {.importcpp: "supports".}
    ## Return true, osg::Geometry does support accept(PrimitiveFunctor&).

proc accept*(this: Geometry, pf: Primitivefunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveFunctor and call its methods to tell it about the
    ## internal primitives that this Drawable has.

proc supports*(this: Geometry, Primitiveindexfunctor): bool  {.importcpp: "supports".}
    ## Return true, osg::Geometry does support
    ## accept(PrimitiveIndexFunctor&).

proc accept*(this: Geometry, pf: Primitiveindexfunctor)  {.importcpp: "accept".}
    ## Accept a PrimitiveFunctor and call its methods to tell it about the
    ## internal primitives that this Drawable has.

proc `=`*(this: var Geometry, Geometry): Geometry  {.importcpp: "# = #".}

proc addVertexBufferObjectIfRequired*(this: var Geometry, array: ptr Array )  {.importcpp: "addVertexBufferObjectIfRequired".}

proc addElementBufferObjectIfRequired*(this: var Geometry, primitiveSet: ptr Primitiveset )  {.importcpp: "addElementBufferObjectIfRequired".}

proc createVertexArrayStateImplementation*(this: Geometry, renderInfo: Renderinfo): ptr Vertexarraystate   {.importcpp: "createVertexArrayStateImplementation".}

proc containsDeprecatedData*(this: Geometry): bool  {.importcpp: "containsDeprecatedData".}
    ## Return true if the deprecated use array indices or BIND_PER_PRIMITIVE
    ## binding has been assigned to arrays.

proc checkForDeprecatedData*(this: var Geometry): bool  {.importcpp: "checkForDeprecatedData".}
    ## fallback for deprecated functionality. Return true if the Geometry
    ## contains any array indices or BIND_PER_PRIMITIVE arrays.

proc fixDeprecatedData*(this: var Geometry)  {.importcpp: "fixDeprecatedData".}
    ## fallback for deprecated functionality. Removes any array indices and
    ## BIND_PER_PRIMITIVE arrays.

proc setNormalBinding*(this: var Geometry, ab: Attributebinding)  {.importcpp: "setNormalBinding".}
    ## deprecated, use array->set*Binding(..).

proc setColorBinding*(this: var Geometry, ab: Attributebinding)  {.importcpp: "setColorBinding".}

proc setSecondaryColorBinding*(this: var Geometry, ab: Attributebinding)  {.importcpp: "setSecondaryColorBinding".}

proc setFogCoordBinding*(this: var Geometry, ab: Attributebinding)  {.importcpp: "setFogCoordBinding".}

proc setVertexAttribBinding*(this: var Geometry, index: cuint, ab: Attributebinding)  {.importcpp: "setVertexAttribBinding".}

proc getNormalBinding*(this: Geometry): Attributebinding  {.importcpp: "getNormalBinding".}
    ## deprecated, use array->get*Binding(..).

proc getColorBinding*(this: Geometry): Attributebinding  {.importcpp: "getColorBinding".}

proc getSecondaryColorBinding*(this: Geometry): Attributebinding  {.importcpp: "getSecondaryColorBinding".}

proc getFogCoordBinding*(this: Geometry): Attributebinding  {.importcpp: "getFogCoordBinding".}

proc getVertexAttribBinding*(this: Geometry, index: cuint): Attributebinding  {.importcpp: "getVertexAttribBinding".}

proc setVertexAttribNormalize*(this: var Geometry, index: cuint, norm: GLboolean)  {.importcpp: "setVertexAttribNormalize".}
    ## deprecated, use array->set*Normalize(..).

proc getVertexAttribNormalize*(this: Geometry, index: cuint): GLboolean  {.importcpp: "getVertexAttribNormalize".}
    ## deprecated, use array->get*Normalize(..).

proc apply*(this: var ConfigureBufferObjectsVisitor, geometry: Geometry)  {.importcpp: "apply".}

{.pop.}  # header: "Geometry"
