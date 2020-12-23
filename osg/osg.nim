{.passL: "-losg -losgSim -losgAnimation -losgTerrain -losgDB -losgText -losgFX -losgUI -losgGA -losgUtil -losgManipulator -losgViewer -losgParticle -losgVolume -losgPresentation -losgWidget -losgShadow", passC:"-I/usr/include/osg" .}

type
  GLBufferObject* {.header: "BufferObject", importcpp: "osg::GLBufferObject", byref.} = object #of GraphicsObject

  BufferData* {.header: "BufferObject", importcpp: "osg::BufferData", byref.} = object #of Object

  VertexBufferObject* {.header: "BufferObject", importcpp: "osg::VertexBufferObject", byref.} = object #of BufferObject

  ElementBufferObject* {.header: "BufferObject", importcpp: "osg::ElementBufferObject", byref.} = object #of BufferObject

  PixelBufferObject* {.header: "BufferObject", importcpp: "osg::PixelBufferObject", byref.} = object #of BufferObject

  CopyOp* {.header: "CopyOp", importcpp: "osg::CopyOp", byref.} = object
    ## Copy Op(erator) used to control whether shallow or deep copy is used
    ## during copy construction and clone operation.

  Object* {.header: "Object", importcpp: "osg::Object", byref.} = object #of Referenced
    ## Base class/standard interface for objects which require IO support,
    ## cloning and reference counting. Based on GOF Composite, Prototype and
    ## Template Method patterns.

  FrameStamp* {.header: "FrameStamp", importcpp: "osg::FrameStamp", byref.} = object #of Referenced
    ## Class which encapsulates the frame number, reference time and calendar
    ## time of specific frame, used to synchronize operations on the scene
    ## graph and other machines when using a graphics cluster. Note the
    ## calendar time can be an artificial simulation time or capture the real
    ## time of day etc.

  Vec2* {.importcpp: "osg::Vec2".} = Vec2f
  Vec3* {.importcpp: "osg::Vec3".} = Vec3f
  Vec3i* {.header: "Vec3i", importcpp: "osg::Vec3i", byref.} = object
    ## General purpose integer triple

  Vec4* {.importcpp: "osg::Vec4".} = Vec4f
  StateAttribute* {.header: "StateAttribute", importcpp: "osg::StateAttribute", byref.} = object #of Object
    ## Base class for state attributes.

  Geode* {.header: "Geode", importcpp: "osg::Geode", byref.} = object #of Group
    ## A Geode is a "geometry node", that is, a leaf node on the scene graph
    ## that can have "renderable things" attached to it. In OSG, renderable
    ## things are represented by objects from the Drawable class, so a Geode
    ## is a Node whose purpose is grouping Drawables.

  NodeVisitor* {.header: "NodeVisitor", importcpp: "osg::NodeVisitor", byref.} = object #of Object
    ## Visitor for type safe operations on osg::Nodes. Based on GOF's Visitor
    ## pattern. The NodeVisitor is useful for developing type safe operations
    ## to nodes in the scene graph (as per Visitor pattern), and adds to this
    ## support for optional scene graph traversal to allow operations to be
    ## applied to whole scenes at once. The Visitor pattern uses a technique
    ## of double dispatch as a mechanism to call the appropriate apply(..)
    ## method of the NodeVisitor. To use this feature one must use the
    ## Node::accept(NodeVisitor) which is extended in each Node subclass,
    ## rather than the NodeVisitor apply directly. So use
    ## root->accept(myVisitor); instead of myVisitor.apply(*root). The later
    ## method will bypass the double dispatch and the appropriate
    ## NodeVisitor::apply(..) method will not be called.

  Vec2f* {.header: "Vec2f", importcpp: "osg::Vec2f", byref.} = object
    ## General purpose float pair. Uses include representation of texture
    ## coordinates. No support yet added for float * Vec2f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. BTW: Vec2f *
    ## float is okay

  Vec3f* {.header: "Vec3f", importcpp: "osg::Vec3f", byref.} = object
    ## General purpose float triple for use as vertices, vectors and normals.
    ## Provides general math operations from addition through to cross
    ## products. No support yet added for float * Vec3f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec3f * float is
    ## okay

  Vec2d* {.header: "Vec2d", importcpp: "osg::Vec2d", byref.} = object
    ## General purpose double pair, uses include representation of texture
    ## coordinates. No support yet added for double * Vec2d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. BTW:
    ## Vec2d * double is okay

  Vec3d* {.header: "Vec3d", importcpp: "osg::Vec3d", byref.} = object
    ## General purpose double triple for use as vertices, vectors and
    ## normals. Provides general math operations from addition through to
    ## cross products. No support yet added for double * Vec3d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. Vec3d
    ## * double is okay

  BoundingBoxf* {.importcpp: "osg::BoundingBoxf".} = Boundingboximpl[Vec3f]
  BoundingBoxd* {.importcpp: "osg::BoundingBoxd".} = Boundingboximpl[Vec3d]
  BoundingBox* {.importcpp: "osg::BoundingBox".} = Boundingboxf
  BoundingSpheref* {.importcpp: "osg::BoundingSpheref".} = Boundingsphereimpl[Vec3f]
  BoundingSphered* {.importcpp: "osg::BoundingSphered".} = Boundingsphereimpl[Vec3d]
  BoundingSphere* {.importcpp: "osg::BoundingSphere".} = Boundingspheref
  Vec4b* {.header: "Vec4b", importcpp: "osg::Vec4b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4b * float is
    ## okay

  Vec4i* {.header: "Vec4i", importcpp: "osg::Vec4i", byref.} = object
    ## General purpose integer quad

  Vec4f* {.header: "Vec4f", importcpp: "osg::Vec4f", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4f * float is
    ## okay

  Vec3s* {.header: "Vec3s", importcpp: "osg::Vec3s", byref.} = object

  Vec3ub* {.header: "Vec3ub", importcpp: "osg::Vec3ub", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec3ub - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec3ub * float is okay

  Vec2b* {.header: "Vec2b", importcpp: "osg::Vec2b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec2b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec2b * float is
    ## okay

  Matrixd* {.header: "Matrixd", importcpp: "osg::Matrixd", byref.} = object

  RefMatrixd* {.header: "Matrixd", importcpp: "osg::RefMatrixd", byref.} = object #of Object

  Matrixf* {.header: "Matrixf", importcpp: "osg::Matrixf", byref.} = object

  Vec2ui* {.header: "Vec2ui", importcpp: "osg::Vec2ui", byref.} = object
    ## General purpose integer pair.

  Vec4ub* {.header: "Vec4ub", importcpp: "osg::Vec4ub", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4ub - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec4ub * float is okay

  Vec4ui* {.header: "Vec4ui", importcpp: "osg::Vec4ui", byref.} = object
    ## General purpose integer quad

  Vec2ub* {.header: "Vec2ub", importcpp: "osg::Vec2ub", byref.} = object
    ## General purpose unsigned byte pair.

  Vec2i* {.header: "Vec2i", importcpp: "osg::Vec2i", byref.} = object
    ## General purpose integer pair.

  Vec3ui* {.header: "Vec3ui", importcpp: "osg::Vec3ui", byref.} = object
    ## General purpose integer triple

  Vec3b* {.header: "Vec3b", importcpp: "osg::Vec3b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec3b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec3b * float is
    ## okay

  Vec4d* {.header: "Vec4d", importcpp: "osg::Vec4d", byref.} = object
    ## General purpose double quad. Uses include representation of color
    ## coordinates. No support yet added for double * Vec4d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. Vec4d
    ## * double is okay

  Vec2us* {.header: "Vec2us", importcpp: "osg::Vec2us", byref.} = object

  Vec4us* {.header: "Vec4us", importcpp: "osg::Vec4us", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4us - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec4us * float is okay

  Vec3us* {.header: "Vec3us", importcpp: "osg::Vec3us", byref.} = object

  Vec4s* {.header: "Vec4s", importcpp: "osg::Vec4s", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4f * float is
    ## okay

  Plane* {.header: "Plane", importcpp: "osg::Plane", byref.} = object
    ## A plane class. It can be used to represent an infinite plane.

  Quat* {.header: "Quat", importcpp: "osg::Quat", byref.} = object
    ## A quaternion class. It can be used to represent an orientation in 3D
    ## space.

  Vec2s* {.header: "Vec2s", importcpp: "osg::Vec2s", byref.} = object

  Referenced* {.header: "Referenced", importcpp: "osg::Referenced", byref.} = object
    ## Base class for providing reference counted objects.

  Uniform* {.header: "Uniform", importcpp: "osg::Uniform", byref.} = object #of Object
    ## Uniform encapsulates glUniform values

  ShaderDefines* {.importcpp: "osg::ShaderDefines".} = cint
  Shader* {.header: "Shader", importcpp: "osg::Shader", byref.} = object #of Object
    ## //////////////////////////////////////////////////////////////////////
    ## // osg::Shader is an application-level abstraction of an OpenGL
    ## glShader. It is a container to load the shader source code text and
    ## manage its compilation. An osg::Shader may be attached to more than
    ## one osg::Program. Shader will automatically manage per-context
    ## instancing of the internal objects, if that is necessary for a
    ## particular display configuration.

  ShaderComponent* {.header: "Shader", importcpp: "osg::ShaderComponent", byref.} = object #of Object

  State* {.header: "State", importcpp: "osg::State", byref.} = object #of Referenced
    ## Encapsulates the current applied OpenGL modes, attributes and vertex
    ## arrays settings, implements lazy state updating and provides accessors
    ## for querying the current state. The venerable Red Book says that
    ## "OpenGL is a state machine", and this class represents the OpenGL
    ## state in OSG. Furthermore, State also has other important features: -
    ## It works as a stack of states (see pushStateSet() and popStateSet()).
    ## Manipulating this stack of OpenGL states manually is seldom needed,
    ## since OSG does this in the most common situations. - It implements
    ## lazy state updating. This means that, if one requests a state change
    ## and that particular state is already in the requested state, no OpenGL
    ## call will be made. This ensures that the OpenGL pipeline is not
    ## stalled by unnecessary state changes. - It allows to query the current
    ## OpenGL state without calls to glGet*(), which typically stall the
    ## graphics pipeline (see, for instance, captureCurrentState() and
    ## getModelViewMatrix()).

  Matrix* {.importcpp: "osg::Matrix".} = Matrixd
  RefMatrix* {.importcpp: "osg::RefMatrix".} = Refmatrixd
  VertexAttribAlias* {.header: "GLExtensions", importcpp: "osg::VertexAttribAlias", byref.} = object

  GLExtensions* {.header: "GLExtensions", importcpp: "osg::GLExtensions", byref.} = object #of Referenced
    ## Main GLExtensions class for managing OpenGL extensions per graphics
    ## context.

  Callback* {.header: "Callback", importcpp: "osg::Callback", byref.} = object #of Object

  Parameters* {.importcpp: "osg::Parameters".} = cint
  CallbackObject* {.header: "Callback", importcpp: "osg::CallbackObject", byref.} = object #of Callback
    ## Callback for attaching a script to a Node's via there
    ## UserDataContainer for the purpose of overriding class methods within
    ## scripts.

  NodeCallback* {.header: "Callback", importcpp: "osg::NodeCallback", byref.} = object #of Callback
    ## Deprecated.

  StateAttributeCallback* {.header: "Callback", importcpp: "osg::StateAttributeCallback", byref.} = object #of Callback
    ## Deprecated.

  UniformCallback* {.header: "Callback", importcpp: "osg::UniformCallback", byref.} = object #of Callback
    ## Deprecated.

  DrawableUpdateCallback* {.header: "Callback", importcpp: "osg::DrawableUpdateCallback", byref.} = object #of Callback

  DrawableEventCallback* {.header: "Callback", importcpp: "osg::DrawableEventCallback", byref.} = object #of Callback

  DrawableCullCallback* {.header: "Callback", importcpp: "osg::DrawableCullCallback", byref.} = object #of Callback

  StateSet* {.header: "StateSet", importcpp: "osg::StateSet", byref.} = object #of Object
    ## Stores a set of modes and attributes which represent a set of OpenGL
    ## state. Notice that a StateSet contains just a subset of the whole
    ## OpenGL state. In OSG, each Drawable and each Node has a reference to a
    ## StateSet. These StateSets can be shared between different Drawables
    ## and Nodes (that is, several Drawables and Nodes can reference the same
    ## StateSet). Indeed, this practice is recommended whenever possible, as
    ## this minimizes expensive state changes in the graphics pipeline.

  Texture* {.header: "Texture", importcpp: "osg::Texture", byref.} = object #of StateAttribute
    ## Texture pure virtual base class that encapsulates OpenGL texture
    ## functionality common to the various types of OSG textures.

  DisplaySettings* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings", byref.} = object #of Referenced
    ## DisplaySettings class for encapsulating what visuals are required and
    ## have been set up, and the status of stereo viewing.

  Timer_t* {.importcpp: "osg::Timer_t".} = culonglong
  AttributeDispatchers* {.header: "AttributeDispatchers", importcpp: "osg::AttributeDispatchers", byref.} = object #of Referenced
    ## Helper class for managing the dispatch to OpenGL of various attribute
    ## arrays such as stored in osg::Geometry.

  VertexArrayState* {.header: "VertexArrayState", importcpp: "osg::VertexArrayState", byref.} = object #of Referenced

  VertexArrayStateList* {.header: "VertexArrayState", importcpp: "osg::VertexArrayStateList", byref.} = object

  ShaderComposer* {.header: "ShaderComposer", importcpp: "osg::ShaderComposer", byref.} = object #of Object
    ## deprecated

  Polytope* {.header: "Polytope", importcpp: "osg::Polytope", byref.} = object
    ## A Polytope class for representing convex clipping volumes made up of a
    ## set of planes. When adding planes, their normals should point inwards
    ## (into the volume)

  Value_type* {.importcpp: "std::integral_constant::value_type".} = _Tp
  Value_type* {.importcpp: "std::iterator::value_type".} = _Tp
  Value_type* {.importcpp: "std::iterator_traits::value_type".} = _Tp
  Value_type* {.importcpp: "std::iterator_traits::value_type".} = _Tp
  Value_type* {.importcpp: "__gnu_cxx::__normal_iterator::value_type".} = Value_type
  Value_type* {.importcpp: "std::move_iterator::value_type".} = Value_type
  Value_type* {.importcpp: "__gnu_cxx::new_allocator::value_type".} = _Tp
  Value_type* {.importcpp: "std::allocator::value_type".} = void
  Value_type* {.importcpp: "std::allocator::value_type".} = _Tp
  Value_type* {.importcpp: "std::allocator::value_type".} = _Tp
  Value_type* {.importcpp: "std::allocator::value_type".} = _Tp
  Value_type* {.importcpp: "std::allocator::value_type".} = _Tp
  Value_type* {.importcpp: "std::initializer_list::value_type".} = _E
  Value_type* {.importcpp: "std::allocator_traits::value_type".} = Value_type
  Value_type* {.importcpp: "__gnu_cxx::__alloc_traits::value_type".} = Value_type
  Value_type* {.importcpp: "std::__cxx11::basic_string::value_type".} = Char_type
  Value_type* {.importcpp: "std::vector::value_type".} = _Tp
  Value_type* {.importcpp: "std::vector::value_type".} = bool
  Value_type* {.importcpp: "std::_Rb_tree_iterator::value_type".} = _Tp
  Value_type* {.importcpp: "std::_Rb_tree_const_iterator::value_type".} = _Tp
  Value_type* {.importcpp: "std::_Rb_tree::value_type".} = _Val
  Value_type* {.importcpp: "std::integer_sequence::value_type".} = _Tp
  Value_type* {.importcpp: "std::array::value_type".} = _Tp
  Value_type* {.importcpp: "std::map::value_type".} = Pair[_Key,_Tp]
  Value_type* {.importcpp: "std::multimap::value_type".} = Pair[_Key,_Tp]
  Value_type* {.importcpp: "osg::Vec2f::value_type".} = cfloat
  Value_type* {.importcpp: "osg::Vec2d::value_type".} = cdouble
  Value_type* {.importcpp: "osg::Vec3f::value_type".} = cfloat
  Value_type* {.importcpp: "osg::Vec3d::value_type".} = cdouble
  Value_type* {.importcpp: "osg::Vec4f::value_type".} = cfloat
  Value_type* {.importcpp: "osg::Vec4d::value_type".} = cdouble
  Value_type* {.importcpp: "osg::Quat::value_type".} = cdouble
  Value_type* {.importcpp: "osg::Matrixd::value_type".} = cdouble
  Value_type* {.importcpp: "std::set::value_type".} = _Key
  Value_type* {.importcpp: "std::multiset::value_type".} = _Key
  Value_type* {.importcpp: "osg::Matrixf::value_type".} = cfloat
  Viewport* {.header: "Viewport", importcpp: "osg::Viewport", byref.} = object #of StateAttribute
    ## Encapsulate OpenGL glViewport.

  Value_type* {.importcpp: "osg::Viewport::value_type".} = cdouble
  GraphicsCostEstimator* {.header: "GraphicsCostEstimator", importcpp: "osg::GraphicsCostEstimator", byref.} = object #of Referenced

  GraphicsContext* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext", byref.} = object #of Object
    ## Base class for providing Windowing API agnostic access to creating and
    ## managing graphics context.

  Array* {.header: "Array", importcpp: "osg::Array", byref.} = object #of BufferData

  IndexArray* {.header: "Array", importcpp: "osg::IndexArray", byref.} = object #of Array

  ByteArray* {.importcpp: "osg::ByteArray".} = Templateindexarray[GLbyte,Bytearraytype,1,5120]
  ShortArray* {.importcpp: "osg::ShortArray".} = Templateindexarray[GLshort,Shortarraytype,1,5122]
  IntArray* {.importcpp: "osg::IntArray".} = Templateindexarray[GLint,Intarraytype,1,5124]
  UByteArray* {.importcpp: "osg::UByteArray".} = Templateindexarray[GLubyte,Ubytearraytype,1,5121]
  UShortArray* {.importcpp: "osg::UShortArray".} = Templateindexarray[GLushort,Ushortarraytype,1,5123]
  UIntArray* {.importcpp: "osg::UIntArray".} = Templateindexarray[GLuint,Uintarraytype,1,5125]
  FloatArray* {.importcpp: "osg::FloatArray".} = Templatearray[GLfloat,Floatarraytype,1,5126]
  DoubleArray* {.importcpp: "osg::DoubleArray".} = Templatearray[GLdouble,Doublearraytype,1,5130]
  Vec4ubArray* {.importcpp: "osg::Vec4ubArray".} = Templatearray[Vec4ub,Vec4ubarraytype,4,5121]
  Vec2Array* {.importcpp: "osg::Vec2Array".} = Templatearray[Vec2,Vec2arraytype,2,5126]
  Vec3Array* {.importcpp: "osg::Vec3Array".} = Templatearray[Vec3,Vec3arraytype,3,5126]
  Vec4Array* {.importcpp: "osg::Vec4Array".} = Templatearray[Vec4,Vec4arraytype,4,5126]
  Vec2dArray* {.importcpp: "osg::Vec2dArray".} = Templatearray[Vec2d,Vec2darraytype,2,5130]
  Vec3dArray* {.importcpp: "osg::Vec3dArray".} = Templatearray[Vec3d,Vec3darraytype,3,5130]
  Vec4dArray* {.importcpp: "osg::Vec4dArray".} = Templatearray[Vec4d,Vec4darraytype,4,5130]
  UInt64Array* {.importcpp: "osg::UInt64Array".} = Templateindexarray[GLuint64,Uint64arraytype,1,5135]
  Int64Array* {.importcpp: "osg::Int64Array".} = Templateindexarray[GLint64,Int64arraytype,1,5134]
  VectorGLubyte* {.importcpp: "osg::VectorGLubyte".} = MixinVector[GLubyte]
  VectorGLushort* {.importcpp: "osg::VectorGLushort".} = MixinVector[GLushort]
  VectorGLuint* {.importcpp: "osg::VectorGLuint".} = MixinVector[GLuint]
  PrimitiveFunctor* {.header: "PrimitiveSet", importcpp: "osg::PrimitiveFunctor", byref.} = object
    ## A PrimitiveFunctor is used (in conjunction with osg::Drawable::accept
    ## (PrimitiveFunctor&)) to get access to the primitives that compose the
    ## things drawn by OSG. If osg::Drawable::accept() is called with a
    ## PrimitiveFunctor parameter, the Drawable will "pretend" it is drawing
    ## itself, but instead of calling real OpenGL functions, it will call
    ## PrimitiveFunctor's member functions that "mimic" the OpenGL calls.
    ## Concrete subclasses of PrimitiveFunctor must implement these methods
    ## so that they performs whatever they want.

  PrimitiveIndexFunctor* {.header: "PrimitiveSet", importcpp: "osg::PrimitiveIndexFunctor", byref.} = object

  PrimitiveSet* {.header: "PrimitiveSet", importcpp: "osg::PrimitiveSet", byref.} = object #of BufferData

  DrawElements* {.header: "PrimitiveSet", importcpp: "osg::DrawElements", byref.} = object #of PrimitiveSet

  Image* {.header: "Image", importcpp: "osg::Image", byref.} = object #of BufferData
    ## Image class for encapsulating the storage texture image data.

  Shape* {.header: "Shape", importcpp: "osg::Shape", byref.} = object #of Object
    ## Base class for all shape types. Shapes are used to either for culling
    ## and collision detection or to define the geometric shape of
    ## procedurally generate Geometry.

  ShapeVisitor* {.header: "Shape", importcpp: "osg::ShapeVisitor", byref.} = object

  ConstShapeVisitor* {.header: "Shape", importcpp: "osg::ConstShapeVisitor", byref.} = object

  TessellationHints* {.header: "Shape", importcpp: "osg::TessellationHints", byref.} = object #of Object
    ## Describe several hints that can be passed to a Tessellator (like the
    ## one used by ShapeDrawable) as a mean to try to influence the way it
    ## works.

  NodePath* {.importcpp: "osg::NodePath".} = cint
  MatrixList* {.importcpp: "osg::MatrixList".} = cint
  Node* {.header: "Node", importcpp: "osg::Node", byref.} = object #of Object
    ## Base class for all internal nodes in the scene graph. Provides
    ## interface for most common node operations (Composite Pattern).

  NodeMask* {.importcpp: "osg::Node::NodeMask".} = cuint
  RenderInfo* {.header: "RenderInfo", importcpp: "osg::RenderInfo", byref.} = object

  Transform* {.header: "Transform", importcpp: "osg::Transform", byref.} = object #of Group
    ## A Transform is a group node for which all children are transformed by
    ## a 4x4 matrix. It is often used for positioning objects within a scene,
    ## producing trackball functionality or for animation.

  Drawable* {.header: "Drawable", importcpp: "osg::Drawable", byref.} = object #of Node
    ## Pure virtual base class for drawable geometry. In OSG, everything that
    ## can be rendered is implemented as a class derived from Drawable. The
    ## Drawable class contains no drawing primitives, since these are
    ## provided by subclasses such as osg::Geometry. Notice that a Drawable
    ## is not a Node, and therefore it cannot be directly added to a scene
    ## graph. Instead, Drawables are attached to Geodes, which are scene
    ## graph nodes. The OpenGL state that must be used when rendering a
    ## Drawable is represented by a StateSet. Since a Drawable has a
    ## reference ( osg::ref_ptr) to a StateSet, StateSets can be shared
    ## between different Drawables. In fact, sharing StateSets is a good way
    ## to improve performance, since this allows OSG to reduce the number of
    ## expensive changes in the OpenGL state. Finally, Drawables can also be
    ## shared between different Geodes, so that the same geometry (loaded to
    ## memory just once) can be used in different parts of the scene graph.

  Texture2D* {.header: "Texture2D", importcpp: "osg::Texture2D", byref.} = object #of Texture
    ## Encapsulates OpenGL 2D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  TextureRectangle* {.header: "TextureRectangle", importcpp: "osg::TextureRectangle", byref.} = object #of Texture
    ## Texture state class which encapsulates OpenGL texture functionality.

  Texture2DArray* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray", byref.} = object #of Texture
    ## Texture2DArray state class which encapsulates OpenGL 2D array texture
    ## functionality. Texture arrays were introduced with Shader Model 4.0
    ## hardware.

  Texture3D* {.header: "Texture3D", importcpp: "osg::Texture3D", byref.} = object #of Texture
    ## Encapsulates OpenGL 3D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  TextureCubeMap* {.header: "TextureCubeMap", importcpp: "osg::TextureCubeMap", byref.} = object #of Texture
    ## TextureCubeMap state class which encapsulates OpenGL texture cubemap
    ## functionality.

  Texture1D* {.header: "Texture1D", importcpp: "osg::Texture1D", byref.} = object #of Texture
    ## Encapsulates OpenGL 1D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  Texture2DMultisample* {.header: "Texture2DMultisample", importcpp: "osg::Texture2DMultisample", byref.} = object #of Texture
    ## Texture2DMultisample state class which encapsulates OpenGL 2D
    ## multisampled texture functionality. Multisampled texture were
    ## introduced with OpenGL 3.1 and extension GL_ARB_texture_multisample.
    ## See http://www.opengl.org/registry/specs/ARB/texture_multisample.txt
    ## for more info.

  ValueMap* {.header: "ValueMap", importcpp: "osg::ValueMap", byref.} = object #of Object

  ValueStack* {.header: "ValueStack", importcpp: "osg::ValueStack", byref.} = object #of Object

  Camera* {.header: "Camera", importcpp: "osg::Camera", byref.} = object #of Transform
    ## Camera - is a subclass of Transform which represents encapsulates the
    ## settings of a Camera.

  CullStack* {.header: "CullStack", importcpp: "osg::CullStack", byref.} = object #of CullSettings
    ## A CullStack class which accumulates the current project, modelview
    ## matrices and the CullingSet.

  ProxyNode* {.header: "ProxyNode", importcpp: "osg::ProxyNode", byref.} = object #of Group
    ## ProxyNode.

  PositionAttitudeTransform* {.header: "PositionAttitudeTransform", importcpp: "osg::PositionAttitudeTransform", byref.} = object #of Transform
    ## PositionAttitudeTransform - is a Transform. Sets the coordinate
    ## transform via a Vec3 position and Quat attitude.

  NodeList* {.importcpp: "osg::NodeList".} = cint
  Group* {.header: "Group", importcpp: "osg::Group", byref.} = object #of Node
    ## General group node which maintains a list of children. Children are
    ## reference counted. This allows children to be shared with memory
    ## management handled automatically via osg::Referenced.

  LightSource* {.header: "LightSource", importcpp: "osg::LightSource", byref.} = object #of Group
    ## Leaf Node for defining a light in the scene.

  LOD* {.header: "LOD", importcpp: "osg::LOD", byref.} = object #of Group
    ## LOD - Level Of Detail group node which allows switching between
    ## children depending on distance from eye point. Typical uses are for
    ## load balancing - objects further away from the eye point are rendered
    ## at a lower level of detail, and at times of high stress on the
    ## graphics pipeline lower levels of detail can also be chosen by
    ## adjusting the viewers's Camera/CullSettings LODScale value. Each child
    ## has a corresponding valid range consisting of a minimum and maximum
    ## distance. Given a distance to the viewer (d), LOD displays a child if
    ## min <= d < max. LOD may display multiple children simultaneously if
    ## their corresponding ranges overlap. Children can be in any order, and
    ## don't need to be sorted by range or amount of detail. If the number of
    ## ranges (m) is less than the number of children (n), then children m+1
    ## through n are ignored.

  ClipNode* {.header: "ClipNode", importcpp: "osg::ClipNode", byref.} = object #of Group
    ## Node for defining the position of ClipPlanes in the scene.

  MatrixTransform* {.header: "MatrixTransform", importcpp: "osg::MatrixTransform", byref.} = object #of Transform
    ## MatrixTransform - is a subclass of Transform which has an osg::Matrix
    ## which represents a 4x4 transformation of its children from local
    ## coordinates into the Transform's parent coordinates.

  OcclusionQueryNode* {.header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode", byref.} = object #of Group

  CameraView* {.header: "CameraView", importcpp: "osg::CameraView", byref.} = object #of Transform
    ## CameraView - is a Transform that is used to specify camera views from
    ## within the scene graph. The application must attach a camera to a
    ## CameraView via the NodePath from the top of the scene graph to the
    ## CameraView node itself, and accumulate the view matrix from this
    ## NodePath.

  CoordinateSystemNode* {.header: "CoordinateSystemNode", importcpp: "osg::CoordinateSystemNode", byref.} = object #of Group
    ## CoordinateSystem encapsulate the coordinate system that is associated
    ## with objects in a scene. For an overview of common earth bases
    ## coordinate systems see http://www.colorado.edu/geography/gcraft/notes/
    ## coordsys/coordsys_f.html

  PagedLOD* {.header: "PagedLOD", importcpp: "osg::PagedLOD", byref.} = object #of LOD
    ## PagedLOD.

  ClearNode* {.header: "ClearNode", importcpp: "osg::ClearNode", byref.} = object #of Group
    ## A Group node for clearing the color and depth buffers. Use
    ## setClearColor to change the clear color, and setRequiresClear to
    ## disable/enable the call clearing. You might want to disable clearing
    ## if you perform your clear by drawing fullscreen geometry. If you do
    ## this, add child nodes to perform such drawing. The default StateSet
    ## associated with this node places children in render bin -1 to ensure
    ## that children are rendered prior to the rest of the scene graph.

  AutoTransform* {.header: "AutoTransform", importcpp: "osg::AutoTransform", byref.} = object #of Transform
    ## AutoTransform is a derived form of Transform that automatically scales
    ## or rotates to keep its children aligned with screen coordinates.

  Billboard* {.header: "Billboard", importcpp: "osg::Billboard", byref.} = object #of Geode
    ## Billboard is a derived form of Geode that orients its osg::Drawable
    ## children to face the eye point. Typical uses include trees and
    ## particle explosions.

  Switch* {.header: "Switch", importcpp: "osg::Switch", byref.} = object #of Group
    ## Switch is a Group node that allows switching between children. Typical
    ## uses would be for objects which might need to be rendered differently
    ## at different times, for instance a switch could be used to represent
    ## the different states of a traffic light.

  Projection* {.header: "Projection", importcpp: "osg::Projection", byref.} = object #of Group
    ## Projection nodes set up the frustum/orthographic projection used when
    ## rendering the scene.

  TexGenNode* {.header: "TexGenNode", importcpp: "osg::TexGenNode", byref.} = object #of Group
    ## Node for defining the position of TexGen in the scene.

  OccluderNode* {.header: "OccluderNode", importcpp: "osg::OccluderNode", byref.} = object #of Group
    ## OccluderNode is a Group node which provides hooks for adding
    ## ConvexPlanarOccluders to the scene.

  Geometry* {.header: "Geometry", importcpp: "osg::Geometry", byref.} = object #of Drawable

  Sequence* {.header: "Sequence", importcpp: "osg::Sequence", byref.} = object #of Group
    ## Sequence is a Group node which allows automatic, time based switching
    ## between children.

  Observer* {.header: "Observer", importcpp: "osg::Observer", byref.} = object
    ## Observer base class for tracking when objects are unreferenced (their
    ## reference count goes to 0) and are being deleted.

  ObserverSet* {.header: "Observer", importcpp: "osg::ObserverSet", byref.} = object #of Referenced
    ## Class used by osg::Referenced to track the observers associated with
    ## it.

  DeleteHandler* {.header: "DeleteHandler", importcpp: "osg::DeleteHandler", byref.} = object
    ## Class for overriding the default delete behaviour so that users can
    ## implement their own object deletion schemes. This might be used to
    ## implement a protection scheme that avoids multiple threads deleting
    ## objects unintentionally. Note, the DeleteHandler cannot itself be
    ## reference counted, otherwise it would be responsible for deleting
    ## itself! A static auto_ptr<> is used internally in Referenced.cpp to
    ## manage the DeleteHandler's memory.

  ApplicationUsage* {.header: "ApplicationUsage", importcpp: "osg::ApplicationUsage", byref.} = object #of Referenced

  Program* {.header: "Program", importcpp: "osg::Program", byref.} = object #of StateAttribute
    ## //////////////////////////////////////////////////////////////////////
    ## // osg::Program is an application-level abstraction of an OpenGL
    ## glProgram. It is an osg::StateAttribute that, when applied, will
    ## activate a glProgram for subsequent rendering. osg::Shaders containing
    ## the actual shader source code are attached to a Program, which will
    ## then manage the compilation, linking, and activation of the GLSL
    ## program. osg::Program will automatically manage per-context instancing
    ## of the OpenGL glPrograms, if that is necessary for a particular
    ## display configuration.

  Light* {.header: "Light", importcpp: "osg::Light", byref.} = object #of StateAttribute
    ## Light state class which encapsulates OpenGL glLight() functionality.

  TexGen* {.header: "TexGen", importcpp: "osg::TexGen", byref.} = object #of StateAttribute
    ## TexGen encapsulates the OpenGL glTexGen (texture coordinate
    ## generation) state.

  ShadowVolumeOccluder* {.header: "ShadowVolumeOccluder", importcpp: "osg::ShadowVolumeOccluder", byref.} = object
    ## ShadowVolumeOccluder is a helper class for implementing shadow
    ## occlusion culling.

  ShadowVolumeOccluderList* {.importcpp: "osg::ShadowVolumeOccluderList".} = cint
  CullingSet* {.header: "CullingSet", importcpp: "osg::CullingSet", byref.} = object #of Referenced
    ## A CullingSet class which contains a frustum and a list of occluders.

  ColorMask* {.header: "ColorMask", importcpp: "osg::ColorMask", byref.} = object #of StateAttribute
    ## Encapsulates OpenGL glColorMaskFunc/Op/Mask functions.

  CullSettings* {.header: "CullSettings", importcpp: "osg::CullSettings", byref.} = object

  RefBlock* {.header: "OperationThread", importcpp: "osg::RefBlock", byref.} = object #of Referenced

  Operation* {.header: "OperationThread", importcpp: "osg::Operation", byref.} = object #of Referenced
    ## Base class for implementing graphics operations.

  OperationThread* {.header: "OperationThread", importcpp: "osg::OperationThread", byref.} = object #of Referenced
    ## OperationThread is a helper class for running Operation within a
    ## single thread.

  Stats* {.header: "Stats", importcpp: "osg::Stats", byref.} = object #of Referenced

  View* {.header: "View", importcpp: "osg::View", byref.} = object #of Object
    ## View - maintains a master camera view and a list of slave cameras that
    ## are relative to this master camera. Note, if no slave cameras are
    ## attached to the view then the master camera does both the control and
    ## implementation of the rendering of the scene, but if slave cameras are
    ## present then the master controls the view onto the scene, while the
    ## slaves implement the rendering of the scene.

  GraphicsThread* {.header: "GraphicsThread", importcpp: "osg::GraphicsThread", byref.} = object #of OperationThread
    ## GraphicsThread is a helper class for running OpenGL GraphicsOperation
    ## within a single thread assigned to a specific GraphicsContext.

  ConvexPlanarOccluder* {.header: "ConvexPlanarOccluder", importcpp: "osg::ConvexPlanarOccluder", byref.} = object #of Object
    ## A class for representing convex clipping volumes made up of several
    ## ConvexPlanarPolygon.

  ArgumentParser* {.header: "ArgumentParser", importcpp: "osg::ArgumentParser", byref.} = object

  UserDataContainer* {.header: "UserDataContainer", importcpp: "osg::UserDataContainer", byref.} = object #of Object
    ## Internal structure for storing all user data.

  ValueObject* {.header: "ValueObject", importcpp: "osg::ValueObject", byref.} = object #of Object

  ConvexPlanarPolygon* {.header: "ConvexPlanarPolygon", importcpp: "osg::ConvexPlanarPolygon", byref.} = object
    ## A class for representing components of convex clipping volumes.

  ObserverNodePath* {.header: "ObserverNodePath", importcpp: "osg::ObserverNodePath", byref.} = object
    ## ObserverNodePath is an observer class for tracking changes to a
    ## NodePath, that automatically invalidates it when nodes are deleted.

  ClipPlane* {.header: "ClipPlane", importcpp: "osg::ClipPlane", byref.} = object #of StateAttribute
    ## Encapsulates OpenGL glClipPlane().

include "Material.nim"
include "ValueMap.nim"
include "Vec4us.nim"
include "BoundsChecking.nim"
include "Texture2DMultisample.nim"
include "StateAttributeCallback.nim"
include "Vec3.nim"
include "State.nim"
include "DeleteHandler.nim"
include "CullSettings.nim"
include "LightSource.nim"
include "AttributeDispatchers.nim"
include "BoundingSphere.nim"
include "ViewportIndexed.nim"
include "Vec3i.nim"
include "NodeCallback.nim"
include "GLExtensions.nim"
include "LOD.nim"
include "TexEnv.nim"
include "Projection.nim"
include "BlendColor.nim"
include "ClearNode.nim"
include "Vec4.nim"
include "Camera.nim"
include "Sequence.nim"
include "Vec3s.nim"
include "Vec2us.nim"
include "BufferTemplate.nim"
include "Switch.nim"
include "Texture2D.nim"
include "TemplatePrimitiveFunctor.nim"
include "ShaderComposer.nim"
include "Geode.nim"
include "ref_ptr.nim"
include "ArgumentParser.nim"
include "Vec2s.nim"
include "Observer.nim"
include "Vec2b.nim"
include "AutoTransform.nim"
include "Fog.nim"
include "Texture2DArray.nim"
include "LightModel.nim"
include "Object.nim"
include "TriangleFunctor.nim"
include "PolygonOffset.nim"
include "BufferObject.nim"
include "CoordinateSystemNode.nim"
include "ConvexPlanarPolygon.nim"
include "DispatchCompute.nim"
include "Vec3ui.nim"
include "Matrixf.nim"
include "PositionAttitudeTransform.nim"
include "Referenced.nim"
include "ClusterCullingCallback.nim"
include "Vec2ub.nim"
include "CollectOccludersVisitor.nim"
include "Types.nim"
include "Texture3D.nim"
include "ShadowVolumeOccluder.nim"
include "Export.nim"
include "ShadeModel.nim"
include "CameraView.nim"
include "ObserverNodePath.nim"
include "LineWidth.nim"
include "BlendEquation.nim"
include "CullStack.nim"
include "ShaderAttribute.nim"
include "ScriptEngine.nim"
include "Stats.nim"
include "StateAttribute.nim"
include "TexGen.nim"
include "Array.nim"
include "LineSegment.nim"
include "ValueObject.nim"
include "ComputeBoundsVisitor.nim"
include "TexEnvCombine.nim"
include "Plane.nim"
include "Shape.nim"
include "FrontFace.nim"
include "Polytope.nim"
include "Point.nim"
include "os_utils.nim"
include "ColorMaski.nim"
include "Shader.nim"
include "PrimitiveSet.nim"
include "Version.nim"
include "Vec2ui.nim"
include "Math.nim"
include "View.nim"
include "ShapeDrawable.nim"
include "ClipPlane.nim"
include "LogicOp.nim"
include "TextureBuffer.nim"
include "ImageUtils.nim"
include "TexGenNode.nim"
include "GLU.nim"
include "BlendEquationi.nim"
include "BlendFunc.nim"
include "OperationThread.nim"
include "CullFace.nim"
include "PolygonStipple.nim"
include "Transform.nim"
include "GL2Extensions.nim"
include "Node.nim"
include "Geometry.nim"
include "TransferFunction.nim"
include "Image.nim"
include "TexMat.nim"
include "Viewport.nim"
include "buffered_value.nim"
include "PolygonMode.nim"
include "MatrixTransform.nim"
include "ColorMask.nim"
include "Drawable.nim"
include "Timer.nim"
include "ClipNode.nim"
include "io_utils.nim"
include "Vec3f.nim"
include "Stencil.nim"
include "Callback.nim"
include "Group.nim"
include "Vec3us.nim"
include "Vec2.nim"
include "ImageSequence.nim"
include "BoundingBox.nim"
include "ConvexPlanarOccluder.nim"
include "Vec2f.nim"
include "StateSet.nim"
include "PrimitiveSetIndirect.nim"
include "CopyOp.nim"
include "Texture1D.nim"
include "observer_ptr.nim"
include "Hint.nim"
include "Matrix.nim"
include "BufferIndexBinding.nim"
include "SampleMaski.nim"
include "VertexProgram.nim"
include "AudioStream.nim"
include "ValueStack.nim"
include "PrimitiveRestartIndex.nim"
include "ColorMatrix.nim"
include "ScissorIndexed.nim"
include "StencilTwoSided.nim"
include "DrawPixels.nim"
include "Matrixd.nim"
include "ApplicationUsage.nim"
include "Vec3b.nim"
include "Vec4b.nim"
include "GraphicsCostEstimator.nim"
include "DepthRangeIndexed.nim"
include "PagedLOD.nim"
include "TriangleLinePointIndexFunctor.nim"
include "ProxyNode.nim"
include "TextureRectangle.nim"
include "TemplatePrimitiveIndexFunctor.nim"
include "VertexArrayState.nim"
include "OccluderNode.nim"
include "AlphaFunc.nim"
include "GLObjects.nim"
include "Multisample.nim"
include "GL.nim"
include "LineStipple.nim"
include "UserDataContainer.nim"
include "AnimationPath.nim"
include "GraphicsContext.nim"
include "NodeTrackerCallback.nim"
include "GraphicsThread.nim"
include "ClampColor.nim"
include "BindImageTexture.nim"
include "BlendFunci.nim"
include "CullingSet.nim"
include "FragmentProgram.nim"
include "Vec4ui.nim"
include "TextureCubeMap.nim"
include "Uniform.nim"
include "RenderInfo.nim"
include "PointSprite.nim"
include "Vec3ub.nim"
include "Vec4d.nim"
include "Vec4s.nim"
include "Sampler.nim"
include "Light.nim"
include "Depth.nim"
include "Config.nim"
include "VertexAttribDivisor.nim"
include "Vec2i.nim"
include "ClipControl.nim"
include "Vec3d.nim"
include "Vec2d.nim"
include "fast_back_stack.nim"
include "Scissor.nim"
include "ContextData.nim"
include "Billboard.nim"
include "Quat.nim"
include "FrameStamp.nim"
include "Capability.nim"
include "DisplaySettings.nim"
include "Vec4ub.nim"
include "OcclusionQueryNode.nim"
include "GLDefines.nim"
include "Identifier.nim"
include "Program.nim"
include "ImageStream.nim"
include "Texture.nim"
include "FrameBufferObject.nim"
include "NodeVisitor.nim"
include "KdTree.nim"
include "Notify.nim"
include "PatchParameter.nim"
include "Endian.nim"
include "Vec4i.nim"
include "TexEnvFilter.nim"
include "TriangleIndexFunctor.nim"
include "MixinVector.nim"
include "Vec4f.nim"
