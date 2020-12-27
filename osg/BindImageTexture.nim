import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
import Texture  # provides: osg::Texture
type
  Access* {.size:sizeof(cuint),header: "BindImageTexture", importcpp: "osg::BindImageTexture::Access".} = enum
    ## Type of access that will be performed on the texture image.

    ccssNOT_USED = 0,
    ccssREAD_ONLY = 35000,
    ccssWRITE_ONLY = 35001,
    ccssREAD_WRITE = 35002

  BindImageTexture* {.header: "BindImageTexture", importcpp: "osg::BindImageTexture", byref.} = object #of osg::StateAttribute
    ## Bind texture to an image unit (available only if GL version is 4.2 or
    ## greater) The format parameter for the image unit need not exactly
    ## match the texture internal format, but if it is set to 0, the texture
    ## internal format will be used. See
    ## http://www.opengl.org/registry/specs/ARB/shader_image_load_store.txt
    ## void bindToImageUnit(unsigned int unit, GLenum access, GLenum
    ## format=0, int level=0, bool layered=false, int layer=0);



{.push header: "BindImageTexture".}

proc constructBindImageTexture*(imageunit: GLuint = 0, target: ptr Texture  = 0, access: Access, format: GLenum, level: cint, layered: bool, layer: cint): BindImageTexture {.constructor,importcpp: "osg::BindImageTexture::BindImageTexture(@)".}

proc constructBindImageTexture*(o: Bindimagetexture, op: Copyop = SHALLOW_COPY): BindImageTexture {.constructor,importcpp: "osg::BindImageTexture::BindImageTexture(@)".}

proc cloneType*(this: BindImageTexture): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BindImageTexture, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: BindImageTexture, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BindImageTexture): cstring  {.importcpp: "libraryName".}

proc className*(this: BindImageTexture): cstring  {.importcpp: "className".}

proc getType*(this: BindImageTexture): Type  {.importcpp: "getType".}

proc setImageUnit*(this: var BindImageTexture, i: GLuint)  {.importcpp: "setImageUnit".}

proc getImageUnit*(this: BindImageTexture): GLuint  {.importcpp: "getImageUnit".}

proc setLevel*(this: var BindImageTexture, i: GLint)  {.importcpp: "setLevel".}

proc getLevel*(this: BindImageTexture): GLint  {.importcpp: "getLevel".}

proc setIsLayered*(this: var BindImageTexture, i: GLboolean)  {.importcpp: "setIsLayered".}

proc getIsLayered*(this: BindImageTexture): GLboolean  {.importcpp: "getIsLayered".}

proc setLayer*(this: var BindImageTexture, i: GLint)  {.importcpp: "setLayer".}

proc getLayer*(this: BindImageTexture): GLint  {.importcpp: "getLayer".}

proc setAccess*(this: var BindImageTexture, i: Access)  {.importcpp: "setAccess".}

proc getAccess*(this: BindImageTexture): Access  {.importcpp: "getAccess".}

proc setFormat*(this: var BindImageTexture, i: GLenum)  {.importcpp: "setFormat".}

proc getFormat*(this: BindImageTexture): GLenum  {.importcpp: "getFormat".}

proc setTexture*(this: var BindImageTexture, target: ptr Texture )  {.importcpp: "setTexture".}

proc getTexture*(this: var BindImageTexture): ptr Texture   {.importcpp: "getTexture".}

proc getTexture*(this: BindImageTexture): ptr Texture   {.importcpp: "getTexture".}

proc apply*(this: BindImageTexture, state: State)  {.importcpp: "apply".}

proc compare*(this: BindImageTexture, sa: Stateattribute): cint  {.importcpp: "compare".}

proc getMember*(this: BindImageTexture): cuint  {.importcpp: "getMember".}

{.pop.}  # header: "BindImageTexture"
