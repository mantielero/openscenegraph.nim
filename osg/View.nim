import CopyOp # Provides CopyOp
import Object # Provides Object
import Matrixd # Provides Matrixd
import Matrix # Provides Matrix
import FrameStamp # Provides FrameStamp
import State # Provides State
import Stats # Provides Stats
import Camera # Provides Camera
import Light # Provides Light


type
  LightingMode* {.size:sizeof(cuint),header: "View", importcpp: "osg::View::LightingMode".} = enum
    ## Options for controlling the global lighting used for the view.

    NO_LIGHT = 0,
    HEADLIGHT = 1,
    SKY_LIGHT = 2

  Slaves* {.header: "View", importcpp: "osg::View::Slaves".} = cint
{.push header: "View".}


# Constructors and methods
proc constructView*(): View {.constructor,importcpp: "View".}

proc constructView*(view: View, copyop: Copyop = SHALLOW_COPY): View {.constructor,importcpp: "View(@)".}

proc constructSlave*(useMastersSceneData: bool): Slave {.constructor,importcpp: "Slave(@)".}

proc constructSlave*(camera: ptr Camera , projectionOffset: Matrixd, viewOffset: Matrixd, useMastersSceneData: bool): Slave {.constructor,importcpp: "Slave(@)".}

proc constructSlave*(rhs: Slave): Slave {.constructor,importcpp: "Slave(@)".}

proc cloneType*(this: View): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: View, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: View, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: View): cstring  {.importcpp: "libraryName".}

proc className*(this: View): cstring  {.importcpp: "className".}

proc take*(this: var View, rhs: View)  {.importcpp: "take".}
    ## Take all the settings, Camera and Slaves from the passed in view,
    ## leaving it empty.

proc setStats*(this: var View, stats: ptr Stats )  {.importcpp: "setStats".}
    ## Set the Stats object used to collect various frame related timing and
    ## scene graph stats.

proc getStats*(this: var View): ptr Stats   {.importcpp: "getStats".}
    ## Get the Viewers Stats object.

proc getStats*(this: View): ptr Stats   {.importcpp: "getStats".}
    ## Get the Viewers Stats object.

proc setLightingMode*(this: var View, lightingMode: Lightingmode)  {.importcpp: "setLightingMode".}
    ## Set the global lighting to use for this view. Defaults to headlight.

proc getLightingMode*(this: View): Lightingmode  {.importcpp: "getLightingMode".}
    ## Get the global lighting used for this view.

proc setLight*(this: var View, light: ptr Light )  {.importcpp: "setLight".}
    ## Get the global light.

proc getLight*(this: var View): ptr Light   {.importcpp: "getLight".}
    ## Get the global lighting if assigned.

proc getLight*(this: View): ptr Light   {.importcpp: "getLight".}
    ## Get the const global lighting if assigned.

proc setCamera*(this: var View, camera: ptr Camera )  {.importcpp: "setCamera".}
    ## Set the master camera of the view.

proc getCamera*(this: var View): ptr Camera   {.importcpp: "getCamera".}
    ## Get the master camera of the view.

proc getCamera*(this: View): ptr Camera   {.importcpp: "getCamera".}
    ## Get the const master camera of the view.

proc setFrameStamp*(this: var View, fs: ptr Framestamp )  {.importcpp: "setFrameStamp".}
    ## Set the frame stamp of the view.

proc getFrameStamp*(this: var View): ptr Framestamp   {.importcpp: "getFrameStamp".}
    ## Get the frame stamp of the view.

proc getFrameStamp*(this: View): ptr Framestamp   {.importcpp: "getFrameStamp".}
    ## Get the frame stamp of the view.

proc `=`*(this: var Slave, rhs: Slave): Slave  {.importcpp: "# = #".}

proc updateSlave*(this: var UpdateSlaveCallback, view: View, slave: Slave)  {.importcpp: "updateSlave".}

proc updateSlave*(this: var Slave, view: View)  {.importcpp: "updateSlave".}

proc updateSlaveImplementation*(this: var Slave, view: View)  {.importcpp: "updateSlaveImplementation".}

proc addSlave*(this: var View, camera: ptr Camera , useMastersSceneData: bool): bool  {.importcpp: "addSlave".}

proc addSlave*(this: var View, camera: ptr Camera , projectionOffset: Matrix, viewOffset: Matrix, useMastersSceneData: bool): bool  {.importcpp: "addSlave".}

proc removeSlave*(this: var View, pos: cuint): bool  {.importcpp: "removeSlave".}

proc getNumSlaves*(this: View): cuint  {.importcpp: "getNumSlaves".}

proc getSlave*(this: var View, pos: cuint): Slave  {.importcpp: "getSlave".}

proc getSlave*(this: View, pos: cuint): Slave  {.importcpp: "getSlave".}

proc findSlaveIndexForCamera*(this: View, camera: ptr Camera ): cuint  {.importcpp: "findSlaveIndexForCamera".}

proc findSlaveForCamera*(this: var View, camera: ptr Camera ): ptr Slave   {.importcpp: "findSlaveForCamera".}

proc updateSlaves*(this: var View)  {.importcpp: "updateSlaves".}

proc resizeGLObjectBuffers*(this: var View, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*(this: View, ptr State  = 0)  {.importcpp: "releaseGLObjects".}

proc createRenderer*(this: var View, ptr Camera ): ptr Graphicsoperation   {.importcpp: "createRenderer".}

{.pop.} # header: "View
