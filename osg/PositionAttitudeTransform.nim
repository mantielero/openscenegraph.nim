import CopyOp # Provides CopyOp
import Object # Provides Object
import Vec3d # Provides Vec3d
import Quat # Provides Quat
import Matrix # Provides Matrix
import NodeVisitor # Provides NodeVisitor


{.push header: "PositionAttitudeTransform".}


# Constructors and methods
proc constructPositionAttitudeTransform*(): PositionAttitudeTransform {.constructor,importcpp: "PositionAttitudeTransform".}

proc constructPositionAttitudeTransform*(pat: Positionattitudetransform, copyop: Copyop = SHALLOW_COPY): PositionAttitudeTransform {.constructor,importcpp: "PositionAttitudeTransform(@)".}

proc cloneType*(this: PositionAttitudeTransform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PositionAttitudeTransform, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PositionAttitudeTransform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: PositionAttitudeTransform): cstring  {.importcpp: "className".}

proc libraryName*(this: PositionAttitudeTransform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var PositionAttitudeTransform, nv: Nodevisitor)  {.importcpp: "accept".}

proc asPositionAttitudeTransform*(this: var PositionAttitudeTransform): ptr Positionattitudetransform   {.importcpp: "asPositionAttitudeTransform".}

proc asPositionAttitudeTransform*(this: PositionAttitudeTransform): ptr Positionattitudetransform   {.importcpp: "asPositionAttitudeTransform".}

proc setPosition*(this: var PositionAttitudeTransform, pos: Vec3d)  {.importcpp: "setPosition".}

proc getPosition*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getPosition".}

proc setAttitude*(this: var PositionAttitudeTransform, quat: Quat)  {.importcpp: "setAttitude".}

proc getAttitude*(this: PositionAttitudeTransform): Quat  {.importcpp: "getAttitude".}

proc setScale*(this: var PositionAttitudeTransform, scale: Vec3d)  {.importcpp: "setScale".}

proc getScale*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getScale".}

proc setPivotPoint*(this: var PositionAttitudeTransform, pivot: Vec3d)  {.importcpp: "setPivotPoint".}

proc getPivotPoint*(this: PositionAttitudeTransform): Vec3d  {.importcpp: "getPivotPoint".}

proc computeLocalToWorldMatrix*(this: PositionAttitudeTransform, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: PositionAttitudeTransform, matrix: Matrix, nv: ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

{.pop.} # header: "PositionAttitudeTransform
