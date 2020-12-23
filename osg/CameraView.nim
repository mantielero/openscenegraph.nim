import CopyOp # Provides CopyOp
import Object # Provides Object
import Vec3d # Provides Vec3d
import Quat # Provides Quat
import Matrix # Provides Matrix
import NodeVisitor # Provides NodeVisitor


type
  FieldOfViewMode* {.size:sizeof(cuint),header: "CameraView", importcpp: "osg::CameraView::FieldOfViewMode".} = enum
    UNCONSTRAINED = 0,
    HORIZONTAL = 1,
    VERTICAL = 2

{.push header: "CameraView".}


# Constructors and methods
proc constructCameraView*(): CameraView {.constructor,importcpp: "CameraView".}

proc constructCameraView*(pat: Cameraview, copyop: Copyop = SHALLOW_COPY): CameraView {.constructor,importcpp: "CameraView(@)".}

proc cloneType*(this: CameraView): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CameraView, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CameraView, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: CameraView): cstring  {.importcpp: "className".}

proc libraryName*(this: CameraView): cstring  {.importcpp: "libraryName".}

proc accept*(this: var CameraView, nv: Nodevisitor)  {.importcpp: "accept".}

proc setPosition*(this: var CameraView, pos: Vec3d)  {.importcpp: "setPosition".}
    ## Set the position of the camera view.

proc getPosition*(this: CameraView): Vec3d  {.importcpp: "getPosition".}
    ## Get the position of the camera view.

proc setAttitude*(this: var CameraView, quat: Quat)  {.importcpp: "setAttitude".}
    ## Set the attitude of the camera view.

proc getAttitude*(this: CameraView): Quat  {.importcpp: "getAttitude".}
    ## Get the attitude of the camera view.

proc setFieldOfView*(this: var CameraView, fieldOfView: cdouble)  {.importcpp: "setFieldOfView".}
    ## Set the field of view. The camera's field of view can be constrained
    ## to either the horizontal or vertical axis of the camera, or
    ## unconstrained in which case the camera/application are left to choose
    ## an appropriate field of view. The default value if 60 degrees.

proc getFieldOfView*(this: CameraView): cdouble  {.importcpp: "getFieldOfView".}
    ## Get the field of view.

proc setFieldOfViewMode*(this: var CameraView, mode: Fieldofviewmode)  {.importcpp: "setFieldOfViewMode".}
    ## Set the field of view mode - controlling how the field of view of the
    ## camera is constrained by the CameraView settings.

proc getFieldOfViewMode*(this: CameraView): Fieldofviewmode  {.importcpp: "getFieldOfViewMode".}
    ## Get the field of view mode.

proc setFocalLength*(this: var CameraView, focalLength: cdouble)  {.importcpp: "setFocalLength".}
    ## Set the focal length of the camera. A focal length of 0.0 indicates
    ## that the camera/application should determine the focal length. The
    ## default value is 0.0.

proc getFocalLength*(this: CameraView): cdouble  {.importcpp: "getFocalLength".}
    ## Get the focal length of the camera.

proc computeLocalToWorldMatrix*(this: CameraView, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: CameraView, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

{.pop.} # header: "CameraView
