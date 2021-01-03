import osg_types
  # File: ArgumentParser  was providing: osg::ArgumentParser
  # File: Matrixf  was providing: osg::Matrixf
  # File: Node  was providing: osg::Node::NodeMask
  # File: Matrixd  was providing: osg::Matrixd
type
  VariablesMask* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::VariablesMask", pure.} = enum
    NO_VARIABLES = 0,
    COMPUTE_NEAR_FAR_MODE = 1,
    CULLING_MODE = 2,
    LOD_SCALE = 4,
    SMALL_FEATURE_CULLING_PIXEL_SIZE = 8,
    CLAMP_PROJECTION_MATRIX_CALLBACK = 16,
    NEAR_FAR_RATIO = 32,
    IMPOSTOR_ACTIVE = 64,
    DEPTH_SORT_IMPOSTOR_SPRITES = 128,
    IMPOSTOR_PIXEL_ERROR_THRESHOLD = 256,
    NUM_FRAMES_TO_KEEP_IMPOSTORS_SPRITES = 512,
    CULL_MASK = 1024,
    CULL_MASK_LEFT = 2048,
    CULL_MASK_RIGHT = 4096,
    CLEAR_COLOR = 8192,
    CLEAR_MASK = 16384,
    LIGHTING_MODE = 32768,
    LIGHT = 65536,
    DRAW_BUFFER = 131072,
    READ_BUFFER = 262144,
    ALL_VARIABLES = 2147483647

  InheritanceMaskActionOnAttributeSetting* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::InheritanceMaskActionOnAttributeSetting", pure.} = enum
    DISABLE_ASSOCIATED_INHERITANCE_MASK_BIT = 0,
    DO_NOT_MODIFY_INHERITANCE_MASK = 1

  ComputeNearFarMode* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::ComputeNearFarMode", pure.} = enum
    DO_NOT_COMPUTE_NEAR_FAR = 0,
    COMPUTE_NEAR_FAR_USING_BOUNDING_VOLUMES = 1,
    COMPUTE_NEAR_FAR_USING_PRIMITIVES = 2,
    COMPUTE_NEAR_USING_PRIMITIVES = 3

  CullingModeValues* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::CullingModeValues", pure.} = enum
    NO_CULLING = 0,
    VIEW_FRUSTUM_SIDES_CULLING = 1,
    NEAR_PLANE_CULLING = 2,
    FAR_PLANE_CULLING = 4,
    VIEW_FRUSTUM_CULLING = 7,
    SMALL_FEATURE_CULLING = 8,
    SHADOW_OCCLUSION_CULLING = 16,
    CLUSTER_CULLING = 32,
    DEFAULT_CULLING = 57,
    ENABLE_ALL_CULLING = 63

  InheritanceMask* {.header: "CullSettings", importcpp: "osg::CullSettings::InheritanceMask".} = cint
  CullingMode* {.header: "CullSettings", importcpp: "osg::CullSettings::CullingMode".} = cint


{.push header: "CullSettings".}

proc constructCullSettings*(): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings".}

proc constructCullSettings*(arguments: ArgumentParser): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings(@)".}

proc constructCullSettings*(cs: CullSettings): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings(@)".}



proc setDefaults*(this: var CullSettings)  {.importcpp: "setDefaults".}

proc setInheritanceMask*(this: var CullSettings, mask: InheritanceMask)  {.importcpp: "setInheritanceMask".}
    ## Set the inheritance mask used in inheritCullSettings to control which
    ## variables get overwritten by the passed in CullSettings object.

proc getInheritanceMask*(this: CullSettings): InheritanceMask  {.importcpp: "getInheritanceMask".}
    ## Get the inheritance mask used in inheritCullSettings to control which
    ## variables get overwritten by the passed in CullSettings object.

proc setCullSettings*(this: var CullSettings, settings: CullSettings)  {.importcpp: "setCullSettings".}
    ## Set the local cull settings values from specified CullSettings object.

proc inheritCullSettings*(this: var CullSettings, settings: CullSettings)  {.importcpp: "inheritCullSettings".}
    ## Inherit the local cull settings variable from specified CullSettings
    ## object, according to the inheritance mask.

proc inheritCullSettings*(this: var CullSettings, settings: CullSettings, inheritanceMask: cuint)  {.importcpp: "inheritCullSettings".}
    ## Inherit the local cull settings variable from specified CullSettings
    ## object, according to the inheritance mask.

proc readEnvironmentalVariables*(this: var CullSettings)  {.importcpp: "readEnvironmentalVariables".}
    ## read the environmental variables.

proc readCommandLine*(this: var CullSettings, arguments: ArgumentParser)  {.importcpp: "readCommandLine".}
    ## read the commandline arguments.

proc setInheritanceMaskActionOnAttributeSetting*(this: var CullSettings, action: InheritanceMaskActionOnAttributeSetting)  {.importcpp: "setInheritanceMaskActionOnAttributeSetting".}

proc getInheritanceMaskActionOnAttributeSetting*(this: CullSettings): InheritanceMaskActionOnAttributeSetting  {.importcpp: "getInheritanceMaskActionOnAttributeSetting".}

proc applyMaskAction*(this: var CullSettings, maskBit: cuint)  {.importcpp: "applyMaskAction".}
    ## Apply the action, specified by the
    ## InheritanceMaskActionOnAttributeSetting, to apply to the inheritance
    ## bit mask. This method is called by CullSettings::set*() parameter
    ## methods to ensure that CullSettings inheritance mechanisms doesn't
    ## overwrite the local parameter settings.

