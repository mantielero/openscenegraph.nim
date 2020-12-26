import /usr/include/osg/ArgumentParser  # provides: osg::ArgumentParser
import /usr/include/osg/Matrixd  # provides: osg::Matrixd
type
  DisplayType* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::DisplayType".} = enum
    MONITOR = 0,
    POWERWALL = 1,
    REALITY_CENTER = 2,
    HEAD_MOUNTED_DISPLAY = 3

  StereoMode* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::StereoMode".} = enum
    QUAD_BUFFER = 0,
    ANAGLYPHIC = 1,
    HORIZONTAL_SPLIT = 2,
    VERTICAL_SPLIT = 3,
    LEFT_EYE = 4,
    RIGHT_EYE = 5,
    HORIZONTAL_INTERLACE = 6,
    VERTICAL_INTERLACE = 7,
    CHECKERBOARD = 8

  SplitStereoHorizontalEyeMapping* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::SplitStereoHorizontalEyeMapping".} = enum
    LEFT_EYE_LEFT_VIEWPORT = 0,
    LEFT_EYE_RIGHT_VIEWPORT = 1

  SplitStereoVerticalEyeMapping* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::SplitStereoVerticalEyeMapping".} = enum
    LEFT_EYE_TOP_VIEWPORT = 0,
    LEFT_EYE_BOTTOM_VIEWPORT = 1

  ImplicitBufferAttachment* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::ImplicitBufferAttachment".} = enum
    ## Methods used to set and get defaults for Cameras implicit buffer
    ## attachments. For more info: See description of
    ## Camera::setImplicitBufferAttachment method

    IMPLICIT_DEPTH_BUFFER_ATTACHMENT = 1,
    IMPLICIT_STENCIL_BUFFER_ATTACHMENT = 2,
    IMPLICIT_COLOR_BUFFER_ATTACHMENT = 4,
    DEFAULT_IMPLICIT_BUFFER_ATTACHMENT = 5

  SwapMethod* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::SwapMethod".} = enum
    SWAP_DEFAULT = 0,
    SWAP_EXCHANGE = 1,
    SWAP_COPY = 2,
    SWAP_UNDEFINED = 3

  VertexBufferHint* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::VertexBufferHint".} = enum
    NO_PREFERENCE = 0,
    VERTEX_BUFFER_OBJECT = 1,
    VERTEX_ARRAY_OBJECT = 2

  ShaderHint* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::ShaderHint".} = enum
    SHADER_NONE = 0,
    SHADER_GL2 = 1,
    SHADER_GLES2 = 2,
    SHADER_GL3 = 3,
    SHADER_GLES3 = 4

  OSXMenubarBehavior* {.size:sizeof(cuint),header: "DisplaySettings", importcpp: "osg::DisplaySettings::OSXMenubarBehavior".} = enum
    MENUBAR_AUTO_HIDE = 0,
    MENUBAR_FORCE_HIDE = 1,
    MENUBAR_FORCE_SHOW = 2

  ImplicitBufferAttachmentMask* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings::ImplicitBufferAttachmentMask".} = cint
  FileNames* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings::FileNames".} = cint
  Objects* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings::Objects".} = cint
  ValueMap* {.header: "DisplaySettings", importcpp: "osg::DisplaySettings::ValueMap".} = cint


{.push header: "DisplaySettings".}

proc constructDisplaySettings*(): DisplaySettings {.constructor,importcpp: "osg::DisplaySettings::DisplaySettings".}

proc constructDisplaySettings*(arguments: Argumentparser): DisplaySettings {.constructor,importcpp: "osg::DisplaySettings::DisplaySettings(@)".}

proc constructDisplaySettings*(vs: Displaysettings): DisplaySettings {.constructor,importcpp: "osg::DisplaySettings::DisplaySettings(@)".}

proc instance*(this: var DisplaySettings): Ref_ptr[Displaysettings]  {.importcpp: "instance".}
    ## Maintain a DisplaySettings singleton for objects to query at runtime.

proc `=`*(this: var DisplaySettings, vs: Displaysettings): Displaysettings  {.importcpp: "# = #".}

