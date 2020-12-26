import /usr/include/osg/Vec3  # provides: osg::Vec3
import /usr/include/osg/Vec4  # provides: osg::Vec4
import /usr/include/osg/Vec2  # provides: osg::Vec2
import /usr/include/osg/Vec4d  # provides: osg::Vec4d
import /usr/include/osg/Vec3d  # provides: osg::Vec3d
import /usr/include/osg/Vec2d  # provides: osg::Vec2d
type
  IndexPointer* {.header: "TemplatePrimitiveFunctor", importcpp: "osg::TemplatePrimitiveFunctor::drawElementsTemplate::IndexPointer".} = ptr IndexType
  TemplatePrimitiveFunctor* {.header: "TemplatePrimitiveFunctor", importcpp: "osg::TemplatePrimitiveFunctor", byref.} [T] = object #of class osg::PrimitiveFunctor
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

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TemplatePrimitiveFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TemplatePrimitiveFunctor"
