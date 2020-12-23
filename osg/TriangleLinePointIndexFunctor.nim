import gl # Provides GLenum, GLint, GLubyte, GLushort, GLuint, GLsizei
import Vec2d # Provides Vec2d
import Vec3d # Provides Vec3d
import Vec4d # Provides Vec4d
import Vec2 # Provides Vec2
import Vec3 # Provides Vec3
import Vec4 # Provides Vec4


type
  # Typedefs
  Index* {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor::drawElements::Index".} = I
  IndexPointer* {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor::drawElements::IndexPointer".} = ptr I
{.push header: "TriangleLinePointIndexFunctor".}


# Constructors and methods
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

proc drawElements*[I](this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr I)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.} # header: "TriangleLinePointIndexFunctor