proc setDisplaySettings*(this: var DisplaySettings, vs: Displaysettings)  {.importcpp: "setDisplaySettings".}

proc merge*(this: var DisplaySettings, vs: Displaysettings)  {.importcpp: "merge".}

proc setDefaults*(this: var DisplaySettings)  {.importcpp: "setDefaults".}

proc readEnvironmentalVariables*(this: var DisplaySettings)  {.importcpp: "readEnvironmentalVariables".}
    ## read the environmental variables.

proc readCommandLine*(this: var DisplaySettings, arguments: Argumentparser)  {.importcpp: "readCommandLine".}
    ## read the commandline arguments.

proc setDisplayType*(this: var DisplaySettings, `type`: Displaytype)  {.importcpp: "setDisplayType".}

proc getDisplayType*(this: DisplaySettings): Displaytype  {.importcpp: "getDisplayType".}

proc setStereo*(this: var DisplaySettings, on: bool)  {.importcpp: "setStereo".}

proc getStereo*(this: DisplaySettings): bool  {.importcpp: "getStereo".}

proc setStereoMode*(this: var DisplaySettings, mode: Stereomode)  {.importcpp: "setStereoMode".}

proc getStereoMode*(this: DisplaySettings): Stereomode  {.importcpp: "getStereoMode".}

proc setEyeSeparation*(this: var DisplaySettings, eyeSeparation: cfloat)  {.importcpp: "setEyeSeparation".}

proc getEyeSeparation*(this: DisplaySettings): cfloat  {.importcpp: "getEyeSeparation".}

proc setSplitStereoHorizontalEyeMapping*(this: var DisplaySettings, m: Splitstereohorizontaleyemapping)  {.importcpp: "setSplitStereoHorizontalEyeMapping".}

proc getSplitStereoHorizontalEyeMapping*(this: DisplaySettings): Splitstereohorizontaleyemapping  {.importcpp: "getSplitStereoHorizontalEyeMapping".}

proc setSplitStereoHorizontalSeparation*(this: var DisplaySettings, s: cint)  {.importcpp: "setSplitStereoHorizontalSeparation".}

proc getSplitStereoHorizontalSeparation*(this: DisplaySettings): cint  {.importcpp: "getSplitStereoHorizontalSeparation".}

proc setSplitStereoVerticalEyeMapping*(this: var DisplaySettings, m: Splitstereoverticaleyemapping)  {.importcpp: "setSplitStereoVerticalEyeMapping".}

proc getSplitStereoVerticalEyeMapping*(this: DisplaySettings): Splitstereoverticaleyemapping  {.importcpp: "getSplitStereoVerticalEyeMapping".}

proc setSplitStereoVerticalSeparation*(this: var DisplaySettings, s: cint)  {.importcpp: "setSplitStereoVerticalSeparation".}

proc getSplitStereoVerticalSeparation*(this: DisplaySettings): cint  {.importcpp: "getSplitStereoVerticalSeparation".}

proc setSplitStereoAutoAdjustAspectRatio*(this: var DisplaySettings, flag: bool)  {.importcpp: "setSplitStereoAutoAdjustAspectRatio".}

proc getSplitStereoAutoAdjustAspectRatio*(this: DisplaySettings): bool  {.importcpp: "getSplitStereoAutoAdjustAspectRatio".}

proc setScreenWidth*(this: var DisplaySettings, width: cfloat)  {.importcpp: "setScreenWidth".}

proc getScreenWidth*(this: DisplaySettings): cfloat  {.importcpp: "getScreenWidth".}

proc setScreenHeight*(this: var DisplaySettings, height: cfloat)  {.importcpp: "setScreenHeight".}

proc getScreenHeight*(this: DisplaySettings): cfloat  {.importcpp: "getScreenHeight".}

proc setScreenDistance*(this: var DisplaySettings, distance: cfloat)  {.importcpp: "setScreenDistance".}

proc getScreenDistance*(this: DisplaySettings): cfloat  {.importcpp: "getScreenDistance".}

proc setDoubleBuffer*(this: var DisplaySettings, flag: bool)  {.importcpp: "setDoubleBuffer".}

