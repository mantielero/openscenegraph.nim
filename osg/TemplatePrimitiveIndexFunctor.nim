import gl # Provides GLubyte, GLushort, GLuint


type
  # Typedefs
  Index* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::Index".} = GLubyte
  IndexPointer* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::IndexPointer".} = ptr Index
  Index* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::Index".} = GLushort
  IndexPointer* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::IndexPointer".} = ptr Index
  Index* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::Index".} = GLuint
  IndexPointer* {.header: "TemplatePrimitiveIndexFunctor", importcpp: "osg::TemplatePrimitiveIndexFunctor::drawElements::IndexPointer".} = ptr Index
{.push header: "TemplatePrimitiveIndexFunctor".}


# Constructors and methods
proc constructTemplatePrimitiveIndexFunctor*[T](): TemplatePrimitiveIndexFunctor {.constructor,importcpp: "TemplatePrimitiveIndexFunctor<T>".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveIndexFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TemplatePrimitiveIndexFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TemplatePrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.} # header: "TemplatePrimitiveIndexFunctor
