import opengl
import CopyOp
import Material

import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: Image  was providing: osg::Image
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
{.push header: "Texture2DMultisample".}

proc constructTexture2DMultisample*(): Texture2DMultisample {.constructor,importcpp: "osg::Texture2DMultisample::Texture2DMultisample".}

proc constructTexture2DMultisample*(numSamples: GLsizei, fixedsamplelocations: GLboolean): Texture2DMultisample {.constructor,importcpp: "osg::Texture2DMultisample::Texture2DMultisample(@)".}

proc constructTexture2DMultisample*(text: Texture2DMultisample, copyop: CopyOp = constructCopyOp(CopyFlags(SHALLOW_COPY))): Texture2DMultisample {.constructor,importcpp: "osg::Texture2DMultisample::Texture2DMultisample(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Texture2DMultisample): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Texture2DMultisample, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Texture2DMultisample, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Texture2DMultisample): cstring  {.importcpp: "libraryName".}

proc className*(this: Texture2DMultisample): cstring  {.importcpp: "className".}

proc getType*(this: Texture2DMultisample): Type  {.importcpp: "getType".}

proc compare*(this: Texture2DMultisample, rhs: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getTextureTarget*(this: Texture2DMultisample): GLenum  {.importcpp: "getTextureTarget".}

proc getModeUsage*(this: Texture2DMultisample, a00: ModeUsage): bool  {.importcpp: "getModeUsage".}
    ## Texture2DMultisample is related to non fixed pipeline usage only so
    ## isn't appropriate to enable/disable.

proc setTextureSize*(this: Texture2DMultisample, width: cint, height: cint)  {.importcpp: "setTextureSize".}
    ## Sets the texture width and height. If width or height are zero,
    ## calculate the respective value from the source image size.

proc setNumSamples*(this: var Texture2DMultisample, samples: cint)  {.importcpp: "setNumSamples".}

proc getNumSamples*(this: Texture2DMultisample): GLsizei  {.importcpp: "getNumSamples".}

proc setFixedSampleLocations*(this: var Texture2DMultisample, fixedSampleLocations: GLboolean)  {.importcpp: "setFixedSampleLocations".}

proc getFixedSampleLocations*(this: Texture2DMultisample): GLboolean  {.importcpp: "getFixedSampleLocations".}

proc setImage*(this: var Texture2DMultisample, a00: cuint, a01: ptr Image )  {.importcpp: "setImage".}

proc getImage*(this: var Texture2DMultisample, a00: cuint): ptr Image   {.importcpp: "getImage".}

proc getImage*(this: Texture2DMultisample, a00: cuint): ptr Image   {.importcpp: "getImage".}

proc getNumImages*(this: Texture2DMultisample): cuint  {.importcpp: "getNumImages".}

proc allocateMipmap*(this: Texture2DMultisample, a00: State)  {.importcpp: "allocateMipmap".}

proc setTextureWidth*(this: var Texture2DMultisample, width: cint)  {.importcpp: "setTextureWidth".}

proc setTextureHeight*(this: var Texture2DMultisample, height: cint)  {.importcpp: "setTextureHeight".}

proc getTextureWidth*(this: Texture2DMultisample): cint  {.importcpp: "getTextureWidth".}

proc getTextureHeight*(this: Texture2DMultisample): cint  {.importcpp: "getTextureHeight".}

proc getTextureDepth*(this: Texture2DMultisample): cint  {.importcpp: "getTextureDepth".}

proc apply*(this: Texture2DMultisample, state: State)  {.importcpp: "apply".}
    ## Bind the texture object. If the texture object hasn't already been
    ## compiled, create the texture mipmap levels.

proc computeInternalFormat*(this: Texture2DMultisample)  {.importcpp: "computeInternalFormat".}

{.pop.}  # header: "Texture2DMultisample"