proc getDoubleBuffer*(this: DisplaySettings): bool  {.importcpp: "getDoubleBuffer".}

proc setRGB*(this: var DisplaySettings, flag: bool)  {.importcpp: "setRGB".}

proc getRGB*(this: DisplaySettings): bool  {.importcpp: "getRGB".}

proc setDepthBuffer*(this: var DisplaySettings, flag: bool)  {.importcpp: "setDepthBuffer".}

proc getDepthBuffer*(this: DisplaySettings): bool  {.importcpp: "getDepthBuffer".}

proc setMinimumNumAlphaBits*(this: var DisplaySettings, bits: cuint)  {.importcpp: "setMinimumNumAlphaBits".}

proc getMinimumNumAlphaBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumAlphaBits".}

proc getAlphaBuffer*(this: DisplaySettings): bool  {.importcpp: "getAlphaBuffer".}

proc setMinimumNumStencilBits*(this: var DisplaySettings, bits: cuint)  {.importcpp: "setMinimumNumStencilBits".}

proc getMinimumNumStencilBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumStencilBits".}

proc getStencilBuffer*(this: DisplaySettings): bool  {.importcpp: "getStencilBuffer".}

proc setMinimumNumAccumBits*(this: var DisplaySettings, red: cuint, green: cuint, blue: cuint, alpha: cuint)  {.importcpp: "setMinimumNumAccumBits".}

proc getMinimumNumAccumRedBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumAccumRedBits".}

proc getMinimumNumAccumGreenBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumAccumGreenBits".}

proc getMinimumNumAccumBlueBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumAccumBlueBits".}

proc getMinimumNumAccumAlphaBits*(this: DisplaySettings): cuint  {.importcpp: "getMinimumNumAccumAlphaBits".}

proc getAccumBuffer*(this: DisplaySettings): bool  {.importcpp: "getAccumBuffer".}

proc setMaxNumberOfGraphicsContexts*(this: var DisplaySettings, num: cuint)  {.importcpp: "setMaxNumberOfGraphicsContexts".}

proc getMaxNumberOfGraphicsContexts*(this: DisplaySettings): cuint  {.importcpp: "getMaxNumberOfGraphicsContexts".}

proc setNumMultiSamples*(this: var DisplaySettings, samples: cuint)  {.importcpp: "setNumMultiSamples".}

proc getNumMultiSamples*(this: DisplaySettings): cuint  {.importcpp: "getNumMultiSamples".}

proc getMultiSamples*(this: DisplaySettings): bool  {.importcpp: "getMultiSamples".}

proc setCompileContextsHint*(this: var DisplaySettings, useCompileContexts: bool)  {.importcpp: "setCompileContextsHint".}

proc getCompileContextsHint*(this: DisplaySettings): bool  {.importcpp: "getCompileContextsHint".}

proc setSerializeDrawDispatch*(this: var DisplaySettings, serializeDrawDispatch: bool)  {.importcpp: "setSerializeDrawDispatch".}

proc getSerializeDrawDispatch*(this: DisplaySettings): bool  {.importcpp: "getSerializeDrawDispatch".}

proc setUseSceneViewForStereoHint*(this: var DisplaySettings, hint: bool)  {.importcpp: "setUseSceneViewForStereoHint".}

proc getUseSceneViewForStereoHint*(this: DisplaySettings): bool  {.importcpp: "getUseSceneViewForStereoHint".}

proc setNumOfDatabaseThreadsHint*(this: var DisplaySettings, numThreads: cuint)  {.importcpp: "setNumOfDatabaseThreadsHint".}
    ## Set the hint for the total number of threads in the DatbasePager set
    ## up, inclusive of the number of http dedicated threads.

proc getNumOfDatabaseThreadsHint*(this: DisplaySettings): cuint  {.importcpp: "getNumOfDatabaseThreadsHint".}
    ## Get the hint for total number of threads in the DatbasePager set up,
    ## inclusive of the number of http dedicated threads.

