import ArgumentParser  # provides: osg::ArgumentParser
import Matrixf  # provides: osg::Matrixf
import Node  # provides: osg::Node::NodeMask
import Matrixd  # provides: osg::Matrixd
type
  VariablesMask* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::VariablesMask".} = enum
    vrblsmskNO_VARIABLES = 0,
    vrblsmskCOMPUTE_NEAR_FAR_MODE = 1,
    vrblsmskCULLING_MODE = 2,
    vrblsmskLOD_SCALE = 4,
    vrblsmskSMALL_FEATURE_CULLING_PIXEL_SIZE = 8,
    vrblsmskCLAMP_PROJECTION_MATRIX_CALLBACK = 16,
    vrblsmskNEAR_FAR_RATIO = 32,
    vrblsmskIMPOSTOR_ACTIVE = 64,
    vrblsmskDEPTH_SORT_IMPOSTOR_SPRITES = 128,
    vrblsmskIMPOSTOR_PIXEL_ERROR_THRESHOLD = 256,
    vrblsmskNUM_FRAMES_TO_KEEP_IMPOSTORS_SPRITES = 512,
    vrblsmskCULL_MASK = 1024,
    vrblsmskCULL_MASK_LEFT = 2048,
    vrblsmskCULL_MASK_RIGHT = 4096,
    vrblsmskCLEAR_COLOR = 8192,
    vrblsmskCLEAR_MASK = 16384,
    vrblsmskLIGHTING_MODE = 32768,
    vrblsmskLIGHT = 65536,
    vrblsmskDRAW_BUFFER = 131072,
    vrblsmskREAD_BUFFER = 262144,
    vrblsmskALL_VARIABLES = 2147483647

  InheritanceMaskActionOnAttributeSetting* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::InheritanceMaskActionOnAttributeSetting".} = enum
    nhrtncmskctnnttrbtsttngDISABLE_ASSOCIATED_INHERITANCE_MASK_BIT = 0,
    nhrtncmskctnnttrbtsttngDO_NOT_MODIFY_INHERITANCE_MASK = 1

  ComputeNearFarMode* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::ComputeNearFarMode".} = enum
    cmptnrfrmdDO_NOT_COMPUTE_NEAR_FAR = 0,
    cmptnrfrmdCOMPUTE_NEAR_FAR_USING_BOUNDING_VOLUMES = 1,
    cmptnrfrmdCOMPUTE_NEAR_FAR_USING_PRIMITIVES = 2,
    cmptnrfrmdCOMPUTE_NEAR_USING_PRIMITIVES = 3

  CullingModeValues* {.size:sizeof(cuint),header: "CullSettings", importcpp: "osg::CullSettings::CullingModeValues".} = enum
    cllngmdvlsNO_CULLING = 0,
    cllngmdvlsVIEW_FRUSTUM_SIDES_CULLING = 1,
    cllngmdvlsNEAR_PLANE_CULLING = 2,
    cllngmdvlsFAR_PLANE_CULLING = 4,
    cllngmdvlsVIEW_FRUSTUM_CULLING = 7,
    cllngmdvlsSMALL_FEATURE_CULLING = 8,
    cllngmdvlsSHADOW_OCCLUSION_CULLING = 16,
    cllngmdvlsCLUSTER_CULLING = 32,
    cllngmdvlsDEFAULT_CULLING = 57,
    cllngmdvlsENABLE_ALL_CULLING = 63

  InheritanceMask* {.header: "CullSettings", importcpp: "osg::CullSettings::InheritanceMask".} = cint
  CullingMode* {.header: "CullSettings", importcpp: "osg::CullSettings::CullingMode".} = cint


{.push header: "CullSettings".}

proc constructCullSettings*(): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings".}

proc constructCullSettings*(arguments: Argumentparser): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings(@)".}

proc constructCullSettings*(cs: Cullsettings): CullSettings {.constructor,importcpp: "osg::CullSettings::CullSettings(@)".}

proc `=`*(this: var CullSettings, settings: Cullsettings): Cullsettings  {.importcpp: "# = #".}

proc setDefaults*(this: var CullSettings)  {.importcpp: "setDefaults".}

