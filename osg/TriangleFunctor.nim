import gl # Provides GLubyte, GLushort, GLuint


type
  # Typedefs
  IndexPointer* {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor::drawElements::IndexPointer".} = ptr GLubyte
  IndexPointer* {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor::drawElements::IndexPointer".} = ptr GLushort
  IndexPointer* {.header: "TriangleFunctor", importcpp: "osg::TriangleFunctor::drawElements::IndexPointer".} = ptr GLuint
{.push header: "TriangleFunctor".}


# Constructors and methods
proc constructTriangleFunctor*[T](): TriangleFunctor {.constructor,importcpp: "TriangleFunctor<T>".}

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

{.pop.} # header: "TriangleFunctor
