import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import Vec4 # Provides Vec4
import State # Provides State


type
  ColorControl* {.size:sizeof(cuint),header: "LightModel", importcpp: "osg::LightModel::ColorControl".} = enum
    SEPARATE_SPECULAR_COLOR = 0,
    SINGLE_COLOR = 1

{.push header: "LightModel".}


# Constructors and methods
proc constructLightModel*(): LightModel {.constructor,importcpp: "LightModel".}

proc constructLightModel*(lw: Lightmodel, copyop: Copyop = SHALLOW_COPY): LightModel {.constructor,importcpp: "LightModel(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LightModel): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LightModel, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LightModel, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LightModel): cstring  {.importcpp: "libraryName".}

proc className*(this: LightModel): cstring  {.importcpp: "className".}

proc getType*(this: LightModel): Type  {.importcpp: "getType".}

proc compare*(this: LightModel, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setAmbientIntensity*(this: var LightModel, ambient: Vec4)  {.importcpp: "setAmbientIntensity".}

proc getAmbientIntensity*(this: LightModel): Vec4  {.importcpp: "getAmbientIntensity".}

proc setColorControl*(this: var LightModel, cc: Colorcontrol)  {.importcpp: "setColorControl".}

proc getColorControl*(this: LightModel): Colorcontrol  {.importcpp: "getColorControl".}

proc setLocalViewer*(this: var LightModel, localViewer: bool)  {.importcpp: "setLocalViewer".}

proc getLocalViewer*(this: LightModel): bool  {.importcpp: "getLocalViewer".}

proc setTwoSided*(this: var LightModel, twoSided: bool)  {.importcpp: "setTwoSided".}

proc getTwoSided*(this: LightModel): bool  {.importcpp: "getTwoSided".}

proc apply*(this: LightModel, state: State)  {.importcpp: "apply".}

{.pop.} # header: "LightModel
