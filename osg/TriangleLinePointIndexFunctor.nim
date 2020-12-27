import Vec3  # provides: osg::Vec3
import Vec4  # provides: osg::Vec4
import Vec2  # provides: osg::Vec2
import Vec4d  # provides: osg::Vec4d
import Vec3d  # provides: osg::Vec3d
import Vec2d  # provides: osg::Vec2d
type
  TriangleLinePointIndexFunctor*[T] {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor", byref.} = object #of osg::PrimitiveIndexFunctor

  Index* {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor::drawElements::Index".} = I
  IndexPointer* {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor::drawElements::IndexPointer".} = ptr I


{.push header: "TriangleLinePointIndexFunctor".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc begin*(this: var TriangleLinePointIndexFunctor, mode: GLenum)  {.importcpp: "begin".}

proc vertex*(this: var TriangleLinePointIndexFunctor, vert: cuint)  {.importcpp: "vertex".}

proc `end`*(this: var TriangleLinePointIndexFunctor)  {.importcpp: "end".}

proc drawArrays*(this: var TriangleLinePointIndexFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TriangleLinePointIndexFunctor"
