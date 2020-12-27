import Vec3  # provides: osg::Vec3
import Vec4  # provides: osg::Vec4
import Vec2  # provides: osg::Vec2
import Vec4d  # provides: osg::Vec4d
import Vec3d  # provides: osg::Vec3d
import Vec2d  # provides: osg::Vec2d
type
  TriangleFunctor* {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor", byref.} [T]= object #of class osg::PrimitiveFunctor
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

  IndexPointer* {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor::drawElements::IndexPointer".} = ptr GLuint


{.push header: "TriangleFunctor".}

proc constructTriangleFunctor*[T](): TriangleFunctor {.constructor,importcpp: "osg::TriangleFunctor::TriangleFunctor<T>".}

proc setVertexArray*(this: var TriangleFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TriangleFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TriangleFunctor"