proc setNumOfHttpDatabaseThreadsHint*(this: var DisplaySettings, numThreads: cuint)  {.importcpp: "setNumOfHttpDatabaseThreadsHint".}
    ## Set the hint for number of threads in the DatbasePager to dedicate to
    ## reading http requests.

proc getNumOfHttpDatabaseThreadsHint*(this: DisplaySettings): cuint  {.importcpp: "getNumOfHttpDatabaseThreadsHint".}
    ## Get the hint for number of threads in the DatbasePager dedicated to
    ## reading http requests.

proc setApplication*(this: var DisplaySettings, application: String)  {.importcpp: "setApplication".}

proc getApplication*(this: var DisplaySettings): String  {.importcpp: "getApplication".}

proc setMaxTexturePoolSize*(this: var DisplaySettings, size: cuint)  {.importcpp: "setMaxTexturePoolSize".}

proc getMaxTexturePoolSize*(this: DisplaySettings): cuint  {.importcpp: "getMaxTexturePoolSize".}

proc setMaxBufferObjectPoolSize*(this: var DisplaySettings, size: cuint)  {.importcpp: "setMaxBufferObjectPoolSize".}

proc getMaxBufferObjectPoolSize*(this: DisplaySettings): cuint  {.importcpp: "getMaxBufferObjectPoolSize".}

