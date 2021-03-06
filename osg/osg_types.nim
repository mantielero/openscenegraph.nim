import opengl

type
  pair*[K, V] {.importcpp: "std::pair", header: "<std>".}  = object
  
  MixinVector*[ValueT] {.header: "MixinVector", importcpp: "osg::MixinVector", byref.} = object
    ## MixinVector is a base class that allows inheritance to be used to
    ## easily emulate derivation from std::vector but without introducing
    ## undefined behaviour through violation of virtual destructor rules.  
  ArrayType* {.size:sizeof(cuint),header: "Array", importcpp: "osg::Array::Type", pure.} = enum
    ## The type of data stored in this array.

    ArrayType = 0,
    ByteArrayType = 1,
    ShortArrayType = 2,
    IntArrayType = 3,
    UByteArrayType = 4,
    UShortArrayType = 5,
    UIntArrayType = 6,
    FloatArrayType = 7,
    DoubleArrayType = 8,
    Vec2bArrayType = 9,
    Vec3bArrayType = 10,
    Vec4bArrayType = 11,
    Vec2sArrayType = 12,
    Vec3sArrayType = 13,
    Vec4sArrayType = 14,
    Vec2iArrayType = 15,
    Vec3iArrayType = 16,
    Vec4iArrayType = 17,
    Vec2ubArrayType = 18,
    Vec3ubArrayType = 19,
    Vec4ubArrayType = 20,
    Vec2usArrayType = 21,
    Vec3usArrayType = 22,
    Vec4usArrayType = 23,
    Vec2uiArrayType = 24,
    Vec3uiArrayType = 25,
    Vec4uiArrayType = 26,
    Vec2ArrayType = 27,
    Vec3ArrayType = 28,
    Vec4ArrayType = 29,
    Vec2dArrayType = 30,
    Vec3dArrayType = 31,
    Vec4dArrayType = 32,
    MatrixArrayType = 33,
    MatrixdArrayType = 34,
    QuatArrayType = 35,
    UInt64ArrayType = 36,
    Int64ArrayType = 37

  StateAttributeType* {.size:sizeof(cuint),header: "StateAttribute", importcpp: "osg::StateAttribute::Type", pure.} = enum
    ## Values of StateAttribute::Type used to aid identification of different
    ## StateAttribute subclasses. Each subclass defines its own value in the
    ## virtual Type getType() method. When extending the osg's
    ## StateAttribute's simply define your own Type value which is unique,
    ## using the StateAttribute::Type enum as a guide of what values to use.
    ## If your new subclass needs to override a standard StateAttribute then
    ## simply use that type's value.

    TEXTURE = 0,
    POLYGONMODE = 1,
    POLYGONOFFSET = 2,
    MATERIAL = 3,
    ALPHAFUNC = 4,
    ANTIALIAS = 5,
    COLORTABLE = 6,
    CULLFACE = 7,
    FOG = 8,
    FRONTFACE = 9,
    LIGHT = 10,
    POINT = 11,
    LINEWIDTH = 12,
    LINESTIPPLE = 13,
    POLYGONSTIPPLE = 14,
    SHADEMODEL = 15,
    TEXENV = 16,
    TEXENVFILTER = 17,
    TEXGEN = 18,
    TEXMAT = 19,
    LIGHTMODEL = 20,
    BLENDFUNC = 21,
    BLENDEQUATION = 22,
    LOGICOP = 23,
    STENCIL = 24,
    COLORMASK = 25,
    DEPTH = 26,
    VIEWPORT = 27,
    SCISSOR = 28,
    BLENDCOLOR = 29,
    MULTISAMPLE = 30,
    CLIPPLANE = 31,
    COLORMATRIX = 32,
    VERTEXPROGRAM = 33,
    FRAGMENTPROGRAM = 34,
    POINTSPRITE = 35,
    PROGRAM = 36,
    CLAMPCOLOR = 37,
    HINT = 38,
    SAMPLEMASKI = 39,
    PRIMITIVERESTARTINDEX = 40,
    CLIPCONTROL = 41,
    VALIDATOR = 42,
      ## osgFX namespace
    VIEWMATRIXEXTRACTOR = 43,
      ## osgFX namespace
    OSGNV_PARAMETER_BLOCK = 44,
      ## osgNV namespace
    OSGNVEXT_TEXTURE_SHADER = 45,
      ## osgNV namespace
    OSGNVEXT_VERTEX_PROGRAM = 46,
      ## osgNV namespace
    OSGNVEXT_REGISTER_COMBINERS = 47,
      ## osgNV namespace
    OSGNVCG_PROGRAM = 48,
      ## osgNVCg namespace
    OSGNVSLANG_PROGRAM = 49,
      ## osgNVCg namespace
    OSGNVPARSE_PROGRAM_PARSER = 50,
      ## osgNVCg namespace
    UNIFORMBUFFERBINDING = 51,
      ## osgNVCg namespace
    TRANSFORMFEEDBACKBUFFERBINDING = 52,
      ## osgNVCg namespace
    ATOMICCOUNTERBUFFERBINDING = 53,
      ## osgNVCg namespace
    PATCH_PARAMETER = 54,
      ## osgNVCg namespace
    FRAME_BUFFER_OBJECT = 55,
      ## osgNVCg namespace
    VERTEX_ATTRIB_DIVISOR = 56,
      ## osgNVCg namespace
    SHADERSTORAGEBUFFERBINDING = 57,
      ## osgNVCg namespace
    INDIRECTDRAWBUFFERBINDING = 58,
      ## osgNVCg namespace
    VIEWPORTINDEXED = 59,
      ## osgNVCg namespace
    DEPTHRANGEINDEXED = 60,
      ## osgNVCg namespace
    SCISSORINDEXED = 61,
      ## osgNVCg namespace
    BINDIMAGETEXTURE = 62,
      ## osgNVCg namespace
    SAMPLER = 63,
      ## osgNVCg namespace
    CAPABILITY = 100
      ## osgNVCg namespace

  Options* {.size:sizeof(cuint),header: "CopyOp", importcpp: "osg::CopyOp::Options", pure.} = enum
    SHALLOW_COPY = 0,
    DEEP_COPY_OBJECTS = 1,
    DEEP_COPY_NODES = 2,
    DEEP_COPY_DRAWABLES = 4,
    DEEP_COPY_STATESETS = 8,
    DEEP_COPY_STATEATTRIBUTES = 16,
    DEEP_COPY_TEXTURES = 32,
    DEEP_COPY_IMAGES = 64,
    DEEP_COPY_ARRAYS = 128,
    DEEP_COPY_PRIMITIVES = 256,
    DEEP_COPY_SHAPES = 512,
    DEEP_COPY_UNIFORMS = 1024,
    DEEP_COPY_CALLBACKS = 2048,
    DEEP_COPY_USERDATA = 4096,
    DEEP_COPY_ALL = 2147483647

  AllocationMode* {.size:sizeof(cuint),header: "Image", importcpp: "osg::Image::AllocationMode", pure.} = enum
    NO_DELETE = 0,
    USE_NEW_DELETE = 1,
    USE_MALLOC_FREE = 2

  Binding* {.size:sizeof(cint),header: "Array", importcpp: "osg::Array::Binding", pure.} = enum
    ## The scope of applicability of the values in this array

    BIND_UNDEFINED = -1,
    BIND_OFF = 0,
    BIND_OVERALL = 1,
    BIND_PER_PRIMITIVE_SET = 2,
    BIND_PER_VERTEX = 4

  TraversalMode* {.size:sizeof(cuint),header: "NodeVisitor", importcpp: "osg::NodeVisitor::TraversalMode", pure.} = enum
    TRAVERSE_NONE = 0,
    TRAVERSE_PARENTS = 1,
    TRAVERSE_ALL_CHILDREN = 2,
    TRAVERSE_ACTIVE_CHILDREN = 3

  Coord* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Coord", pure.} = enum
    S = 0,
    T = 1,
    R = 2,
    Q = 3

  Type* {.size:sizeof(cuint),header: "PrimitiveSet", importcpp: "osg::PrimitiveSet::Type", pure.} = enum
    PrimitiveType = 0,
    DrawArraysPrimitiveType = 1,
    DrawArrayLengthsPrimitiveType = 2,
    DrawElementsUBytePrimitiveType = 3,
    DrawElementsUShortPrimitiveType = 4,
    DrawElementsUIntPrimitiveType = 5,
    MultiDrawArraysPrimitiveType = 6,
    DrawArraysIndirectPrimitiveType = 7,
    DrawElementsUByteIndirectPrimitiveType = 8,
    DrawElementsUShortIndirectPrimitiveType = 9,
    DrawElementsUIntIndirectPrimitiveType = 10,
    MultiDrawArraysIndirectPrimitiveType = 11,
    MultiDrawElementsUByteIndirectPrimitiveType = 12,
    MultiDrawElementsUShortIndirectPrimitiveType = 13,
    MultiDrawElementsUIntIndirectPrimitiveType = 14

  Equation* {.size:sizeof(cuint),header: "BlendEquation", importcpp: "osg::BlendEquation::Equation", pure.} = enum
    LOGIC_OP = 3057,
    FUNC_ADD = 32774,
    RGBA_MIN = 32775,
    RGBA_MAX = 32776,
    FUNC_SUBTRACT = 32778,
    FUNC_REVERSE_SUBTRACT = 32779,
    ALPHA_MIN = 33568,
    ALPHA_MAX = 33569

  State* {.header: "State", importcpp: "osg::State", byref.} = object #of class osg::Referenced
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

  Object* {.header: "Object", importcpp: "osg::Object", byref.} = object #of class osg::Referenced
    ## Base class/standard interface for objects which require IO support,
    ## cloning and reference counting. Based on GOF Composite, Prototype and
    ## Template Method patterns.

  StateAttribute* {.header: "StateAttribute", importcpp: "osg::StateAttribute", byref.} = object #of class osg::Object
    ## Base class for state attributes.

  CopyOp* {.header: "CopyOp", importcpp: "osg::CopyOp", byref.} = object
    ## Copy Op(erator) used to control whether shallow or deep copy is used
    ## during copy construction and clone operation.

  Referenced* {.header: "Referenced", importcpp: "osg::Referenced", byref.} = object
    ## Base class for providing reference counted objects.

  Image* {.header: "Image", importcpp: "osg::Image", byref.} = object #of class osg::BufferData
    ## Image class for encapsulating the storage texture image data.

  Vec3f* {.header: "Vec3f", importcpp: "osg::Vec3f", byref.} = object
    ## General purpose float triple for use as vertices, vectors and normals.
    ## Provides general math operations from addition through to cross
    ## products. No support yet added for float * Vec3f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec3f * float is
    ## okay

  AttributeDispatchers* {.header: "AttributeDispatchers", importcpp: "osg::AttributeDispatchers", byref.} = object #of osg::Referenced
    ## Helper class for managing the dispatch to OpenGL of various attribute
    ## arrays such as stored in osg::Geometry.

  VertexAttribAlias* {.header: "GLExtensions", importcpp: "osg::VertexAttribAlias", byref.} = object

  GLExtensions* {.header: "GLExtensions", importcpp: "osg::GLExtensions", byref.} = object #of osg::Referenced
    ## Main GLExtensions class for managing OpenGL extensions per graphics
    ## context.

  ShaderComposer* {.header: "ShaderComposer", importcpp: "osg::ShaderComposer", byref.} = object #of osg::Object
    ## deprecated

  GLBufferObject* {.header: "BufferObject", importcpp: "osg::GLBufferObject", byref.} = object #of class osg::GraphicsObject

  BufferData* {.header: "BufferObject", importcpp: "osg::BufferData", byref.} = object #of class osg::Object

  VertexBufferObject* {.header: "BufferObject", importcpp: "osg::VertexBufferObject", byref.} = object #of class osg::BufferObject

  ElementBufferObject* {.header: "BufferObject", importcpp: "osg::ElementBufferObject", byref.} = object #of class osg::BufferObject

  PixelBufferObject* {.header: "BufferObject", importcpp: "osg::PixelBufferObject", byref.} = object #of class osg::BufferObject

  Array* {.header: "Array", importcpp: "osg::Array", byref.} = object #of class osg::BufferData

  TemplateArray*[T; ARRAYTYPE:Type; DataSize:cint; DataType:cint] {.header: "Array", importcpp: "osg::TemplateArray", byref.} = object #of class osg::Array
    ## A concrete array holding elements of type T.

  IndexArray* {.header: "Array", importcpp: "osg::IndexArray", byref.} = object #of class osg::Array

  TemplateIndexArray*[T; ARRAYTYPE:Type; DataSize:cint; DataType:cint] {.header: "Array", importcpp: "osg::TemplateIndexArray", byref.} = object #of class osg::IndexArray

  Polytope* {.header: "Polytope", importcpp: "osg::Polytope", byref.} = object
    ## A Polytope class for representing convex clipping volumes made up of a
    ## set of planes. When adding planes, their normals should point inwards
    ## (into the volume)

  Shader* {.header: "Shader", importcpp: "osg::Shader", byref.} = object #of osg::Object
    ## //////////////////////////////////////////////////////////////////////
    ## // osg::Shader is an application-level abstraction of an OpenGL
    ## glShader. It is a container to load the shader source code text and
    ## manage its compilation. An osg::Shader may be attached to more than
    ## one osg::Program. Shader will automatically manage per-context
    ## instancing of the internal objects, if that is necessary for a
    ## particular display configuration.

  ShaderComponent* {.header: "Shader", importcpp: "osg::ShaderComponent", byref.} = object #of osg::Object

  Viewport* {.header: "Viewport", importcpp: "osg::Viewport", byref.} = object #of class osg::StateAttribute
    ## Encapsulate OpenGL glViewport.

  StateSet* {.header: "StateSet", importcpp: "osg::StateSet", byref.} = object #of class osg::Object
    ## Stores a set of modes and attributes which represent a set of OpenGL
    ## state. Notice that a StateSet contains just a subset of the whole
    ## OpenGL state. In OSG, each Drawable and each Node has a reference to a
    ## StateSet. These StateSets can be shared between different Drawables
    ## and Nodes (that is, several Drawables and Nodes can reference the same
    ## StateSet). Indeed, this practice is recommended whenever possible, as
    ## this minimizes expensive state changes in the graphics pipeline.

  GraphicsCostEstimator* {.header: "GraphicsCostEstimator", importcpp: "osg::GraphicsCostEstimator", byref.} = object #of osg::Referenced

  VertexArrayState* {.header: "VertexArrayState", importcpp: "osg::VertexArrayState", byref.} = object #of osg::Referenced

  VertexArrayStateList* {.header: "VertexArrayState", importcpp: "osg::VertexArrayStateList", byref.} = object

  GraphicsContext* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext", byref.} = object #of class osg::Object
    ## Base class for providing Windowing API agnostic access to creating and
    ## managing graphics context.

  MatrixTemplate*[T; RowN:cuint; ColN:cuint] {.header: "Uniform", importcpp: "osg::MatrixTemplate", byref.} = object

  Matrix2Template*[T] {.header: "Uniform", importcpp: "osg::Matrix2Template", byref.} = object #of MatrixTemplate<T, 2, 2>

  Matrix2x3Template*[T] {.header: "Uniform", importcpp: "osg::Matrix2x3Template", byref.} = object #of MatrixTemplate<T, 2, 3>

  Matrix2x4Template*[T] {.header: "Uniform", importcpp: "osg::Matrix2x4Template", byref.} = object #of MatrixTemplate<T, 2, 4>

  Matrix3x2Template*[T] {.header: "Uniform", importcpp: "osg::Matrix3x2Template", byref.} = object #of MatrixTemplate<T, 3, 2>

  Matrix3Template*[T] {.header: "Uniform", importcpp: "osg::Matrix3Template", byref.} = object #of MatrixTemplate<T, 3, 3>

  Matrix3x4Template*[T] {.header: "Uniform", importcpp: "osg::Matrix3x4Template", byref.} = object #of MatrixTemplate<T, 3, 4>

  Matrix4x2Template*[T] {.header: "Uniform", importcpp: "osg::Matrix4x2Template", byref.} = object #of MatrixTemplate<T, 4, 2>

  Matrix4x3Template*[T] {.header: "Uniform", importcpp: "osg::Matrix4x3Template", byref.} = object #of MatrixTemplate<T, 4, 3>

  Uniform* {.header: "Uniform", importcpp: "osg::Uniform", byref.} = object #of class osg::Object
    ## Uniform encapsulates glUniform values

  FrameStamp* {.header: "FrameStamp", importcpp: "osg::FrameStamp", byref.} = object #of class osg::Referenced
    ## Class which encapsulates the frame number, reference time and calendar
    ## time of specific frame, used to synchronize operations on the scene
    ## graph and other machines when using a graphics cluster. Note the
    ## calendar time can be an artificial simulation time or capture the real
    ## time of day etc.

  DisplaySettings* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings", byref.} = object #of osg::Referenced
    ## DisplaySettings class for encapsulating what visuals are required and
    ## have been set up, and the status of stereo viewing.

  ArgumentParser* {.header: "ArgumentParser", importcpp: "osg::ArgumentParser", byref.} = object

  Matrixf* {.header: "Matrixf", importcpp: "osg::Matrixf", byref.} = object

  Node* {.header: "Node", importcpp: "osg::Node", byref.} = object #of class osg::Object
    ## Base class for all internal nodes in the scene graph. Provides
    ## interface for most common node operations (Composite Pattern).

  Matrixd* {.header: "Matrixd", importcpp: "osg::Matrixd", byref.} = object

  RefMatrixd* {.header: "Matrixd", importcpp: "osg::RefMatrixd", byref.} = object #of class osg::Object

  BoundingSphereImpl*[VT] {.header: "BoundingSphere", importcpp: "osg::BoundingSphereImpl", byref.} = object
    ## General purpose bounding sphere class for enclosing
    ## nodes/objects/vertices. Bounds internal osg::Nodes in the scene,
    ## assists in view frustum culling, etc. Similar in function to
    ## BoundingBox, it's quicker for evaluating culling but generally will
    ## not cull as aggressively because it encloses a greater volume.

  Light* {.header: "Light", importcpp: "osg::Light", byref.} = object #of class osg::StateAttribute
    ## Light state class which encapsulates OpenGL glLight() functionality.

  NodeVisitor* {.header: "NodeVisitor", importcpp: "osg::NodeVisitor", byref.} = object #of class osg::Object
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

  Vec3d* {.header: "Vec3d", importcpp: "osg::Vec3d", byref.} = object
    ## General purpose double triple for use as vertices, vectors and
    ## normals. Provides general math operations from addition through to
    ## cross products. No support yet added for double * Vec3d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. Vec3d
    ## * double is okay

  Vec4f* {.header: "Vec4f", importcpp: "osg::Vec4f", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4f * float is
    ## okay

  CullSettings* {.header: "CullSettings", importcpp: "osg::CullSettings", byref.} = object #of osg::Referenced

  Stats* {.header: "Stats", importcpp: "osg::Stats", byref.} = object #of osg::Referenced

  View* {.header: "View", importcpp: "osg::View", byref.} = object #of osg::Object
    ## View - maintains a master camera view and a list of slave cameras that
    ## are relative to this master camera. Note, if no slave cameras are
    ## attached to the view then the master camera does both the control and
    ## implementation of the rendering of the scene, but if slave cameras are
    ## present then the master controls the view onto the scene, while the
    ## slaves implement the rendering of the scene.

  RefBlock* {.header: "OperationThread", importcpp: "osg::RefBlock", byref.} = object #of osg::Referenced

  Operation* {.header: "OperationThread", importcpp: "osg::Operation", byref.} = object #of class osg::Referenced
    ## Base class for implementing graphics operations.

  OperationThread* {.header: "OperationThread", importcpp: "osg::OperationThread", byref.} = object #of class osg::Referenced
    ## OperationThread is a helper class for running Operation within a
    ## single thread.

  ColorMask* {.header: "ColorMask", importcpp: "osg::ColorMask", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL glColorMaskFunc/Op/Mask functions.

  RenderInfo* {.header: "RenderInfo", importcpp: "osg::RenderInfo", byref.} = object

  Texture* {.header: "Texture", importcpp: "osg::Texture", byref.} = object #of osg::StateAttribute
    ## Texture pure virtual base class that encapsulates OpenGL texture
    ## functionality common to the various types of OSG textures.

  TexGen* {.header: "TexGen", importcpp: "osg::TexGen", byref.} = object #of class osg::StateAttribute
    ## TexGen encapsulates the OpenGL glTexGen (texture coordinate
    ## generation) state.

  ref_ptr*[T] {.header: "ref_ptr", importcpp: "osg::ref_ptr", byref.} = object
    ## Smart pointer for handling referenced counted objects.

  Vec4d* {.header: "Vec4d", importcpp: "osg::Vec4d", byref.} = object
    ## General purpose double quad. Uses include representation of color
    ## coordinates. No support yet added for double * Vec4d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. Vec4d
    ## * double is okay

  Vec2d* {.header: "Vec2d", importcpp: "osg::Vec2d", byref.} = object
    ## General purpose double pair, uses include representation of texture
    ## coordinates. No support yet added for double * Vec2d - is it
    ## necessary? Need to define a non-member non-friend operator* etc. BTW:
    ## Vec2d * double is okay

  Program* {.header: "Program", importcpp: "osg::Program", byref.} = object #of osg::StateAttribute
    ## //////////////////////////////////////////////////////////////////////
    ## // osg::Program is an application-level abstraction of an OpenGL
    ## glProgram. It is an osg::StateAttribute that, when applied, will
    ## activate a glProgram for subsequent rendering. osg::Shaders containing
    ## the actual shader source code are attached to a Program, which will
    ## then manage the compilation, linking, and activation of the GLSL
    ## program. osg::Program will automatically manage per-context instancing
    ## of the OpenGL glPrograms, if that is necessary for a particular
    ## display configuration.

  Drawable* {.header: "Drawable", importcpp: "osg::Drawable", byref.} = object #of class osg::Node
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

  BoundingBoxImpl*[VT] {.header: "BoundingBox", importcpp: "osg::BoundingBoxImpl", byref.} = object
    ## General purpose axis-aligned bounding box class for enclosing
    ## objects/vertices. Bounds leaf objects in a scene such as osg::Drawable
    ## objects. Used for frustum culling etc.

  ApplicationUsage* {.header: "ApplicationUsage", importcpp: "osg::ApplicationUsage", byref.} = object #of osg::Referenced

  Quat* {.header: "Quat", importcpp: "osg::Quat", byref.} = object
    ## A quaternion class. It can be used to represent an orientation in 3D
    ## space.

  Camera* {.header: "Camera", importcpp: "osg::Camera", byref.} = object #of class osg::Transform
    ## Camera - is a subclass of Transform which represents encapsulates the
    ## settings of a Camera.

  ValueObject* {.header: "ValueObject", importcpp: "osg::ValueObject", byref.} = object #of class osg::Object

  TemplateValueObject*[T] {.header: "ValueObject", importcpp: "osg::TemplateValueObject", byref.} = object #of class osg::ValueObject

  Callback* {.header: "Callback", importcpp: "osg::Callback", byref.} = object #of class osg::Object

  CallbackObject* {.header: "Callback", importcpp: "osg::CallbackObject", byref.} = object #of osg::Callback
    ## Callback for attaching a script to a Node's via there
    ## UserDataContainer for the purpose of overriding class methods within
    ## scripts.

  NodeCallback* {.header: "Callback", importcpp: "osg::NodeCallback", byref.} = object #of class osg::Callback
    ## Deprecated.

  StateAttributeCallback* {.header: "Callback", importcpp: "osg::StateAttributeCallback", byref.} = object #of osg::Callback
    ## Deprecated.

  UniformCallback* {.header: "Callback", importcpp: "osg::UniformCallback", byref.} = object #of osg::Callback
    ## Deprecated.

  DrawableUpdateCallback* {.header: "Callback", importcpp: "osg::DrawableUpdateCallback", byref.} = object #of class osg::Callback

  DrawableEventCallback* {.header: "Callback", importcpp: "osg::DrawableEventCallback", byref.} = object #of class osg::Callback

  DrawableCullCallback* {.header: "Callback", importcpp: "osg::DrawableCullCallback", byref.} = object #of class osg::Callback

  UserDataContainer* {.header: "UserDataContainer", importcpp: "osg::UserDataContainer", byref.} = object #of osg::Object
    ## Internal structure for storing all user data.

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

  PrimitiveSet* {.header: "PrimitiveSet", importcpp: "osg::PrimitiveSet", byref.} = object #of class osg::BufferData

  DrawElements* {.header: "PrimitiveSet", importcpp: "osg::DrawElements", byref.} = object #of class osg::PrimitiveSet

  buffered_value*[T] {.header: "buffered_value", importcpp: "osg::buffered_value", byref.} = object
    ## Implements a simple buffered value for values that need to be buffered
    ## on a per graphics context basis.

  buffered_object*[T] {.header: "buffered_value", importcpp: "osg::buffered_object", byref.} = object

  DeleteHandler* {.header: "DeleteHandler", importcpp: "osg::DeleteHandler", byref.} = object
    ## Class for overriding the default delete behaviour so that users can
    ## implement their own object deletion schemes. This might be used to
    ## implement a protection scheme that avoids multiple threads deleting
    ## objects unintentionally. Note, the DeleteHandler cannot itself be
    ## reference counted, otherwise it would be responsible for deleting
    ## itself! A static auto_ptr<> is used internally in Referenced.cpp to
    ## manage the DeleteHandler's memory.

  Observer* {.header: "Observer", importcpp: "osg::Observer", byref.} = object
    ## Observer base class for tracking when objects are unreferenced (their
    ## reference count goes to 0) and are being deleted.

  ObserverSet* {.header: "Observer", importcpp: "osg::ObserverSet", byref.} = object #of osg::Referenced
    ## Class used by osg::Referenced to track the observers associated with
    ## it.

  LOD* {.header: "LOD", importcpp: "osg::LOD", byref.} = object #of class osg::Group
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

  Projection* {.header: "Projection", importcpp: "osg::Projection", byref.} = object #of class osg::Group
    ## Projection nodes set up the frustum/orthographic projection used when
    ## rendering the scene.

  Switch* {.header: "Switch", importcpp: "osg::Switch", byref.} = object #of class osg::Group
    ## Switch is a Group node that allows switching between children. Typical
    ## uses would be for objects which might need to be rendered differently
    ## at different times, for instance a switch could be used to represent
    ## the different states of a traffic light.

  Transform* {.header: "Transform", importcpp: "osg::Transform", byref.} = object #of class osg::Group
    ## A Transform is a group node for which all children are transformed by
    ## a 4x4 matrix. It is often used for positioning objects within a scene,
    ## producing trackball functionality or for animation.

  OccluderNode* {.header: "OccluderNode", importcpp: "osg::OccluderNode", byref.} = object #of class osg::Group
    ## OccluderNode is a Group node which provides hooks for adding
    ## ConvexPlanarOccluders to the scene.

  CullStack* {.header: "CullStack", importcpp: "osg::CullStack", byref.} = object #of osg::CullSettings
    ## A CullStack class which accumulates the current project, modelview
    ## matrices and the CullingSet.

  ConvexPlanarOccluder* {.header: "ConvexPlanarOccluder", importcpp: "osg::ConvexPlanarOccluder", byref.} = object #of class osg::Object
    ## A class for representing convex clipping volumes made up of several
    ## ConvexPlanarPolygon.

  ShadowVolumeOccluder* {.header: "ShadowVolumeOccluder", importcpp: "osg::ShadowVolumeOccluder", byref.} = object
    ## ShadowVolumeOccluder is a helper class for implementing shadow
    ## occlusion culling.

  CullingSet* {.header: "CullingSet", importcpp: "osg::CullingSet", byref.} = object #of class osg::Referenced
    ## A CullingSet class which contains a frustum and a list of occluders.

  Plane* {.header: "Plane", importcpp: "osg::Plane", byref.} = object
    ## A plane class. It can be used to represent an infinite plane.

  Vec4us* {.header: "Vec4us", importcpp: "osg::Vec4us", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4us - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec4us * float is okay

  Vec3i* {.header: "Vec3i", importcpp: "osg::Vec3i", byref.} = object
    ## General purpose integer triple

  Vec3s* {.header: "Vec3s", importcpp: "osg::Vec3s", byref.} = object

  Vec2us* {.header: "Vec2us", importcpp: "osg::Vec2us", byref.} = object

  Vec2s* {.header: "Vec2s", importcpp: "osg::Vec2s", byref.} = object

  Vec2b* {.header: "Vec2b", importcpp: "osg::Vec2b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec2b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec2b * float is
    ## okay

  Vec3ui* {.header: "Vec3ui", importcpp: "osg::Vec3ui", byref.} = object
    ## General purpose integer triple

  Vec2ub* {.header: "Vec2ub", importcpp: "osg::Vec2ub", byref.} = object
    ## General purpose unsigned byte pair.

  Vec2ui* {.header: "Vec2ui", importcpp: "osg::Vec2ui", byref.} = object
    ## General purpose integer pair.

  Vec3us* {.header: "Vec3us", importcpp: "osg::Vec3us", byref.} = object

  Vec3b* {.header: "Vec3b", importcpp: "osg::Vec3b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec3b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec3b * float is
    ## okay

  Vec4b* {.header: "Vec4b", importcpp: "osg::Vec4b", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4b - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4b * float is
    ## okay

  Vec4ui* {.header: "Vec4ui", importcpp: "osg::Vec4ui", byref.} = object
    ## General purpose integer quad

  Vec3ub* {.header: "Vec3ub", importcpp: "osg::Vec3ub", byref.} = object
    ## General purpose float triple. Uses include representation of color
    ## coordinates. No support yet added for float * Vec3ub - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec3ub * float is okay

  Vec4s* {.header: "Vec4s", importcpp: "osg::Vec4s", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. Vec4f * float is
    ## okay

  Vec2i* {.header: "Vec2i", importcpp: "osg::Vec2i", byref.} = object
    ## General purpose integer pair.

  Vec4ub* {.header: "Vec4ub", importcpp: "osg::Vec4ub", byref.} = object
    ## General purpose float quad. Uses include representation of color
    ## coordinates. No support yet added for float * Vec4ub - is it
    ## necessary? Need to define a non-member non-friend operator* etc.
    ## Vec4ub * float is okay

  Vec4i* {.header: "Vec4i", importcpp: "osg::Vec4i", byref.} = object
    ## General purpose integer quad

  Vec2f* {.header: "Vec2f", importcpp: "osg::Vec2f", byref.} = object
    ## General purpose float pair. Uses include representation of texture
    ## coordinates. No support yet added for float * Vec2f - is it necessary?
    ## Need to define a non-member non-friend operator* etc. BTW: Vec2f *
    ## float is okay

  Geometry* {.header: "Geometry", importcpp: "osg::Geometry", byref.} = object #of class osg::Drawable

  Shape* {.header: "Shape", importcpp: "osg::Shape", byref.} = object #of class osg::Object
    ## Base class for all shape types. Shapes are used to either for culling
    ## and collision detection or to define the geometric shape of
    ## procedurally generate Geometry.

  ShapeVisitor* {.header: "Shape", importcpp: "osg::ShapeVisitor", byref.} = object

  ConstShapeVisitor* {.header: "Shape", importcpp: "osg::ConstShapeVisitor", byref.} = object

  TessellationHints* {.header: "Shape", importcpp: "osg::TessellationHints", byref.} = object #of class osg::Object
    ## Describe several hints that can be passed to a Tessellator (like the
    ## one used by ShapeDrawable) as a mean to try to influence the way it
    ## works.

  AutoTransform* {.header: "AutoTransform", importcpp: "osg::AutoTransform", byref.} = object #of class osg::Transform
    ## AutoTransform is a derived form of Transform that automatically scales
    ## or rotates to keep its children aligned with screen coordinates.

  PositionAttitudeTransform* {.header: "PositionAttitudeTransform", importcpp: "osg::PositionAttitudeTransform", byref.} = object #of class osg::Transform
    ## PositionAttitudeTransform - is a Transform. Sets the coordinate
    ## transform via a Vec3 position and Quat attitude.

  MatrixTransform* {.header: "MatrixTransform", importcpp: "osg::MatrixTransform", byref.} = object #of class osg::Transform
    ## MatrixTransform - is a subclass of Transform which has an osg::Matrix
    ## which represents a 4x4 transformation of its children from local
    ## coordinates into the Transform's parent coordinates.

  Geode* {.header: "Geode", importcpp: "osg::Geode", byref.} = object #of class osg::Group
    ## A Geode is a "geometry node", that is, a leaf node on the scene graph
    ## that can have "renderable things" attached to it. In OSG, renderable
    ## things are represented by objects from the Drawable class, so a Geode
    ## is a Node whose purpose is grouping Drawables.

  Group* {.header: "Group", importcpp: "osg::Group", byref.} = object #of class osg::Node
    ## General group node which maintains a list of children. Children are
    ## reference counted. This allows children to be shared with memory
    ## management handled automatically via osg::Referenced.

  ClipPlane* {.header: "ClipPlane", importcpp: "osg::ClipPlane", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL glClipPlane().

  ConvexPlanarPolygon* {.header: "ConvexPlanarPolygon", importcpp: "osg::ConvexPlanarPolygon", byref.} = object
    ## A class for representing components of convex clipping volumes.

  ValueMap* {.header: "ValueMap", importcpp: "osg::ValueMap", byref.} = object #of osg::Object

  GraphicsThread* {.header: "GraphicsThread", importcpp: "osg::GraphicsThread", byref.} = object #of osg::OperationThread
    ## GraphicsThread is a helper class for running OpenGL GraphicsOperation
    ## within a single thread assigned to a specific GraphicsContext.

  ObserverNodePath* {.header: "ObserverNodePath", importcpp: "osg::ObserverNodePath", byref.} = object
    ## ObserverNodePath is an observer class for tracking changes to a
    ## NodePath, that automatically invalidates it when nodes are deleted.

  Texture2DMultisample* {.header: "Texture2DMultisample", importcpp: "osg::Texture2DMultisample", byref.} = object #of class osg::Texture
    ## Texture2DMultisample state class which encapsulates OpenGL 2D
    ## multisampled texture functionality. Multisampled texture were
    ## introduced with OpenGL 3.1 and extension GL_ARB_texture_multisample.
    ## See http://www.opengl.org/registry/specs/ARB/texture_multisample.txt
    ## for more info.

  Texture2D* {.header: "Texture2D", importcpp: "osg::Texture2D", byref.} = object #of class osg::Texture
    ## Encapsulates OpenGL 2D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  Texture2DArray* {.header: "Texture2DArray", importcpp: "osg::Texture2DArray", byref.} = object #of class osg::Texture
    ## Texture2DArray state class which encapsulates OpenGL 2D array texture
    ## functionality. Texture arrays were introduced with Shader Model 4.0
    ## hardware.

  Texture3D* {.header: "Texture3D", importcpp: "osg::Texture3D", byref.} = object #of class osg::Texture
    ## Encapsulates OpenGL 3D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  Texture1D* {.header: "Texture1D", importcpp: "osg::Texture1D", byref.} = object #of class osg::Texture
    ## Encapsulates OpenGL 1D texture functionality. Doesn't support cube
    ## maps, so ignore face parameters.

  TextureRectangle* {.header: "TextureRectangle", importcpp: "osg::TextureRectangle", byref.} = object #of class osg::Texture
    ## Texture state class which encapsulates OpenGL texture functionality.

  TextureCubeMap* {.header: "TextureCubeMap", importcpp: "osg::TextureCubeMap", byref.} = object #of class osg::Texture
    ## TextureCubeMap state class which encapsulates OpenGL texture cubemap
    ## functionality.

  LightSource* {.header: "LightSource", importcpp: "osg::LightSource", byref.} = object #of class osg::Group
    ## Leaf Node for defining a light in the scene.

  ClearNode* {.header: "ClearNode", importcpp: "osg::ClearNode", byref.} = object #of class osg::Group
    ## A Group node for clearing the color and depth buffers. Use
    ## setClearColor to change the clear color, and setRequiresClear to
    ## disable/enable the call clearing. You might want to disable clearing
    ## if you perform your clear by drawing fullscreen geometry. If you do
    ## this, add child nodes to perform such drawing. The default StateSet
    ## associated with this node places children in render bin -1 to ensure
    ## that children are rendered prior to the rest of the scene graph.

  Sequence* {.header: "Sequence", importcpp: "osg::Sequence", byref.} = object #of class osg::Group
    ## Sequence is a Group node which allows automatic, time based switching
    ## between children.

  CoordinateSystemNode* {.header: "CoordinateSystemNode", importcpp: "osg::CoordinateSystemNode", byref.} = object #of class osg::Group
    ## CoordinateSystem encapsulate the coordinate system that is associated
    ## with objects in a scene. For an overview of common earth bases
    ## coordinate systems see http://www.colorado.edu/geography/gcraft/notes/
    ## coordsys/coordsys_f.html

  CameraView* {.header: "CameraView", importcpp: "osg::CameraView", byref.} = object #of class osg::Transform
    ## CameraView - is a Transform that is used to specify camera views from
    ## within the scene graph. The application must attach a camera to a
    ## CameraView via the NodePath from the top of the scene graph to the
    ## CameraView node itself, and accumulate the view matrix from this
    ## NodePath.

  TexGenNode* {.header: "TexGenNode", importcpp: "osg::TexGenNode", byref.} = object #of class osg::Group
    ## Node for defining the position of TexGen in the scene.

  ClipNode* {.header: "ClipNode", importcpp: "osg::ClipNode", byref.} = object #of class osg::Group
    ## Node for defining the position of ClipPlanes in the scene.

  ValueStack* {.header: "ValueStack", importcpp: "osg::ValueStack", byref.} = object #of osg::Object

  PagedLOD* {.header: "PagedLOD", importcpp: "osg::PagedLOD", byref.} = object #of class osg::LOD
    ## PagedLOD.

  ProxyNode* {.header: "ProxyNode", importcpp: "osg::ProxyNode", byref.} = object #of class osg::Group
    ## ProxyNode.

  Billboard* {.header: "Billboard", importcpp: "osg::Billboard", byref.} = object #of class osg::Geode
    ## Billboard is a derived form of Geode that orients its osg::Drawable
    ## children to face the eye point. Typical uses include trees and
    ## particle explosions.

  OcclusionQueryNode* {.header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode", byref.} = object #of osg::Group

  Vec4* {.header: "Vec4", importcpp: "osg::Vec4".} = Vec4f
  ByteArray* {.header: "Array", importcpp: "osg::ByteArray".} = TemplateIndexArray[GLbyte,ByteArrayType,1,5120]
  ShortArray* {.header: "Array", importcpp: "osg::ShortArray".} = TemplateIndexArray[GLshort,ShortArrayType,1,5122]
  IntArray* {.header: "Array", importcpp: "osg::IntArray".} = TemplateIndexArray[GLint,IntArrayType,1,5124]
  UByteArray* {.header: "Array", importcpp: "osg::UByteArray".} = TemplateIndexArray[GLubyte,UByteArrayType,1,5121]
  UShortArray* {.header: "Array", importcpp: "osg::UShortArray".} = TemplateIndexArray[GLushort,UShortArrayType,1,5123]
  UIntArray* {.header: "Array", importcpp: "osg::UIntArray".} = TemplateIndexArray[GLuint,UIntArrayType,1,5125]
  FloatArray* {.header: "Array", importcpp: "osg::FloatArray".} = TemplateArray[GLfloat,FloatArrayType,1,5126]
  DoubleArray* {.header: "Array", importcpp: "osg::DoubleArray".} = TemplateArray[GLdouble,DoubleArrayType,1,5130]
  Vec4ubArray* {.header: "Array", importcpp: "osg::Vec4ubArray".} = TemplateArray[Vec4ub,Vec4ubArrayType,4,5121]
  Vec2Array* {.header: "Array", importcpp: "osg::Vec2Array".} = TemplateArray[Vec2,Vec2ArrayType,2,5126]
  Vec3Array* {.header: "Array", importcpp: "osg::Vec3Array".} = TemplateArray[Vec3,Vec3ArrayType,3,5126]
  Vec4Array* {.header: "Array", importcpp: "osg::Vec4Array".} = TemplateArray[Vec4,Vec4ArrayType,4,5126]
  Vec2dArray* {.header: "Array", importcpp: "osg::Vec2dArray".} = TemplateArray[Vec2d,Vec2dArrayType,2,5130]
  Vec3dArray* {.header: "Array", importcpp: "osg::Vec3dArray".} = TemplateArray[Vec3d,Vec3dArrayType,3,5130]
  Vec4dArray* {.header: "Array", importcpp: "osg::Vec4dArray".} = TemplateArray[Vec4d,Vec4dArrayType,4,5130]
  UInt64Array* {.header: "Array", importcpp: "osg::UInt64Array".} = TemplateIndexArray[GLuint64,UInt64ArrayType,1,5135]
  Int64Array* {.header: "Array", importcpp: "osg::Int64Array".} = TemplateIndexArray[GLint64,Int64ArrayType,1,5134]
  ShaderDefines* {.header: "Shader", importcpp: "osg::ShaderDefines".} = cint
  Value_type* {.header: "Viewport", importcpp: "osg::Viewport::value_type".} = cdouble
  Timer_t* {.header: "Timer", importcpp: "osg::Timer_t".} = culonglong
  Matrix* {.header: "Matrix", importcpp: "osg::Matrix".} = Matrixd
  RefMatrix* {.header: "Matrix", importcpp: "osg::RefMatrix".} = RefMatrixd
  NodePath* {.header: "Node", importcpp: "osg::NodePath".} = cint
  MatrixList* {.header: "Node", importcpp: "osg::MatrixList".} = cint
  NodeMask* {.header: "Node", importcpp: "osg::Node::NodeMask".} = cuint
  BoundingSpheref* {.header: "BoundingSphere", importcpp: "osg::BoundingSpheref".} = BoundingSphereImpl[Vec3f]
  BoundingSphered* {.header: "BoundingSphere", importcpp: "osg::BoundingSphered".} = BoundingSphereImpl[Vec3d]
  BoundingSphere* {.header: "BoundingSphere", importcpp: "osg::BoundingSphere".} = BoundingSpheref
  Vec3* {.header: "Vec3", importcpp: "osg::Vec3".} = Vec3f
  Vec2* {.header: "Vec2", importcpp: "osg::Vec2".} = Vec2f
  BoundingBoxf* {.header: "BoundingBox", importcpp: "osg::BoundingBoxf".} = BoundingBoxImpl[Vec3f]
  BoundingBoxd* {.header: "BoundingBox", importcpp: "osg::BoundingBoxd".} = BoundingBoxImpl[Vec3d]
  BoundingBox* {.header: "BoundingBox", importcpp: "osg::BoundingBox".} = BoundingBoxf
  Parameters* {.header: "Callback", importcpp: "osg::Parameters".} = cint
  VectorGLuint* {.header: "PrimitiveSet", importcpp: "osg::VectorGLuint".} = MixinVector[GLuint]
  ShadowVolumeOccluderList* {.header: "ShadowVolumeOccluder", importcpp: "osg::ShadowVolumeOccluderList".} = cint
  NodeList* {.header: "Group", importcpp: "osg::NodeList".} = cint

  ostream* {.header: "<ostream>", importcpp: "ostream::otream".} = object

proc `=`*(this: var DeleteHandler, a00: DeleteHandler) {.importcpp: "# = #".}

proc `=`*(this: var CullSettings, settings: CullSettings)  {.importcpp: "# = #".}