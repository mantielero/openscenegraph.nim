import Object  # provides: osg::Object
import Referenced  # provides: osg::Referenced
import StateAttribute  # provides: osg::StateAttribute
import Array  # provides: osg::Array
import Shape  # provides: osg::Shape
import PrimitiveSet  # provides: osg::PrimitiveSet
import Node  # provides: osg::Node
import Image  # provides: osg::Image
import Drawable  # provides: osg::Drawable
import Callback  # provides: osg::StateAttributeCallback, osg::Callback, osg::UniformCallback
import StateSet  # provides: osg::StateSet
import Uniform  # provides: osg::Uniform
import Texture  # provides: osg::Texture
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

proc constructCopyOp*(flags: Copyflags): CopyOp {.constructor,importcpp: "osg::CopyOp::CopyOp(@)".}

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

{.pop.}  # header: "CopyOp"