proc setImplicitBufferAttachmentMask*(this: var DisplaySettings, renderMask: Implicitbufferattachmentmask, resolveMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentMask".}

proc setImplicitBufferAttachmentRenderMask*(this: var DisplaySettings, implicitBufferAttachmentRenderMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentRenderMask".}

proc setImplicitBufferAttachmentResolveMask*(this: var DisplaySettings, implicitBufferAttachmentResolveMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentResolveMask".}

proc getImplicitBufferAttachmentRenderMask*(this: DisplaySettings): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentRenderMask".}
    ## Get mask selecting default implicit buffer attachments for Cameras
    ## primary FBOs.

proc getImplicitBufferAttachmentResolveMask*(this: DisplaySettings): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentResolveMask".}
    ## Get mask selecting default implicit buffer attachments for Cameras
    ## secondary MULTISAMPLE FBOs.

proc setSwapMethod*(this: var DisplaySettings, swapMethod: Swapmethod)  {.importcpp: "setSwapMethod".}
    ## Select preferred swap method

proc getSwapMethod*(this: var DisplaySettings): Swapmethod  {.importcpp: "getSwapMethod".}
    ## Get preferred swap method

proc setSyncSwapBuffers*(this: var DisplaySettings, numFrames: cuint = 0)  {.importcpp: "setSyncSwapBuffers".}
    ## Set whether Arb Sync should be used to manage the swaps buffers, 0
    ## disables the use of the sync, greater than zero enables sync based on
    ## number of frames specified.

proc getSyncSwapBuffers*(this: DisplaySettings): cuint  {.importcpp: "getSyncSwapBuffers".}
    ## Set whether Arb Sync should be used to manage the swaps buffers.

proc setGLContextVersion*(this: var DisplaySettings, version: String)  {.importcpp: "setGLContextVersion".}
    ## Set the hint of which OpenGL version to attempt to create a graphics
    ## context for.

proc getGLContextVersion*(this: DisplaySettings): String  {.importcpp: "getGLContextVersion".}
    ## Get the hint of which OpenGL version to attempt to create a graphics
    ## context for.

proc setGLContextFlags*(this: var DisplaySettings, flags: cuint)  {.importcpp: "setGLContextFlags".}
    ## Set the hint of the flags to use in when creating graphic contexts.

proc getGLContextFlags*(this: DisplaySettings): cuint  {.importcpp: "getGLContextFlags".}
    ## Get the hint of the flags to use in when creating graphic contexts.

proc setGLContextProfileMask*(this: var DisplaySettings, mask: cuint)  {.importcpp: "setGLContextProfileMask".}
    ## Set the hint of the profile mask to use in when creating graphic
    ## contexts.

proc getGLContextProfileMask*(this: DisplaySettings): cuint  {.importcpp: "getGLContextProfileMask".}
    ## Get the hint of the profile mask to use in when creating graphic
    ## contexts.

proc setNvOptimusEnablement*(this: var DisplaySettings, value: cint)  {.importcpp: "setNvOptimusEnablement".}
    ## Set the NvOptimusEnablement value. Default can be set using
    ## OSG_NvOptimusEnablement env var.

proc getNvOptimusEnablement*(this: DisplaySettings): cint  {.importcpp: "getNvOptimusEnablement".}
    ## Get the NvOptimusEnablement value.

proc setVertexBufferHint*(this: var DisplaySettings, gi: Vertexbufferhint)  {.importcpp: "setVertexBufferHint".}

proc getVertexBufferHint*(this: DisplaySettings): Vertexbufferhint  {.importcpp: "getVertexBufferHint".}

proc setShaderHint*(this: var DisplaySettings, hint: Shaderhint, setShaderValues: bool)  {.importcpp: "setShaderHint".}
    ## set the ShaderHint to tells shader generating cdoes version to create.
    ## By default also OSG_GLSL_VERSION and OSG_PRECISION_FLOAT values that
    ## can get use directly in shaders using $OSG_GLSL_VERSION and
    ## $OSG_PRECISION_FLOAT respectively.

proc getShaderHint*(this: DisplaySettings): Shaderhint  {.importcpp: "getShaderHint".}

proc setTextShaderTechnique*(this: var DisplaySettings, str: String)  {.importcpp: "setTextShaderTechnique".}
    ## Set the TextShaderTechnique that is used in the Text default
    ## constructor to choose which osgText::ShaderTechnique to use.

proc getTextShaderTechnique*(this: DisplaySettings): String  {.importcpp: "getTextShaderTechnique".}

proc setKeystoneHint*(this: var DisplaySettings, enabled: bool)  {.importcpp: "setKeystoneHint".}

proc getKeystoneHint*(this: DisplaySettings): bool  {.importcpp: "getKeystoneHint".}

proc setKeystoneFileNames*(this: var DisplaySettings, filenames: Filenames)  {.importcpp: "setKeystoneFileNames".}

proc getKeystoneFileNames*(this: var DisplaySettings): Filenames  {.importcpp: "getKeystoneFileNames".}

proc getKeystoneFileNames*(this: DisplaySettings): Filenames  {.importcpp: "getKeystoneFileNames".}

proc setKeystones*(this: var DisplaySettings, objects: Objects)  {.importcpp: "setKeystones".}

proc getKeystones*(this: var DisplaySettings): Objects  {.importcpp: "getKeystones".}

proc getKeystones*(this: DisplaySettings): Objects  {.importcpp: "getKeystones".}

proc getOSXMenubarBehavior*(this: DisplaySettings): Osxmenubarbehavior  {.importcpp: "getOSXMenubarBehavior".}

proc setOSXMenubarBehavior*(this: var DisplaySettings, hint: Osxmenubarbehavior)  {.importcpp: "setOSXMenubarBehavior".}

proc computeLeftEyeProjectionImplementation*(this: DisplaySettings, projection: Matrixd): Matrixd  {.importcpp: "computeLeftEyeProjectionImplementation".}
    ## helper function for computing the left eye projection matrix.

proc computeLeftEyeViewImplementation*(this: DisplaySettings, view: Matrixd, eyeSeperationScale: cdouble): Matrixd  {.importcpp: "computeLeftEyeViewImplementation".}
    ## helper function for computing the left eye view matrix.

proc computeRightEyeProjectionImplementation*(this: DisplaySettings, projection: Matrixd): Matrixd  {.importcpp: "computeRightEyeProjectionImplementation".}
    ## helper function for computing the right eye view matrix.

proc computeRightEyeViewImplementation*(this: DisplaySettings, view: Matrixd, eyeSeperationScale: cdouble): Matrixd  {.importcpp: "computeRightEyeViewImplementation".}
    ## helper function for computing the right eye view matrix.

proc setValue*(this: var DisplaySettings, name: String, value: String)  {.importcpp: "setValue".}

proc getValue*(this: DisplaySettings, name: String, value: String, use_getenv_fallback: bool): bool  {.importcpp: "getValue".}

{.pop.}  # header: "DisplaySettings"
