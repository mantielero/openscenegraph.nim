import osg_types
  # File: State  was providing: osg::State
  # File: Vec4  was providing: osg::Vec4
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  ColorControl* {.size:sizeof(cuint),header: "LightModel", importcpp: "osg::LightModel::ColorControl", pure.} = enum
    SEPARATE_SPECULAR_COLOR = 0,
    SINGLE_COLOR = 1

  LightModel* {.header: "LightModel", importcpp: "osg::LightModel", byref.} = object #of class osg::StateAttribute



{.push header: "LightModel".}

proc constructLightModel*(): LightModel {.constructor,importcpp: "osg::LightModel::LightModel".}

proc constructLightModel*(lw: LightModel, copyop: CopyOp = SHALLOW_COPY): LightModel {.constructor,importcpp: "osg::LightModel::LightModel(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LightModel): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LightModel, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LightModel, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: LightModel): cstring  {.importcpp: "libraryName".}

proc className*(this: LightModel): cstring  {.importcpp: "className".}

proc getType*(this: LightModel): Type  {.importcpp: "getType".}

proc compare*(this: LightModel, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setAmbientIntensity*(this: var LightModel, ambient: Vec4)  {.importcpp: "setAmbientIntensity".}

proc getAmbientIntensity*(this: LightModel): Vec4  {.importcpp: "getAmbientIntensity".}

proc setColorControl*(this: var LightModel, cc: ColorControl)  {.importcpp: "setColorControl".}

proc getColorControl*(this: LightModel): ColorControl  {.importcpp: "getColorControl".}

proc setLocalViewer*(this: var LightModel, localViewer: bool)  {.importcpp: "setLocalViewer".}

proc getLocalViewer*(this: LightModel): bool  {.importcpp: "getLocalViewer".}

proc setTwoSided*(this: var LightModel, twoSided: bool)  {.importcpp: "setTwoSided".}

proc getTwoSided*(this: LightModel): bool  {.importcpp: "getTwoSided".}

proc apply*(this: LightModel, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "LightModel"
