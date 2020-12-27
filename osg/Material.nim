import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Face* {.size:sizeof(cuint),header: "Material", importcpp: "osg::Material::Face".} = enum
    fcFRONT = 1028,
    fcBACK = 1029,
    fcFRONT_AND_BACK = 1032

  ColorMode* {.size:sizeof(cuint),header: "Material", importcpp: "osg::Material::ColorMode".} = enum
    clrmdAMBIENT = 4608,
    clrmdDIFFUSE = 4609,
    clrmdSPECULAR = 4610,
    clrmdEMISSION = 5632,
    clrmdAMBIENT_AND_DIFFUSE = 5634,
    clrmdOFF = 5635

  Material* {.header: "Material", importcpp: "osg::Material", byref.} = object #of class osg::StateAttribute
    ## Material - encapsulates OpenGL glMaterial state.



{.push header: "Material".}

proc constructMaterial*(): Material {.constructor,importcpp: "osg::Material::Material".}

proc constructMaterial*(mat: Material, copyop: Copyop = SHALLOW_COPY): Material {.constructor,importcpp: "osg::Material::Material(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Material): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Material, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Material, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Material): cstring  {.importcpp: "libraryName".}

proc className*(this: Material): cstring  {.importcpp: "className".}

proc getType*(this: Material): Type  {.importcpp: "getType".}

proc compare*(this: Material, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `=`*(this: var Material, rhs: Material): Material  {.importcpp: "# = #".}

proc getModeUsage*(this: Material, Modeusage): bool  {.importcpp: "getModeUsage".}

proc apply*(this: Material, state: State)  {.importcpp: "apply".}

proc setColorMode*(this: var Material, mode: Colormode)  {.importcpp: "setColorMode".}

proc getColorMode*(this: Material): Colormode  {.importcpp: "getColorMode".}

proc setAmbient*(this: var Material, face: Face, ambient: Vec4)  {.importcpp: "setAmbient".}

proc getAmbient*(this: Material, face: Face): Vec4  {.importcpp: "getAmbient".}

proc getAmbientFrontAndBack*(this: Material): bool  {.importcpp: "getAmbientFrontAndBack".}

proc setDiffuse*(this: var Material, face: Face, diffuse: Vec4)  {.importcpp: "setDiffuse".}

proc getDiffuse*(this: Material, face: Face): Vec4  {.importcpp: "getDiffuse".}

proc getDiffuseFrontAndBack*(this: Material): bool  {.importcpp: "getDiffuseFrontAndBack".}

proc setSpecular*(this: var Material, face: Face, specular: Vec4)  {.importcpp: "setSpecular".}
    ## Set specular value of specified face(s) of the material, valid
    ## specular[0..3] range is 0.0 to 1.0.

proc getSpecular*(this: Material, face: Face): Vec4  {.importcpp: "getSpecular".}
    ## Get the specular value for specified face.

proc getSpecularFrontAndBack*(this: Material): bool  {.importcpp: "getSpecularFrontAndBack".}
    ## Return whether specular values are equal for front and back faces or
    ## not.

proc setEmission*(this: var Material, face: Face, emission: Vec4)  {.importcpp: "setEmission".}
    ## Set emission value of specified face(s) of the material, valid
    ## emission[0..3] range is 0.0 to 1.0.

proc getEmission*(this: Material, face: Face): Vec4  {.importcpp: "getEmission".}
    ## Get the emission value for specified face.

proc getEmissionFrontAndBack*(this: Material): bool  {.importcpp: "getEmissionFrontAndBack".}
    ## Return whether emission values are equal for front and back faces or
    ## not.

proc setShininess*(this: var Material, face: Face, shininess: cfloat)  {.importcpp: "setShininess".}
    ## Set shininess of specified face(s) of the material. valid shininess
    ## range is 0.0 to 128.0.

proc getShininess*(this: Material, face: Face): cfloat  {.importcpp: "getShininess".}
    ## Get the shininess value for specified face.

proc getShininessFrontAndBack*(this: Material): bool  {.importcpp: "getShininessFrontAndBack".}
    ## Return whether shininess values are equal for front and back faces or
    ## not.

proc setTransparency*(this: var Material, face: Face, trans: cfloat)  {.importcpp: "setTransparency".}
    ## Set the alpha value of ambient, diffuse, specular and emission colors
    ## of specified face, to 1-transparency. Valid transparency range is 0.0
    ## to 1.0.

proc setAlpha*(this: var Material, face: Face, alpha: cfloat)  {.importcpp: "setAlpha".}
    ## Set the alpha value of ambient, diffuse, specular and emission colors.
    ## Valid transparency range is 0.0 to 1.0.

{.pop.}  # header: "Material"
