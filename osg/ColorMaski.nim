import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "ColorMaski".}


# Constructors and methods
proc constructColorMaski*(): ColorMaski {.constructor,importcpp: "ColorMaski".}

proc constructColorMaski*(buf: cuint, red: bool, green: bool, blue: bool, alpha: bool): ColorMaski {.constructor,importcpp: "ColorMaski(@)".}

proc constructColorMaski*(cm: Colormaski, copyop: Copyop = SHALLOW_COPY): ColorMaski {.constructor,importcpp: "ColorMaski(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ColorMaski): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ColorMaski, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ColorMaski, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ColorMaski): cstring  {.importcpp: "libraryName".}

proc className*(this: ColorMaski): cstring  {.importcpp: "className".}

proc getType*(this: ColorMaski): Type  {.importcpp: "getType".}

proc compare*(this: ColorMaski, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: ColorMaski): cuint  {.importcpp: "getMember".}
    ## Return the buffer index as the member identifier.

proc setIndex*(this: var ColorMaski, buf: cuint)  {.importcpp: "setIndex".}
    ## Set the renderbuffer index of the ColorMaski.

proc getIndex*(this: ColorMaski): cuint  {.importcpp: "getIndex".}
    ## Get the renderbuffer index of the ColorMaski.

proc apply*(this: ColorMaski, state: State)  {.importcpp: "apply".}

{.pop.} # header: "ColorMaski
