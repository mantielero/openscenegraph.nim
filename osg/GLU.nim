type
  GLTexImage3DProc* {.header: "GLU", importcpp: "osg::GLTexImage3DProc".} = proc (target: GLenum, level: GLint, internalFormat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, `type`: GLenum, pixels: ptr GLvoid)
  GLUtesselatorObj* {.header: "GLU", importcpp: "osg::GLUtesselatorObj".} = GLUtesselator
  GLUtriangulatorObj* {.header: "GLU", importcpp: "osg::GLUtriangulatorObj".} = GLUtesselator
  PrefixGLUfuncptr* {.header: "GLU", importcpp: "osg::_GLUfuncptr".} = proc ()
  GLU_TESS_CALLBACK* {.header: "GLU", importcpp: "osg::GLU_TESS_CALLBACK".} = proc ()


{.push header: "GLU".}

proc constructPixelStorageModes*(): PixelStorageModes {.constructor,importcpp: "osg::PixelStorageModes::PixelStorageModes".}

proc retrieveStoreModes*(this: var PixelStorageModes)  {.importcpp: "retrieveStoreModes".}

proc retrieveStoreModes3D*(this: var PixelStorageModes)  {.importcpp: "retrieveStoreModes3D".}

{.pop.}  # header: "GLU"