proc setInheritanceMask*(this: var CullSettings, mask: Inheritancemask)  {.importcpp: "setInheritanceMask".}
    ## Set the inheritance mask used in inheritCullSettings to control which
    ## variables get overwritten by the passed in CullSettings object.

proc getInheritanceMask*(this: CullSettings): Inheritancemask  {.importcpp: "getInheritanceMask".}
    ## Get the inheritance mask used in inheritCullSettings to control which
    ## variables get overwritten by the passed in CullSettings object.

proc setCullSettings*(this: var CullSettings, settings: Cullsettings)  {.importcpp: "setCullSettings".}
    ## Set the local cull settings values from specified CullSettings object.

proc inheritCullSettings*(this: var CullSettings, settings: Cullsettings)  {.importcpp: "inheritCullSettings".}
    ## Inherit the local cull settings variable from specified CullSettings
    ## object, according to the inheritance mask.

proc inheritCullSettings*(this: var CullSettings, settings: Cullsettings, inheritanceMask: cuint)  {.importcpp: "inheritCullSettings".}
    ## Inherit the local cull settings variable from specified CullSettings
    ## object, according to the inheritance mask.

proc readEnvironmentalVariables*(this: var CullSettings)  {.importcpp: "readEnvironmentalVariables".}
    ## read the environmental variables.

proc readCommandLine*(this: var CullSettings, arguments: Argumentparser)  {.importcpp: "readCommandLine".}
    ## read the commandline arguments.

proc setInheritanceMaskActionOnAttributeSetting*(this: var CullSettings, action: Inheritancemaskactiononattributesetting)  {.importcpp: "setInheritanceMaskActionOnAttributeSetting".}

proc getInheritanceMaskActionOnAttributeSetting*(this: CullSettings): Inheritancemaskactiononattributesetting  {.importcpp: "getInheritanceMaskActionOnAttributeSetting".}

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

proc setComputeNearFarMode*(this: var CullSettings, cnfm: Computenearfarmode)  {.importcpp: "setComputeNearFarMode".}

proc getComputeNearFarMode*(this: CullSettings): Computenearfarmode  {.importcpp: "getComputeNearFarMode".}

proc setNearFarRatio*(this: var CullSettings, ratio: cdouble)  {.importcpp: "setNearFarRatio".}

proc getNearFarRatio*(this: CullSettings): cdouble  {.importcpp: "getNearFarRatio".}

proc setCullingMode*(this: var CullSettings, mode: Cullingmode)  {.importcpp: "setCullingMode".}
    ## Set the culling mode for the CullVisitor to use.

proc getCullingMode*(this: CullSettings): Cullingmode  {.importcpp: "getCullingMode".}
    ## Returns the current CullingMode.

proc setCullMask*(this: var CullSettings, nm: Nodemask)  {.importcpp: "setCullMask".}

proc getCullMask*(this: CullSettings): Nodemask  {.importcpp: "getCullMask".}

proc setCullMaskLeft*(this: var CullSettings, nm: Nodemask)  {.importcpp: "setCullMaskLeft".}

proc getCullMaskLeft*(this: CullSettings): Nodemask  {.importcpp: "getCullMaskLeft".}

proc setCullMaskRight*(this: var CullSettings, nm: Nodemask)  {.importcpp: "setCullMaskRight".}

proc getCullMaskRight*(this: CullSettings): Nodemask  {.importcpp: "getCullMaskRight".}

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

proc setClampProjectionMatrixCallback*(this: var CullSettings, cpmc: ptr Clampprojectionmatrixcallback )  {.importcpp: "setClampProjectionMatrixCallback".}
    ## set the ClampProjectionMatrixCallback.

proc getClampProjectionMatrixCallback*(this: var CullSettings): ptr Clampprojectionmatrixcallback   {.importcpp: "getClampProjectionMatrixCallback".}
    ## get the non const ClampProjectionMatrixCallback.

proc getClampProjectionMatrixCallback*(this: CullSettings): ptr Clampprojectionmatrixcallback   {.importcpp: "getClampProjectionMatrixCallback".}
    ## get the const ClampProjectionMatrixCallback.

proc write*(this: var CullSettings, `out`: Ostream)  {.importcpp: "write".}
    ## Write out internal settings of CullSettings.

{.pop.}  # header: "CullSettings"
