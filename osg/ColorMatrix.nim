import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
type
  ColorMatrix* {.header: "ColorMatrix", importcpp: "osg::ColorMatrix", byref.} = object #of class osg::StateAttribute
    ## Encapsulates OpenGL color matrix functionality.



{.push header: "ColorMatrix".}

proc constructColorMatrix*(): ColorMatrix {.constructor,importcpp: "osg::ColorMatrix::ColorMatrix".}

proc constructColorMatrix*(cm: ColorMatrix, copyop: CopyOp = SHALLOW_COPY): ColorMatrix {.constructor,importcpp: "osg::ColorMatrix::ColorMatrix(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ColorMatrix): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ColorMatrix, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ColorMatrix, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ColorMatrix): cstring  {.importcpp: "libraryName".}

proc className*(this: ColorMatrix): cstring  {.importcpp: "className".}

proc getType*(this: ColorMatrix): Type  {.importcpp: "getType".}

proc compare*(this: ColorMatrix, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMatrix*(this: var ColorMatrix, matrix: Matrix)  {.importcpp: "setMatrix".}
    ## Sets the color matrix.

proc getMatrix*(this: var ColorMatrix): Matrix  {.importcpp: "getMatrix".}
    ## Gets the color matrix.

proc getMatrix*(this: ColorMatrix): Matrix  {.importcpp: "getMatrix".}
    ## Gets the const color matrix.

proc apply*(this: ColorMatrix, state: State)  {.importcpp: "apply".}
    ## Applies as OpenGL texture matrix.

{.pop.}  # header: "ColorMatrix"
