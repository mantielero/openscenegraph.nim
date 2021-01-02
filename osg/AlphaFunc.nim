import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  ComparisonFunction* {.size:sizeof(cuint),header: "AlphaFunc", importcpp: "osg::AlphaFunc::ComparisonFunction", pure.} = enum
    NEVER = 512,
    LESS = 513,
    EQUAL = 514,
    LEQUAL = 515,
    GREATER = 516,
    NOTEQUAL = 517,
    GEQUAL = 518,
    ALWAYS = 519

  AlphaFunc* {.header: "AlphaFunc", importcpp: "osg::AlphaFunc", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL glAlphaFunc.



{.push header: "AlphaFunc".}

proc constructAlphaFunc*(): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc".}

proc constructAlphaFunc*(`func`: ComparisonFunction, `ref`: cfloat): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc(@)".}

proc constructAlphaFunc*(af: AlphaFunc, copyop: CopyOp = SHALLOW_COPY): AlphaFunc {.constructor,importcpp: "osg::AlphaFunc::AlphaFunc(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: AlphaFunc): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AlphaFunc, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AlphaFunc, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AlphaFunc): cstring  {.importcpp: "libraryName".}

proc className*(this: AlphaFunc): cstring  {.importcpp: "className".}

proc getType*(this: AlphaFunc): Type  {.importcpp: "getType".}

proc compare*(this: AlphaFunc, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: AlphaFunc, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc setFunction*(this: var AlphaFunc, `func`: ComparisonFunction, `ref`: cfloat)  {.importcpp: "setFunction".}

proc setFunction*(this: var AlphaFunc, `func`: ComparisonFunction)  {.importcpp: "setFunction".}

proc getFunction*(this: AlphaFunc): ComparisonFunction  {.importcpp: "getFunction".}

proc setReferenceValue*(this: var AlphaFunc, value: cfloat)  {.importcpp: "setReferenceValue".}

proc getReferenceValue*(this: AlphaFunc): cfloat  {.importcpp: "getReferenceValue".}

proc apply*(this: AlphaFunc, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "AlphaFunc"
