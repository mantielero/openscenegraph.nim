type
  GLTexImage3DProc* {.header: "GLU", importcpp: "osg::GLTexImage3DProc".} = void (*)(GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, const GLvoid *)
  GLUtesselatorObj* {.header: "GLU", importcpp: "osg::GLUtesselatorObj".} = Glutesselator
  GLUtriangulatorObj* {.header: "GLU", importcpp: "osg::GLUtriangulatorObj".} = Glutesselator
  PrefixGLUfuncptr* {.header: "GLU", importcpp: "osg::_GLUfuncptr".} = void (*)()
  GLU_TESS_CALLBACK* {.header: "GLU", importcpp: "osg::GLU_TESS_CALLBACK".} = void (*)()


{.push header: "GLU".}

proc constructPixelStorageModes*(): PixelStorageModes {.constructor,importcpp: "osg::PixelStorageModes::PixelStorageModes".}

proc retrieveStoreModes*(this: var PixelStorageModes)  {.importcpp: "retrieveStoreModes".}

proc retrieveStoreModes3D*(this: var PixelStorageModes)  {.importcpp: "retrieveStoreModes3D".}

{.pop.}  # header: "GLU"
