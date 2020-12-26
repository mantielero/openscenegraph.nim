import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/StateSet  # provides: osg::StateSet
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/Vec4d  # provides: osg::Vec4d
type
  Sampler* {.header: "Sampler", importcpp: "osg::Sampler", byref.} = object #of osg::StateAttribute
    ## OpenGL Sampler OpenGL 3.3 required https://www.khronos.org/registry/Op
    ## enGL/extensions/ARB/ARB_sampler_objects.txt State Attribute controllig
    ## sampling instead of Texture Sampler is prioritary over Texture sample
    ## parameter (don't play with both)



{.push header: "Sampler".}

proc constructSampler*(): Sampler {.constructor,importcpp: "osg::Sampler::Sampler".}

proc constructSampler*(text: Sampler, copyop: Copyop = SHALLOW_COPY): Sampler {.constructor,importcpp: "osg::Sampler::Sampler(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Sampler): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Sampler, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Sampler, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Sampler): cstring  {.importcpp: "libraryName".}

proc className*(this: Sampler): cstring  {.importcpp: "className".}

proc getType*(this: Sampler): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: Sampler): bool  {.importcpp: "isTextureAttribute".}

proc setWrap*(this: var Sampler, which: Wrapparameter, wrap: Wrapmode)  {.importcpp: "setWrap".}
    ## Sets the texture wrap mode.

proc getWrap*(this: Sampler, which: Wrapparameter): Wrapmode  {.importcpp: "getWrap".}
    ## Gets the texture wrap mode.

proc setFilter*(this: var Sampler, which: Filterparameter, filter: Filtermode)  {.importcpp: "setFilter".}
    ## Sets the texture filter mode.

proc getFilter*(this: Sampler, which: Filterparameter): Filtermode  {.importcpp: "getFilter".}
    ## Gets the texture filter mode.

proc setShadowCompareFunc*(this: var Sampler, `func`: Shadowcomparefunc)  {.importcpp: "setShadowCompareFunc".}
    ## Sets shadow texture comparison function.

proc getShadowCompareFunc*(this: Sampler): Shadowcomparefunc  {.importcpp: "getShadowCompareFunc".}

proc setShadowTextureMode*(this: var Sampler, mode: Shadowtexturemode)  {.importcpp: "setShadowTextureMode".}
    ## Sets shadow texture mode after comparison.

proc getShadowTextureMode*(this: Sampler): Shadowtexturemode  {.importcpp: "getShadowTextureMode".}

proc setBorderColor*(this: var Sampler, color: Vec4d)  {.importcpp: "setBorderColor".}
    ## Sets the border color. Only used when wrap mode is CLAMP_TO_BORDER.
    ## The border color will be casted to the appropriate type to match the
    ## internal pixel format of the texture.

proc getBorderColor*(this: Sampler): Vec4d  {.importcpp: "getBorderColor".}
    ## Gets the border color.

proc setMaxAnisotropy*(this: var Sampler, anis: cfloat)  {.importcpp: "setMaxAnisotropy".}
    ## Sets the maximum anisotropy value, default value is 1.0 for no
    ## anisotropic filtering. If hardware does not support anisotropic
    ## filtering, use normal filtering (equivalent to a max anisotropy value
    ## of 1.0. Valid range is 1.0f upwards. The maximum value depends on the
    ## graphics system.

proc getMaxAnisotropy*(this: Sampler): cfloat  {.importcpp: "getMaxAnisotropy".}
    ## Gets the maximum anisotropy value.

proc setMinLOD*(this: var Sampler, anis: cfloat)  {.importcpp: "setMinLOD".}

proc getMinLOD*(this: Sampler): cfloat  {.importcpp: "getMinLOD".}
    ## Gets the maximum anisotropy value.

proc setMaxLOD*(this: var Sampler, anis: cfloat)  {.importcpp: "setMaxLOD".}

proc getMaxLOD*(this: Sampler): cfloat  {.importcpp: "getMaxLOD".}
    ## Gets the maximum anisotropy value.

proc setLODBias*(this: var Sampler, anis: cfloat)  {.importcpp: "setLODBias".}

proc getLODBias*(this: Sampler): cfloat  {.importcpp: "getLODBias".}
    ## Gets the maximum anisotropy value.

proc generateSamplerObjects*(this: var Sampler, Stateset)  {.importcpp: "generateSamplerObjects".}
    ## helper method to generate Sampler from Texture's sampling parameters
    ## (except shadow_texture_mode left to NONE)

proc apply*(this: Sampler, state: State)  {.importcpp: "apply".}

proc compileGLObjects*(this: Sampler, State)  {.importcpp: "compileGLObjects".}

proc releaseGLObjects*(this: Sampler, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## release state's SamplerObject *

proc compare*(this: Sampler, sa: Stateattribute): cint  {.importcpp: "compare".}

{.pop.}  # header: "Sampler"