proc setImpostorsActive*(this: var CullSettings, active: bool)  {.importcpp: "setImpostorsActive".}
    ## Switch the creation of Impostors on or off. Setting active to false
    ## forces the CullVisitor to use the Impostor LOD children for rendering.
    ## Setting active to true forces the CullVisitor to create the
    ## appropriate pre-rendering stages which render to the ImpostorSprite's
    ## texture.

proc getImpostorsActive*(this: CullSettings): bool  {.importcpp: "getImpostorsActive".}
    ## Get whether impostors are active or not.

proc setImpostorPixelErrorThreshold*(this: var CullSettings, numPixels: cfloat)  {.importcpp: "setImpostorPixelErrorThreshold".}
    ## Set the impostor error threshold. Used in calculation of whether
    ## impostors remain valid.

proc getImpostorPixelErrorThreshold*(this: CullSettings): cfloat  {.importcpp: "getImpostorPixelErrorThreshold".}
    ## Get the impostor error threshold.

proc setDepthSortImpostorSprites*(this: var CullSettings, doDepthSort: bool)  {.importcpp: "setDepthSortImpostorSprites".}
    ## Set whether ImpostorSprite's should be placed in a depth sorted bin
    ## for rendering.

proc getDepthSortImpostorSprites*(this: CullSettings): bool  {.importcpp: "getDepthSortImpostorSprites".}
    ## Get whether ImpostorSprite's are depth sorted bin for rendering.

proc setNumberOfFrameToKeepImpostorSprites*(this: var CullSettings, numFrames: cint)  {.importcpp: "setNumberOfFrameToKeepImpostorSprites".}
    ## Set the number of frames that an ImpostorSprite is kept whilst not
    ## being beyond, before being recycled.

proc getNumberOfFrameToKeepImpostorSprites*(this: CullSettings): cint  {.importcpp: "getNumberOfFrameToKeepImpostorSprites".}
    ## Get the number of frames that an ImpostorSprite is kept whilst not
    ## being beyond, before being recycled.

proc setComputeNearFarMode*(this: var CullSettings, cnfm: ComputeNearFarMode)  {.importcpp: "setComputeNearFarMode".}

proc getComputeNearFarMode*(this: CullSettings): ComputeNearFarMode  {.importcpp: "getComputeNearFarMode".}

proc setNearFarRatio*(this: var CullSettings, ratio: cdouble)  {.importcpp: "setNearFarRatio".}

proc getNearFarRatio*(this: CullSettings): cdouble  {.importcpp: "getNearFarRatio".}

proc setCullingMode*(this: var CullSettings, mode: CullingMode)  {.importcpp: "setCullingMode".}
    ## Set the culling mode for the CullVisitor to use.

proc getCullingMode*(this: CullSettings): CullingMode  {.importcpp: "getCullingMode".}
    ## Returns the current CullingMode.

proc setCullMask*(this: var CullSettings, nm: NodeMask)  {.importcpp: "setCullMask".}

proc getCullMask*(this: CullSettings): NodeMask  {.importcpp: "getCullMask".}

proc setCullMaskLeft*(this: var CullSettings, nm: NodeMask)  {.importcpp: "setCullMaskLeft".}

proc getCullMaskLeft*(this: CullSettings): NodeMask  {.importcpp: "getCullMaskLeft".}

proc setCullMaskRight*(this: var CullSettings, nm: NodeMask)  {.importcpp: "setCullMaskRight".}

proc getCullMaskRight*(this: CullSettings): NodeMask  {.importcpp: "getCullMaskRight".}

proc setLODScale*(this: var CullSettings, scale: cfloat)  {.importcpp: "setLODScale".}
    ## Set the LOD bias for the CullVisitor to use.

proc getLODScale*(this: CullSettings): cfloat  {.importcpp: "getLODScale".}
    ## Get the LOD bias.

proc setSmallFeatureCullingPixelSize*(this: var CullSettings, value: cfloat)  {.importcpp: "setSmallFeatureCullingPixelSize".}
    ## Threshold at which small features are culled.

proc getSmallFeatureCullingPixelSize*(this: CullSettings): cfloat  {.importcpp: "getSmallFeatureCullingPixelSize".}
    ## Get the Small Feature Culling Pixel Size.

proc clampProjectionMatrixImplementation*(this: ClampProjectionMatrixCallback, projection: Matrixf, znear: cdouble, zfar: cdouble): bool  {.importcpp: "clampProjectionMatrixImplementation".}

proc clampProjectionMatrixImplementation*(this: ClampProjectionMatrixCallback, projection: Matrixd, znear: cdouble, zfar: cdouble): bool  {.importcpp: "clampProjectionMatrixImplementation".}

proc setClampProjectionMatrixCallback*(this: var CullSettings, cpmc: ptr ClampProjectionMatrixCallback )  {.importcpp: "setClampProjectionMatrixCallback".}
    ## set the ClampProjectionMatrixCallback.

proc getClampProjectionMatrixCallback*(this: var CullSettings): ptr ClampProjectionMatrixCallback   {.importcpp: "getClampProjectionMatrixCallback".}
    ## get the non const ClampProjectionMatrixCallback.

proc getClampProjectionMatrixCallback*(this: CullSettings): ptr ClampProjectionMatrixCallback   {.importcpp: "getClampProjectionMatrixCallback".}
    ## get the const ClampProjectionMatrixCallback.

proc write*(this: var CullSettings, `out`: ostream)  {.importcpp: "write".}
    ## Write out internal settings of CullSettings.

{.pop.}  # header: "CullSettings"
