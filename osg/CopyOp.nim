import osg_types
  # File: Object  was providing: osg::Object
  # File: Referenced  was providing: osg::Referenced
  # File: StateAttribute  was providing: osg::StateAttribute
  # File: Array  was providing: osg::Array
  # File: Shape  was providing: osg::Shape
  # File: PrimitiveSet  was providing: osg::PrimitiveSet
  # File: Node  was providing: osg::Node
  # File: Image  was providing: osg::Image
  # File: Drawable  was providing: osg::Drawable
  # File: Callback  was providing: osg::UniformCallback, osg::StateAttributeCallback, osg::Callback
  # File: StateSet  was providing: osg::StateSet
  # File: Uniform  was providing: osg::Uniform
  # File: Texture  was providing: osg::Texture
type
  CopyFlags* {.header: "CopyOp", importcpp: "osg::CopyOp::CopyFlags".} = cuint


{.push header: "CopyOp".}

proc constructCopyOp*(flags: CopyFlags): CopyOp {.constructor,importcpp: "osg::CopyOp::CopyOp(@)".}

proc setCopyFlags*(this: var CopyOp, flags: CopyFlags)  {.importcpp: "setCopyFlags".}

proc getCopyFlags*(this: CopyOp): CopyFlags  {.importcpp: "getCopyFlags".}

proc `()`*(this: CopyOp, `ref`: ptr Referenced ): ptr Referenced   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, obj: ptr Object ): ptr Object   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, node: ptr Node ): ptr Node   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, drawable: ptr Drawable ): ptr Drawable   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, stateset: ptr StateSet ): ptr StateSet   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, attr: ptr StateAttribute ): ptr StateAttribute   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, text: ptr Texture ): ptr Texture   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, image: ptr Image ): ptr Image   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, array: ptr Array ): ptr Array   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, primitives: ptr PrimitiveSet ): ptr PrimitiveSet   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, shape: ptr Shape ): ptr Shape   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, shape: ptr Uniform ): ptr Uniform   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, nodecallback: ptr Callback ): ptr Callback   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, stateattributecallback: ptr StateAttributeCallback ): ptr StateAttributeCallback   {.importcpp: "# () #".}

proc `()`*(this: CopyOp, uniformcallback: ptr UniformCallback ): ptr UniformCallback   {.importcpp: "# () #".}

{.pop.}  # header: "CopyOp"
