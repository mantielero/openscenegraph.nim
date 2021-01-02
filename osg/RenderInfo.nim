import osg_types
  # File: State  was providing: osg::State
  # File: Camera  was providing: osg::Camera
  # File: Referenced  was providing: osg::Referenced
  # File: View  was providing: osg::View
type
  CameraStack* {.header: "RenderInfo", importcpp: "osg::RenderInfo::CameraStack".} = cint
  RenderBinStack* {.header: "RenderInfo", importcpp: "osg::RenderInfo::RenderBinStack".} = cint


{.push header: "RenderInfo".}

proc constructRenderInfo*(): RenderInfo {.constructor,importcpp: "osg::RenderInfo::RenderInfo".}

proc constructRenderInfo*(rhs: RenderInfo): RenderInfo {.constructor,importcpp: "osg::RenderInfo::RenderInfo(@)".}

proc constructRenderInfo*(state: ptr State , view: ptr View ): RenderInfo {.constructor,importcpp: "osg::RenderInfo::RenderInfo(@)".}

proc `=`*(this: var RenderInfo, rhs: RenderInfo): RenderInfo  {.importcpp: "# = #".}

proc getContextID*(this: RenderInfo): cuint  {.importcpp: "getContextID".}

proc setState*(this: var RenderInfo, state: ptr State )  {.importcpp: "setState".}

proc getState*(this: var RenderInfo): ptr State   {.importcpp: "getState".}

proc getState*(this: RenderInfo): ptr State   {.importcpp: "getState".}

proc setView*(this: var RenderInfo, view: ptr View )  {.importcpp: "setView".}

proc getView*(this: var RenderInfo): ptr View   {.importcpp: "getView".}

proc getView*(this: RenderInfo): ptr View   {.importcpp: "getView".}

proc pushCamera*(this: var RenderInfo, camera: ptr Camera )  {.importcpp: "pushCamera".}

proc popCamera*(this: var RenderInfo)  {.importcpp: "popCamera".}

proc getCameraStack*(this: var RenderInfo): CameraStack  {.importcpp: "getCameraStack".}

proc getCurrentCamera*(this: var RenderInfo): ptr Camera   {.importcpp: "getCurrentCamera".}

proc pushRenderBin*(this: var RenderInfo, bin: ptr RenderBin )  {.importcpp: "pushRenderBin".}

proc popRenderBin*(this: var RenderInfo)  {.importcpp: "popRenderBin".}

proc getRenderBinStack*(this: var RenderInfo): RenderBinStack  {.importcpp: "getRenderBinStack".}

proc setUserData*(this: var RenderInfo, userData: ptr Referenced )  {.importcpp: "setUserData".}

proc getUserData*(this: var RenderInfo): ptr Referenced   {.importcpp: "getUserData".}

proc getUserData*(this: RenderInfo): ptr Referenced   {.importcpp: "getUserData".}

{.pop.}  # header: "RenderInfo"
