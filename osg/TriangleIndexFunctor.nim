import gl # Provides GLenum, GLint, GLubyte, GLushort, GLuint, GLsizei
import Vec2d # Provides Vec2d
import Vec3d # Provides Vec3d
import Vec4d # Provides Vec4d
import Vec2 # Provides Vec2
import Vec3 # Provides Vec3
import Vec4 # Provides Vec4


type
  # Typedefs
  Index* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::Index".} = GLubyte
  IndexPointer* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::IndexPointer".} = ptr Index
  Index* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::Index".} = GLushort
  IndexPointer* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::IndexPointer".} = ptr Index
  Index* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::Index".} = GLuint
  IndexPointer* {.header: "TriangleIndexFunctor", importcpp: "osg::TriangleIndexFunctor::drawElements::IndexPointer".} = ptr Index
{.push header: "TriangleIndexFunctor".}


# Constructors and methods
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

{.pop.} # header: "TriangleIndexFunctor
