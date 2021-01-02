import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
{.push header: "ColorMask".}

proc constructColorMask*(): ColorMask {.constructor,importcpp: "osg::ColorMask::ColorMask".}

proc constructColorMask*(red: bool, green: bool, blue: bool, alpha: bool): ColorMask {.constructor,importcpp: "osg::ColorMask::ColorMask(@)".}

proc constructColorMask*(cm: ColorMask, copyop: CopyOp = SHALLOW_COPY): ColorMask {.constructor,importcpp: "osg::ColorMask::ColorMask(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ColorMask): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ColorMask, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ColorMask, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ColorMask): cstring  {.importcpp: "libraryName".}

proc className*(this: ColorMask): cstring  {.importcpp: "className".}

proc getType*(this: ColorMask): Type  {.importcpp: "getType".}

proc compare*(this: ColorMask, sa: StateAttribute): cint  {.importcpp: "compare".}
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

{.pop.}  # header: "ColorMask"
