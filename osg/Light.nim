import Vec3  # provides: osg::Vec3
import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
{.push header: "Light".}

proc constructLight*(): Light {.constructor,importcpp: "osg::Light::Light".}

proc constructLight*(lightnum: cuint): Light {.constructor,importcpp: "osg::Light::Light(@)".}

proc constructLight*(light: Light, copyop: Copyop = SHALLOW_COPY): Light {.constructor,importcpp: "osg::Light::Light(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Light): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Light, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Light, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Light): cstring  {.importcpp: "libraryName".}

proc className*(this: Light): cstring  {.importcpp: "className".}

proc getType*(this: Light): Type  {.importcpp: "getType".}

proc compare*(this: Light, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: Light): cuint  {.importcpp: "getMember".}

proc getModeUsage*(this: Light, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setLightNum*(this: var Light, num: cint)  {.importcpp: "setLightNum".}
    ## Set which OpenGL light to operate on.

proc getLightNum*(this: Light): cint  {.importcpp: "getLightNum".}
    ## Get which OpenGL light this osg::Light operates on.

proc setAmbient*(this: var Light, ambient: Vec4)  {.importcpp: "setAmbient".}
    ## Set the ambient component of the light.

proc getAmbient*(this: Light): Vec4  {.importcpp: "getAmbient".}
    ## Get the ambient component of the light.

proc setDiffuse*(this: var Light, diffuse: Vec4)  {.importcpp: "setDiffuse".}
    ## Set the diffuse component of the light.

proc getDiffuse*(this: Light): Vec4  {.importcpp: "getDiffuse".}
    ## Get the diffuse component of the light.

proc setSpecular*(this: var Light, specular: Vec4)  {.importcpp: "setSpecular".}
    ## Set the specular component of the light.

proc getSpecular*(this: Light): Vec4  {.importcpp: "getSpecular".}
    ## Get the specular component of the light.

proc setPosition*(this: var Light, position: Vec4)  {.importcpp: "setPosition".}
    ## Set the position of the light.

proc getPosition*(this: Light): Vec4  {.importcpp: "getPosition".}
    ## Get the position of the light.

proc setDirection*(this: var Light, direction: Vec3)  {.importcpp: "setDirection".}
    ## Set the direction of the light.

proc getDirection*(this: Light): Vec3  {.importcpp: "getDirection".}
    ## Get the direction of the light.

proc setConstantAttenuation*(this: var Light, ant_attenuation: cfloat)  {.importcpp: "setConstantAttenuation".}
    ## Set the constant attenuation of the light.

proc getConstantAttenuation*(this: Light): cfloat  {.importcpp: "getConstantAttenuation".}
    ## Get the constant attenuation of the light.

proc setLinearAttenuation*(this: var Light, linear_attenuation: cfloat)  {.importcpp: "setLinearAttenuation".}
    ## Set the linear attenuation of the light.

proc getLinearAttenuation*(this: Light): cfloat  {.importcpp: "getLinearAttenuation".}
    ## Get the linear attenuation of the light.

proc setQuadraticAttenuation*(this: var Light, quadratic_attenuation: cfloat)  {.importcpp: "setQuadraticAttenuation".}
    ## Set the quadratic attenuation of the light.

proc getQuadraticAttenuation*(this: Light): cfloat  {.importcpp: "getQuadraticAttenuation".}
    ## Get the quadratic attenuation of the light.

proc setSpotExponent*(this: var Light, spot_exponent: cfloat)  {.importcpp: "setSpotExponent".}
    ## Set the spot exponent of the light.

proc getSpotExponent*(this: Light): cfloat  {.importcpp: "getSpotExponent".}
    ## Get the spot exponent of the light.

proc setSpotCutoff*(this: var Light, spot_cutoff: cfloat)  {.importcpp: "setSpotCutoff".}
    ## Set the spot cutoff of the light.

proc getSpotCutoff*(this: Light): cfloat  {.importcpp: "getSpotCutoff".}
    ## Get the spot cutoff of the light.

proc captureLightState*(this: var Light)  {.importcpp: "captureLightState".}
    ## Capture the lighting settings of the current OpenGL state and store
    ## them in this object.

proc apply*(this: Light, state: State)  {.importcpp: "apply".}
    ## Apply the light's state to the OpenGL state machine.

proc init*(this: var Light)  {.importcpp: "init".}
    ## Initialize the light's settings with some decent defaults.

{.pop.}  # header: "Light"
