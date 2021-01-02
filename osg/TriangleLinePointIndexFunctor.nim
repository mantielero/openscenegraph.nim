import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: Vec4  was providing: osg::Vec4
  # File: Vec2  was providing: osg::Vec2
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
type
  TriangleLinePointIndexFunctor*[T] {.header: "TriangleLinePointIndexFunctor", importcpp: "osg::TriangleLinePointIndexFunctor", byref.} = object #of osg::PrimitiveIndexFunctor



{.push header: "TriangleLinePointIndexFunctor".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec2 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec3 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec4 )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec2d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec3d )  {.importcpp: "setVertexArray".}

proc setVertexArray*(this: var TriangleLinePointIndexFunctor, a00: cuint, a01: ptr Vec4d )  {.importcpp: "setVertexArray".}

proc begin*(this: var TriangleLinePointIndexFunctor, mode: GLenum)  {.importcpp: "begin".}

proc vertex*(this: var TriangleLinePointIndexFunctor, vert: cuint)  {.importcpp: "vertex".}

proc `end`*(this: var TriangleLinePointIndexFunctor)  {.importcpp: "end".}

proc drawArrays*(this: var TriangleLinePointIndexFunctor, mode: GLenum, first: GLint, count: GLsizei)  {.importcpp: "drawArrays".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLubyte)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLushort)  {.importcpp: "drawElements".}

proc drawElements*(this: var TriangleLinePointIndexFunctor, mode: GLenum, count: GLsizei, indices: ptr GLuint)  {.importcpp: "drawElements".}

{.pop.}  # header: "TriangleLinePointIndexFunctor"
