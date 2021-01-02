import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: Vec4  was providing: osg::Vec4
  # File: Vec2  was providing: osg::Vec2
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
type
  TemplatePrimitiveFunctor*[T] {.header: "TemplatePrimitiveFunctor", importcpp: "osg::TemplatePrimitiveFunctor", byref.} = object #of class osg::PrimitiveFunctor
    ## Provides access to the primitives that compose an osg::Drawable.
    ## Notice that TemplatePrimitiveFunctor is a class template, and that it
    ## inherits from its template parameter T. This template parameter must
    ## implement operator()(const osg::Vec3 v1, const osg::Vec3 v2, const
    ## osg::Vec3 v3, bool treatVertexDataAsTemporary), operator()(const
    ## osg::Vec3 v1, const osg::Vec3 v2, bool treatVertexDataAsTemporary),
    ## operator()(const osg::Vec3 v1, const osg::Vec3 v2, const osg::Vec3 v3,
    ## bool treatVertexDataAsTemporary), and operator()(const osg::Vec3 v1,
    ## const osg::Vec3 v2, const osg::Vec3 v3, const osg::Vec3 v4, bool
    ## treatVertexDataAsTemporary) which will be called for the matching
    ## primitive when the functor is applied to a Drawable. Parameters v1,
    ## v2, v3, and v4 are the vertices of the primitive. The last parameter,
    ## treatVertexDataAsTemporary, indicates whether these vertices are
    ## coming from a "real" vertex array, or from a temporary vertex array,
    ## created by the TemplatePrimitiveFunctor from some other geometry
    ## representation.



{.push header: "TemplatePrimitiveFunctor".}

proc constructTemplatePrimitiveFunctor*[T](): TemplatePrimitiveFunctor {.constructor,importcpp: "osg::TemplatePrimitiveFunctor::TemplatePrimitiveFunctor<T>".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, a00: cuint, a01: ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, a00: cuint, a01: ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, a00: cuint, a01: ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, a00: cuint, a01: ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, a00: cuint, a01: ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TemplatePrimitiveFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TemplatePrimitiveFunctor"
