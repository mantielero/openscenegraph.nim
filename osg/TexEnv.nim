import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Vec4  # provides: osg::Vec4
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  Mode* {.size:sizeof(cuint),header: "TexEnv", importcpp: "osg::TexEnv::Mode".} = enum
    ADD = 260,
    BLEND = 3042,
    REPLACE = 7681,
    MODULATE = 8448,
    DECAL = 8449

  TexEnv* {.header: "TexEnv", importcpp: "osg::TexEnv", byref.} = object #of class osg::StateAttribute
    ## TexEnv encapsulates the OpenGL glTexEnv (texture environment) state.



{.push header: "TexEnv".}

proc constructTexEnv*(mode: Mode): TexEnv {.constructor,importcpp: "osg::TexEnv::TexEnv(@)".}

proc constructTexEnv*(texenv: Texenv, copyop: Copyop = SHALLOW_COPY): TexEnv {.constructor,importcpp: "osg::TexEnv::TexEnv(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexEnv): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexEnv, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexEnv, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexEnv): cstring  {.importcpp: "libraryName".}

proc className*(this: TexEnv): cstring  {.importcpp: "className".}

proc getType*(this: TexEnv): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexEnv): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexEnv, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMode*(this: var TexEnv, mode: Mode)  {.importcpp: "setMode".}

proc getMode*(this: TexEnv): Mode  {.importcpp: "getMode".}

proc setColor*(this: var TexEnv, color: Vec4)  {.importcpp: "setColor".}

proc getColor*(this: var TexEnv): Vec4  {.importcpp: "getColor".}

proc getColor*(this: TexEnv): Vec4  {.importcpp: "getColor".}

proc apply*(this: TexEnv, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "TexEnv"
