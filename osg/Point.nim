import Vec3  # provides: osg::Vec3
import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute, osg::StateAttribute::Type
import CopyOp  # provides: osg::CopyOp
type
  Point* {.header: "Point", importcpp: "osg::Point", byref.} = object #of class osg::StateAttribute
    ## Point - encapsulates the OpenGL point smoothing and size state.



{.push header: "Point".}

proc constructPoint*(): Point {.constructor,importcpp: "osg::Point::Point".}

proc constructPoint*(size: cfloat): Point {.constructor,importcpp: "osg::Point::Point(@)".}

proc constructPoint*(point: Point, copyop: Copyop = SHALLOW_COPY): Point {.constructor,importcpp: "osg::Point::Point(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Point): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Point, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Point, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Point): cstring  {.importcpp: "libraryName".}

proc className*(this: Point): cstring  {.importcpp: "className".}

proc getType*(this: Point): Type  {.importcpp: "getType".}

proc compare*(this: Point, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getModeUsage*(this: Point, usage: Modeusage): bool  {.importcpp: "getModeUsage".}

proc setSize*(this: var Point, size: cfloat)  {.importcpp: "setSize".}

proc getSize*(this: Point): cfloat  {.importcpp: "getSize".}

proc setFadeThresholdSize*(this: var Point, fadeThresholdSize: cfloat)  {.importcpp: "setFadeThresholdSize".}

proc getFadeThresholdSize*(this: Point): cfloat  {.importcpp: "getFadeThresholdSize".}

proc setDistanceAttenuation*(this: var Point, distanceAttenuation: Vec3)  {.importcpp: "setDistanceAttenuation".}

proc getDistanceAttenuation*(this: Point): Vec3  {.importcpp: "getDistanceAttenuation".}

proc setMinSize*(this: var Point, minSize: cfloat)  {.importcpp: "setMinSize".}

proc getMinSize*(this: Point): cfloat  {.importcpp: "getMinSize".}

proc setMaxSize*(this: var Point, maxSize: cfloat)  {.importcpp: "setMaxSize".}

proc getMaxSize*(this: Point): cfloat  {.importcpp: "getMaxSize".}

proc apply*(this: Point, state: State)  {.importcpp: "apply".}

{.pop.}  # header: "Point"
