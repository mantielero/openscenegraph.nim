import Object  # provides: osg::Object
import Referenced  # provides: osg::Referenced
import StateAttribute  # provides: osg::StateAttribute
import Array  # provides: osg::Array
import Shape  # provides: osg::Shape
import PrimitiveSet  # provides: osg::PrimitiveSet
import Node  # provides: osg::Node
import Image  # provides: osg::Image
import Drawable  # provides: osg::Drawable
import Callback  # provides: osg::Callback, osg::UniformCallback, osg::StateAttributeCallback
import StateSet  # provides: osg::StateSet
import Uniform  # provides: osg::Uniform
import Texture  # provides: osg::Texture
type
  Options* {.size:sizeof(cuint),header: "CopyOp", importcpp: "osg::CopyOp::Options".} = enum
    ptnsSHALLOW_COPY = 0,
    ptnsDEEP_COPY_OBJECTS = 1,
    ptnsDEEP_COPY_NODES = 2,
    ptnsDEEP_COPY_DRAWABLES = 4,
    ptnsDEEP_COPY_STATESETS = 8,
    ptnsDEEP_COPY_STATEATTRIBUTES = 16,
    ptnsDEEP_COPY_TEXTURES = 32,
    ptnsDEEP_COPY_IMAGES = 64,
    ptnsDEEP_COPY_ARRAYS = 128,
    ptnsDEEP_COPY_PRIMITIVES = 256,
    ptnsDEEP_COPY_SHAPES = 512,
    ptnsDEEP_COPY_UNIFORMS = 1024,
    ptnsDEEP_COPY_CALLBACKS = 2048,
    ptnsDEEP_COPY_USERDATA = 4096,
    ptnsDEEP_COPY_ALL = 2147483647

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
