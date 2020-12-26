{.push header: "GLExtensions".}

proc constructVertexAttribAlias*(): VertexAttribAlias {.constructor,importcpp: "osg::VertexAttribAlias::VertexAttribAlias".}

proc constructVertexAttribAlias*(rhs: Vertexattribalias): VertexAttribAlias {.constructor,importcpp: "osg::VertexAttribAlias::VertexAttribAlias(@)".}

proc constructVertexAttribAlias*(location: GLuint, glName: String, osgName: String, declaration: String): VertexAttribAlias {.constructor,importcpp: "osg::VertexAttribAlias::VertexAttribAlias(@)".}

proc constructGLExtensions*(in_contextID: cuint): GLExtensions {.constructor,importcpp: "osg::GLExtensions::GLExtensions(@)".}

proc get*(this: var GLExtensions, in_contextID: cuint, createIfNotInitalized: bool): ptr Glextensions   {.importcpp: "Get".}
    ## Function to call to get the extension of a specified context. If the
    ## Exentsion object for that context has not yet been created then and
    ## the 'createIfNotInitalized' flag been set to false then returns NULL.
    ## If 'createIfNotInitalized' is true then the Extensions object is
    ## automatically created. However, in this case the extension object only
    ## be created with the graphics context associated with ContextID..

proc set*(this: var GLExtensions, in_contextID: cuint, extensions: ptr Glextensions )  {.importcpp: "Set".}
    ## allows users to override the extensions across graphics contexts.
    ## typically used when you have different extensions supported across
    ## graphics pipes but need to ensure that they all use the same low
    ## common denominator extensions.

proc getCurrentProgram*(this: GLExtensions): GLuint  {.importcpp: "getCurrentProgram".}

proc getProgramInfoLog*(this: GLExtensions, program: GLuint, result: String): bool  {.importcpp: "getProgramInfoLog".}

proc getShaderInfoLog*(this: GLExtensions, shader: GLuint, result: String): bool  {.importcpp: "getShaderInfoLog".}

proc getAttribLocation*(this: GLExtensions, attribName: cstring, slot: var GLuint): bool  {.importcpp: "getAttribLocation".}

proc getFragDataLocation*(this: GLExtensions, fragDataName: cstring, slot: var GLuint): bool  {.importcpp: "getFragDataLocation".}

proc isTexStorage2DSupported*(this: GLExtensions): bool  {.importcpp: "isTexStorage2DSupported".}

proc isCompressedTexImage2DSupported*(this: GLExtensions): bool  {.importcpp: "isCompressedTexImage2DSupported".}

proc isCompressedTexSubImage2DSupported*(this: GLExtensions): bool  {.importcpp: "isCompressedTexSubImage2DSupported".}

proc isBindImageTextureSupported*(this: GLExtensions): bool  {.importcpp: "isBindImageTextureSupported".}

proc isNonPowerOfTwoTextureSupported*(this: GLExtensions, filter: GLenum): bool  {.importcpp: "isNonPowerOfTwoTextureSupported".}

proc isCompressedTexImage3DSupported*(this: GLExtensions): bool  {.importcpp: "isCompressedTexImage3DSupported".}

proc isCompressedTexSubImage3DSupported*(this: GLExtensions): bool  {.importcpp: "isCompressedTexSubImage3DSupported".}

proc isRenderbufferMultisampleSupported*(this: GLExtensions): bool  {.importcpp: "isRenderbufferMultisampleSupported".}

proc isRenderbufferMultisampleCoverageSupported*(this: GLExtensions): bool  {.importcpp: "isRenderbufferMultisampleCoverageSupported".}

proc debugObjectLabel*(this: GLExtensions, identifier: GLenum, name: GLuint, label: String)  {.importcpp: "debugObjectLabel".}
    ## convenience wrapper around glObjectLabel that calls glObjectLabel if
    ## it's supported and using std::string as a label parameter.

{.pop.}  # header: "GLExtensions"
