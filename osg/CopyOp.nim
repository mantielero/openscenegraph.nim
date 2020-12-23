import Drawable # Provides Drawable
import StateSet # Provides StateSet
import Texture # Provides Texture
import Shape # Provides Shape
import Array # Provides Array
import StateAttribute # Provides StateAttribute
import Node # Provides Node
import Referenced # Provides Referenced
import PrimitiveSet # Provides PrimitiveSet
import Callback # Provides Callback, UniformCallback, StateAttributeCallback
import Object # Provides Object
import Image # Provides Image
import Uniform # Provides Uniform


type
  Options* {.size:sizeof(cuint),header: "CopyOp", importcpp: "osg::CopyOp::Options".} = enum
    SHALLOW_COPY = 0,
    DEEP_COPY_OBJECTS = 1,
    DEEP_COPY_NODES = 2,
    DEEP_COPY_DRAWABLES = 4,
    DEEP_COPY_STATESETS = 8,
    DEEP_COPY_STATEATTRIBUTES = 16,
    DEEP_COPY_TEXTURES = 32,
    DEEP_COPY_IMAGES = 64,
    DEEP_COPY_ARRAYS = 128,
    DEEP_COPY_PRIMITIVES = 256,
    DEEP_COPY_SHAPES = 512,
    DEEP_COPY_UNIFORMS = 1024,
    DEEP_COPY_CALLBACKS = 2048,
    DEEP_COPY_USERDATA = 4096,
    DEEP_COPY_ALL = 2147483647

  CopyFlags* {.header: "CopyOp", importcpp: "osg::CopyOp::CopyFlags".} = cuint
{.push header: "CopyOp".}


# Constructors and methods
proc constructCopyOp*(flags: Copyflags): CopyOp {.constructor,importcpp: "CopyOp(@)".}

proc setCopyFlags*(this: var CopyOp, flags: Copyflags)  {.importcpp: "setCopyFlags".}

proc getCopyFlags*(this: CopyOp): Copyflags  {.importcpp: "getCopyFlags".}

proc `()`*(this: CopyOp, `ref`: ptr Referenced ): ptr Referenced   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, obj: ptr Object ): ptr Object   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, node: ptr Node ): ptr Node   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, drawable: ptr Drawable ): ptr Drawable   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, stateset: ptr Stateset ): ptr Stateset   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, attr: ptr Stateattribute ): ptr Stateattribute   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, text: ptr Texture ): ptr Texture   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, image: ptr Image ): ptr Image   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, array: ptr Array ): ptr Array   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, primitives: ptr Primitiveset ): ptr Primitiveset   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, shape: ptr Shape ): ptr Shape   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, shape: ptr Uniform ): ptr Uniform   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, nodecallback: ptr Callback ): ptr Callback   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, stateattributecallback: ptr Stateattributecallback ): ptr Stateattributecallback   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, uniformcallback: ptr Uniformcallback ): ptr Uniformcallback   {.importcpp: "# () #".}

{.pop.} # header: "CopyOp
