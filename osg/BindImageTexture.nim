import gl # Provides GLenum, GLboolean, GLint, GLuint
import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State
import Texture # Provides Texture


type
  Access* {.size:sizeof(cuint),header: "BindImageTexture", importcpp: "osg::BindImageTexture::Access".} = enum
    ## Type of access that will be performed on the texture image.

    NOT_USED = 0,
    READ_ONLY = 35000,
    WRITE_ONLY = 35001,
    READ_WRITE = 35002

{.push header: "BindImageTexture".}


# Constructors and methods
proc constructBindImageTexture*(imageunit: GLuint = 0, target: ptr Texture  = 0, access: Access, format: GLenum, level: cint, layered: bool, layer: cint): BindImageTexture {.constructor,importcpp: "BindImageTexture(@)".}

proc constructBindImageTexture*(o: Bindimagetexture, op: Copyop = SHALLOW_COPY): BindImageTexture {.constructor,importcpp: "BindImageTexture(@)".}

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

{.pop.} # header: "BindImageTexture
