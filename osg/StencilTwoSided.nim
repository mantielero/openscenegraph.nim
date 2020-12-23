import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


type
  # Enums
  Face* {.size:sizeof(cuint),header: "StencilTwoSided", importcpp: "osg::StencilTwoSided::Face".} = enum
    FRONT = 0,
    BACK = 1

  Function* {.size:sizeof(cuint),header: "StencilTwoSided", importcpp: "osg::StencilTwoSided::Function".} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

  Operation* {.size:sizeof(cuint),header: "StencilTwoSided", importcpp: "osg::StencilTwoSided::Operation".} = enum
    KEEP = 7680,
    ZERO = 0,
    REPLACE = 7681,
    INCR = 7682,
    DECR = 7683,
    INVERT = 5386,
    INCR_WRAP = 34055,
    DECR_WRAP = 34056

{.push header: "StencilTwoSided".}


# Constructors and methods
proc constructStencilTwoSided*(): StencilTwoSided {.constructor,importcpp: "StencilTwoSided".}

proc constructStencilTwoSided*(stencil: Stenciltwosided, copyop: Copyop = SHALLOW_COPY): StencilTwoSided {.constructor,importcpp: "StencilTwoSided(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: StencilTwoSided): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: StencilTwoSided, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: StencilTwoSided, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: StencilTwoSided): cstring  {.importcpp: "libraryName".}

proc className*(this: StencilTwoSided): cstring  {.importcpp: "className".}

proc getType*(this: StencilTwoSided): Type  {.importcpp: "getType".}

proc compare*(this: StencilTwoSided, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: StencilTwoSided, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var StencilTwoSided, face: Face, `func`: Function, `ref`: cint, mask: cuint)  {.importcpp: "setFunction".}

proc setFunction*(this: var StencilTwoSided, face: Face, `func`: Function)  {.importcpp: "setFunction".}

proc getFunction*(this: StencilTwoSided, face: Face): Function  {.importcpp: "getFunction".}

proc setFunctionRef*(this: var StencilTwoSided, face: Face, `ref`: cint)  {.importcpp: "setFunctionRef".}

proc getFunctionRef*(this: StencilTwoSided, face: Face): cint  {.importcpp: "getFunctionRef".}

proc setFunctionMask*(this: var StencilTwoSided, face: Face, mask: cuint)  {.importcpp: "setFunctionMask".}

proc getFunctionMask*(this: StencilTwoSided, face: Face): cuint  {.importcpp: "getFunctionMask".}

proc setOperation*(this: var StencilTwoSided, face: Face, sfail: Operation, zfail: Operation, zpass: Operation)  {.importcpp: "setOperation".}
    ## set the operations to apply when the various stencil and depth tests
    ## fail or pass. First parameter is to control the operation when the
    ## stencil test fails. The second parameter is to control the operation
    ## when the stencil test passes, but depth test fails. The third
    ## parameter controls the operation when both the stencil test and depth
    ## pass. Ordering of parameter is the same as if using glStencilOp(,,).

proc setStencilFailOperation*(this: var StencilTwoSided, face: Face, sfail: Operation)  {.importcpp: "setStencilFailOperation".}
    ## set the operation when the stencil test fails.

proc getStencilFailOperation*(this: StencilTwoSided, face: Face): Operation  {.importcpp: "getStencilFailOperation".}
    ## get the operation when the stencil test fails.

proc setStencilPassAndDepthFailOperation*(this: var StencilTwoSided, face: Face, zfail: Operation)  {.importcpp: "setStencilPassAndDepthFailOperation".}
    ## set the operation when the stencil test passes but the depth test
    ## fails.

proc getStencilPassAndDepthFailOperation*(this: StencilTwoSided, face: Face): Operation  {.importcpp: "getStencilPassAndDepthFailOperation".}
    ## get the operation when the stencil test passes but the depth test
    ## fails.

proc setStencilPassAndDepthPassOperation*(this: var StencilTwoSided, face: Face, zpass: Operation)  {.importcpp: "setStencilPassAndDepthPassOperation".}
    ## set the operation when both the stencil test and the depth test pass.

proc getStencilPassAndDepthPassOperation*(this: StencilTwoSided, face: Face): Operation  {.importcpp: "getStencilPassAndDepthPassOperation".}
    ## get the operation when both the stencil test and the depth test pass.

proc setWriteMask*(this: var StencilTwoSided, face: Face, mask: cuint)  {.importcpp: "setWriteMask".}

proc getWriteMask*(this: StencilTwoSided, face: Face): cuint  {.importcpp: "getWriteMask".}

proc apply*(this: StencilTwoSided, state: State)  {.importcpp: "apply".}

{.pop.} # header: "StencilTwoSided
