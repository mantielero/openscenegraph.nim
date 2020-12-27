import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  ColorMaski* {.header: "ColorMaski", importcpp: "osg::ColorMaski", byref.} = object #of class osg::ColorMask
    ## Encapsulates glColorMaski function : the index version of glColorMask
    ## for multiple render target.



{.push header: "ColorMaski".}

proc constructColorMaski*(): ColorMaski {.constructor,importcpp: "osg::ColorMaski::ColorMaski".}

proc constructColorMaski*(buf: cuint, red: bool, green: bool, blue: bool, alpha: bool): ColorMaski {.constructor,importcpp: "osg::ColorMaski::ColorMaski(@)".}

proc constructColorMaski*(cm: Colormaski, copyop: Copyop = SHALLOW_COPY): ColorMaski {.constructor,importcpp: "osg::ColorMaski::ColorMaski(@)".}
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

{.pop.}  # header: "ColorMaski"
