import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import Plane  # provides: osg::Plane
import CopyOp  # provides: osg::CopyOp
import Matrixd  # provides: osg::Matrixd
type
  Mode* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Mode".} = enum
    mdEYE_LINEAR = 9216,
    mdOBJECT_LINEAR = 9217,
    mdSPHERE_MAP = 9218,
    mdNORMAL_MAP = 34065,
    mdREFLECTION_MAP = 34066

  Coord* {.size:sizeof(cuint),header: "TexGen", importcpp: "osg::TexGen::Coord".} = enum
    crdS = 0,
    crdT = 1,
    crdR = 2,
    crdQ = 3



{.push header: "TexGen".}

proc constructTexGen*(): TexGen {.constructor,importcpp: "osg::TexGen::TexGen".}

proc constructTexGen*(texgen: Texgen, copyop: Copyop = SHALLOW_COPY): TexGen {.constructor,importcpp: "osg::TexGen::TexGen(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexGen): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexGen, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexGen, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexGen): cstring  {.importcpp: "libraryName".}

proc className*(this: TexGen): cstring  {.importcpp: "className".}

proc getType*(this: TexGen): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexGen): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexGen, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: TexGen, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

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
