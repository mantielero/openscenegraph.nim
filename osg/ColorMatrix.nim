import CopyOp # Provides CopyOp
import Object # Provides Object
import Matrix # Provides Matrix
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "ColorMatrix".}


# Constructors and methods
proc constructColorMatrix*(): ColorMatrix {.constructor,importcpp: "ColorMatrix".}

proc constructColorMatrix*(cm: Colormatrix, copyop: Copyop = SHALLOW_COPY): ColorMatrix {.constructor,importcpp: "ColorMatrix(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ColorMatrix): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ColorMatrix, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ColorMatrix, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ColorMatrix): cstring  {.importcpp: "libraryName".}

proc className*(this: ColorMatrix): cstring  {.importcpp: "className".}

proc getType*(this: ColorMatrix): Type  {.importcpp: "getType".}

proc compare*(this: ColorMatrix, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMatrix*(this: var ColorMatrix, matrix: Matrix)  {.importcpp: "setMatrix".}
    ## Sets the color matrix.

proc getMatrix*(this: var ColorMatrix): Matrix  {.importcpp: "getMatrix".}
    ## Gets the color matrix.

proc getMatrix*(this: ColorMatrix): Matrix  {.importcpp: "getMatrix".}
    ## Gets the const color matrix.

proc apply*(this: ColorMatrix, state: State)  {.importcpp: "apply".}
    ## Applies as OpenGL texture matrix.

{.pop.} # header: "ColorMatrix
