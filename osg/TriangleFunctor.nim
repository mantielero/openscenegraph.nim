import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: Vec4  was providing: osg::Vec4
  # File: Vec2  was providing: osg::Vec2
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
type
  TriangleFunctor*[T] {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor", byref.} = object #of class osg::PrimitiveFunctor
    ## Provides access to the triangles that compose an osg::Drawable. If the
    ## Drawable is not composed of triangles, the TriangleFunctor will
    ## convert the primitives to triangles whenever possible. Notice that
    ## TriangleFunctor is a class template, and that it inherits from its
    ## template parameter T. This template parameter must implement
    ## T::operator() (const osg::Vec3 v1, const osg::Vec3 v2, const osg::Vec3
    ## v3, bool treatVertexDataAsTemporary), which will be called for every
    ## triangle when the functor is applied to a Drawable. Parameters v1, v2,
    ## and v3 are the triangle vertices. The fourth parameter,
    ## treatVertexDataAsTemporary, indicates whether these vertices are
    ## coming from a "real" vertex array, or from a temporary vertex array,
    ## created by the TriangleFunctor from some other geometry
    ## representation.



{.push header: "TriangleFunctor".}

proc constructTriangleFunctor*[T](): TriangleFunctor {.constructor,importcpp: "osg::TriangleFunctor::TriangleFunctor<T>".}

proc setVertexArray*(this: var TriangleFunctor, a00: cuint, a01: ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, a00: cuint, a01: ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, a00: cuint, a01: ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, a00: cuint, a01: ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, a00: cuint, a01: ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TriangleFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TriangleFunctor"
