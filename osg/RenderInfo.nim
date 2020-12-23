import Referenced # Provides Referenced
import State # Provides State
import Camera # Provides Camera
import View # Provides View


type
  # Typedefs
  CameraStack* {.header: "RenderInfo", importcpp: "osg::RenderInfo::CameraStack".} = cint
  RenderBinStack* {.header: "RenderInfo", importcpp: "osg::RenderInfo::RenderBinStack".} = cint
{.push header: "RenderInfo".}


# Constructors and methods
proc constructRenderInfo*(): RenderInfo {.constructor,importcpp: "RenderInfo".}

proc constructRenderInfo*(rhs: Renderinfo): RenderInfo {.constructor,importcpp: "RenderInfo(@)".}

proc constructRenderInfo*(state: ptr State , view: ptr View ): RenderInfo {.constructor,importcpp: "RenderInfo(@)".}

proc `=`*(this: var RenderInfo, rhs: Renderinfo): Renderinfo  {.importcpp: "# = #".}

proc getContextID*(this: RenderInfo): cuint  {.importcpp: "getContextID".}

proc setState*(this: var RenderInfo, state: ptr State )  {.importcpp: "setState".}

proc getState*(this: var RenderInfo): ptr State   {.importcpp: "getState".}

proc getState*(this: RenderInfo): ptr State   {.importcpp: "getState".}

proc setView*(this: var RenderInfo, view: ptr View )  {.importcpp: "setView".}

proc getView*(this: var RenderInfo): ptr View   {.importcpp: "getView".}

proc getView*(this: RenderInfo): ptr View   {.importcpp: "getView".}

proc pushCamera*(this: var RenderInfo, camera: ptr Camera )  {.importcpp: "pushCamera".}

proc popCamera*(this: var RenderInfo)  {.importcpp: "popCamera".}

proc getCameraStack*(this: var RenderInfo): Camerastack  {.importcpp: "getCameraStack".}

proc getCurrentCamera*(this: var RenderInfo): ptr Camera   {.importcpp: "getCurrentCamera".}

proc pushRenderBin*(this: var RenderInfo, bin: ptr Renderbin )  {.importcpp: "pushRenderBin".}

proc popRenderBin*(this: var RenderInfo)  {.importcpp: "popRenderBin".}

proc getRenderBinStack*(this: var RenderInfo): Renderbinstack  {.importcpp: "getRenderBinStack".}

proc setUserData*(this: var RenderInfo, userData: ptr Referenced )  {.importcpp: "setUserData".}

proc getUserData*(this: var RenderInfo): ptr Referenced   {.importcpp: "getUserData".}

proc getUserData*(this: RenderInfo): ptr Referenced   {.importcpp: "getUserData".}

{.pop.} # header: "RenderInfo
