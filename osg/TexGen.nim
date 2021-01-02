import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: Plane  was providing: osg::Plane
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrixd  was providing: osg::Matrixd
type
  Mode* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Mode", pure.} = enum
    EYE_LINEAR = 9216,
    OBJECT_LINEAR = 9217,
    SPHERE_MAP = 9218,
    NORMAL_MAP = 34065,
    REFLECTION_MAP = 34066

  Coord* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Coord", pure.} = enum
    S = 0,
    T = 1,
    R = 2,
    Q = 3



{.push header: "TexGen".}

proc constructTexGen*(): TexGen {.constructor,importcpp: "osg::TexGen::TexGen".}

proc constructTexGen*(texgen: TexGen, copyop: CopyOp = SHALLOW_COPY): TexGen {.constructor,importcpp: "osg::TexGen::TexGen(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexGen): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexGen, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexGen, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexGen): cstring  {.importcpp: "libraryName".}

proc className*(this: TexGen): cstring  {.importcpp: "className".}

proc getType*(this: TexGen): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexGen): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexGen, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: TexGen, usage: ModeUsage): bool  {.importcpp: "getModeUsage".}

proc apply*(this: TexGen, state: State)  {.importcpp: "apply".}

proc setMode*(this: var TexGen, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: TexGen): Mode  {.importcpp: "getMode".}

proc setPlane*(this: var TexGen, which: Coord, plane: Plane)  {.importcpp: "setPlane".}

proc getPlane*(this: var TexGen, which: Coord): Plane  {.importcpp: "getPlane".}

proc getPlane*(this: TexGen, which: Coord): Plane  {.importcpp: "getPlane".}

proc setPlanesFromMatrix*(this: var TexGen, matrix: Matrixd)  {.importcpp: "setPlanesFromMatrix".}
    ## Set the tex gen planes from specified matrix. Typical usage would be
    ## to pass in a projection matrix to set up projective texturing.

{.pop.}  # header: "TexGen"
