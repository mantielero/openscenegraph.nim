import gl # Provides GLenum, GLint, GLubyte, GLushort, GLuint, GLsizei
import Vec2d # Provides Vec2d
import Vec3d # Provides Vec3d
import Vec4d # Provides Vec4d
import Vec2 # Provides Vec2
import Vec3 # Provides Vec3
import Vec4 # Provides Vec4


type
  IndexPointer* {.header: "TemplatePrimitiveFunctor", importcpp: "osg::TemplatePrimitiveFunctor::drawElementsTemplate::IndexPointer".} = ptr IndexType
{.push header: "TemplatePrimitiveFunctor".}


# Constructors and methods
proc constructTemplatePrimitiveFunctor*[T](): TemplatePrimitiveFunctor {.constructor,importcpp: "TemplatePrimitiveFunctor<T>".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, count: cuint, vertices: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TemplatePrimitiveFunctor, cuint, ptr Vec4d )  {.importcpp: "setVertexArray".}

proc drawArrays*(this: var TemplatePrimitiveFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElementsTemplate*[IndexType](this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr IndexType)  {.importcpp: "drawElementsTemplate".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TemplatePrimitiveFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.} # header: "TemplatePrimitiveFunctor
