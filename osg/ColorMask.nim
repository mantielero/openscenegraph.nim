import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "ColorMask".}


# Constructors and methods
proc constructColorMask*(): ColorMask {.constructor,importcpp: "ColorMask".}

proc constructColorMask*(red: bool, green: bool, blue: bool, alpha: bool): ColorMask {.constructor,importcpp: "ColorMask(@)".}

proc constructColorMask*(cm: Colormask, copyop: Copyop = SHALLOW_COPY): ColorMask {.constructor,importcpp: "ColorMask(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ColorMask): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ColorMask, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ColorMask, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ColorMask): cstring  {.importcpp: "libraryName".}

proc className*(this: ColorMask): cstring  {.importcpp: "className".}

proc getType*(this: ColorMask): Type  {.importcpp: "getType".}

proc compare*(this: ColorMask, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMask*(this: var ColorMask, red: bool, green: bool, blue: bool, alpha: bool)  {.importcpp: "setMask".}

proc setRedMask*(this: var ColorMask, mask: bool)  {.importcpp: "setRedMask".}

proc getRedMask*(this: ColorMask): bool  {.importcpp: "getRedMask".}

proc setGreenMask*(this: var ColorMask, mask: bool)  {.importcpp: "setGreenMask".}

proc getGreenMask*(this: ColorMask): bool  {.importcpp: "getGreenMask".}

proc setBlueMask*(this: var ColorMask, mask: bool)  {.importcpp: "setBlueMask".}

proc getBlueMask*(this: ColorMask): bool  {.importcpp: "getBlueMask".}

proc setAlphaMask*(this: var ColorMask, mask: bool)  {.importcpp: "setAlphaMask".}

proc getAlphaMask*(this: ColorMask): bool  {.importcpp: "getAlphaMask".}

proc apply*(this: ColorMask, state: State)  {.importcpp: "apply".}

{.pop.} # header: "ColorMask
