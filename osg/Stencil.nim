import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Function* {.size:sizeof(cuint),header: "Stencil", importcpp: "osg::Stencil::Function", pure.} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

  Operation* {.size:sizeof(cuint),header: "Stencil", importcpp: "osg::Stencil::Operation", pure.} = enum
    ZERO = 0,
    INVERT = 5386,
    KEEP = 7680,
    REPLACE = 7681,
    INCR = 7682,
    DECR = 7683,
    INCR_WRAP = 34055,
    DECR_WRAP = 34056

  Stencil* {.header: "Stencil", importcpp: "osg::Stencil", byref.} = object #of class osg::StateAttribute
    ## Encapsulate OpenGL glStencilFunc/Op/Mask functions.



{.push header: "Stencil".}

proc constructStencil*(): Stencil {.constructor,importcpp: "osg::Stencil::Stencil".}

proc constructStencil*(stencil: Stencil, copyop: CopyOp = SHALLOW_COPY): Stencil {.constructor,importcpp: "osg::Stencil::Stencil(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Stencil): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Stencil, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Stencil, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Stencil): cstring  {.importcpp: "libraryName".}

proc className*(this: Stencil): cstring  {.importcpp: "className".}

proc getType*(this: Stencil): Type  {.importcpp: "getType".}

proc compare*(this: Stencil, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Stencil, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var Stencil, `func`: Function, `ref`: cint, mask: cuint)  {.importcpp: "setFunction".}

proc setFunction*(this: var Stencil, `func`: Function)  {.importcpp: "setFunction".}

proc getFunction*(this: Stencil): Function  {.importcpp: "getFunction".}

proc setFunctionRef*(this: var Stencil, `ref`: cint)  {.importcpp: "setFunctionRef".}

proc getFunctionRef*(this: Stencil): cint  {.importcpp: "getFunctionRef".}

proc setFunctionMask*(this: var Stencil, mask: cuint)  {.importcpp: "setFunctionMask".}

proc getFunctionMask*(this: Stencil): cuint  {.importcpp: "getFunctionMask".}

proc setOperation*(this: var Stencil, sfail: Operation, zfail: Operation, zpass: Operation)  {.importcpp: "setOperation".}
    ## set the operations to apply when the various stencil and depth tests
    ## fail or pass. First parameter is to control the operation when the
    ## stencil test fails. The second parameter is to control the operation
    ## when the stencil test passes, but depth test fails. The third
    ## parameter controls the operation when both the stencil test and depth
    ## pass. Ordering of parameter is the same as if using glStencilOp(,,).

proc setStencilFailOperation*(this: var Stencil, sfail: Operation)  {.importcpp: "setStencilFailOperation".}
    ## set the operation when the stencil test fails.

proc getStencilFailOperation*(this: Stencil): Operation  {.importcpp: "getStencilFailOperation".}
    ## get the operation when the stencil test fails.

proc setStencilPassAndDepthFailOperation*(this: var Stencil, zfail: Operation)  {.importcpp: "setStencilPassAndDepthFailOperation".}
    ## set the operation when the stencil test passes but the depth test
    ## fails.

proc getStencilPassAndDepthFailOperation*(this: Stencil): Operation  {.importcpp: "getStencilPassAndDepthFailOperation".}
    ## get the operation when the stencil test passes but the depth test
    ## fails.

proc setStencilPassAndDepthPassOperation*(this: var Stencil, zpass: Operation)  {.importcpp: "setStencilPassAndDepthPassOperation".}
    ## set the operation when both the stencil test and the depth test pass.

proc getStencilPassAndDepthPassOperation*(this: Stencil): Operation  {.importcpp: "getStencilPassAndDepthPassOperation".}
    ## get the operation when both the stencil test and the depth test pass.

proc setWriteMask*(this: var Stencil, mask: cuint)  {.importcpp: "setWriteMask".}

proc getWriteMask*(this: Stencil): cuint  {.importcpp: "getWriteMask".}

proc apply*(this: Stencil, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Stencil"
