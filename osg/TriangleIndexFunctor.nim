import /usr/include/osg/Vec3  # provides: osg::Vec3
import /usr/include/osg/Vec4  # provides: osg::Vec4
import /usr/include/osg/Vec2  # provides: osg::Vec2
import /usr/include/osg/Vec4d  # provides: osg::Vec4d
import /usr/include/osg/Vec3d  # provides: osg::Vec3d
import /usr/include/osg/Vec2d  # provides: osg::Vec2d
type
  Index* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::Index".} = GLuint
  IndexPointer* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::IndexPointer".} = ptr Index
  TriangleIndexFunctor* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor", byref.} [T] = object #of class osg::PrimitiveIndexFunctor



{.push header: "TriangleIndexFunctor".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleIndexFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TriangleIndexFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TriangleIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TriangleIndexFunctor"
