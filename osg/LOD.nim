import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Object  was providing: osg::Object
  # File: Node  was providing: osg::Node
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  CenterMode* {.size:sizeof(cuint),header: "LOD", importcpp: "osg::LOD::CenterMode", pure.} = enum
    ## Modes which control how the center of object should be determined when
    ## computing which child is active. Furthermore it determines how the
    ## bounding sphere is calculated.

    USE_BOUNDING_SPHERE_CENTER = 0,
      ## Uses the bounding sphere's center as the center of object and the
      ## geometrical bounding sphere of the node's children
    USER_DEFINED_CENTER = 1,
      ## Uses the user defined center as the center of object; the bounding
      ## sphere is determined by the user defined center and user defined
      ## radius
    UNION_OF_BOUNDING_SPHERE_AND_USER_DEFINED = 2
      ## Uses the user defined center as the center of object; the bounding
      ## sphere is the user defined bounding sphere expanded by the geometrical
      ## bounding sphere of the node's children

  RangeMode* {.size:sizeof(cuint),header: "LOD", importcpp: "osg::LOD::RangeMode", pure.} = enum
    ## Modes that control how the range values should be interpreted when
    ## computing which child is active.

    DISTANCE_FROM_EYE_POINT = 0,
    PIXEL_SIZE_ON_SCREEN = 1

  Vec_type* {.header: "LOD", importcpp: "osg::LOD::vec_type".} = cint
  Value_type* {.header: "LOD", importcpp: "osg::LOD::value_type".} = cint
  MinMaxPair* {.header: "LOD", importcpp: "osg::LOD::MinMaxPair".} = pair[cfloat,cfloat]
  RangeList* {.header: "LOD", importcpp: "osg::LOD::RangeList".} = cint


{.push header: "LOD".}

proc constructLOD*(): LOD {.constructor,importcpp: "osg::LOD::LOD".}
    ## Default constructor The default constructor sets - the center mode to
    ## USE_BOUNDING_SPHERE, - the radius to a value smaller than zero and -
    ## the range mode to DISTANCE_FROM_EYE_POINT.

proc constructLOD*(a00: LOD, copyop: CopyOp = SHALLOW_COPY): LOD {.constructor,importcpp: "osg::LOD::LOD(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LOD): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LOD, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LOD, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: LOD): cstring  {.importcpp: "className".}

proc libraryName*(this: LOD): cstring  {.importcpp: "libraryName".}

proc accept*(this: var LOD, nv: NodeVisitor)  {.importcpp: "accept".}

proc traverse*(this: var LOD, nv: NodeVisitor)  {.importcpp: "traverse".}

proc addChild*(this: var LOD, child: ptr Node ): bool  {.importcpp: "addChild".}

proc addChild*(this: var LOD, child: ptr Node , rmin: cfloat, rmax: cfloat): bool  {.importcpp: "addChild".}

proc removeChildren*(this: var LOD, pos: cuint, numChildrenToRemove: cuint = 1): bool  {.importcpp: "removeChildren".}

proc setCenterMode*(this: var LOD, mode: CenterMode)  {.importcpp: "setCenterMode".}
    ## Set how the center of object should be determined when computing which
    ## child is active.

proc getCenterMode*(this: LOD): CenterMode  {.importcpp: "getCenterMode".}
    ## Get how the center of object should be determined when computing which
    ## child is active.

proc setCenter*(this: var LOD, center: vec_type)  {.importcpp: "setCenter".}
    ## Sets the object-space point which defines the center of the osg::LOD.
    ## center is affected by any transforms in the hierarchy above the
    ## osg::LOD.

proc getCenter*(this: LOD): vec_type  {.importcpp: "getCenter".}
    ## return the LOD center point.

proc setRadius*(this: var LOD, radius: value_type)  {.importcpp: "setRadius".}
    ## Set the object-space reference radius of the volume enclosed by the
    ## LOD.

proc getRadius*(this: LOD): value_type  {.importcpp: "getRadius".}
    ## Get the object-space radius of the volume enclosed by the LOD.

proc setRangeMode*(this: var LOD, mode: RangeMode)  {.importcpp: "setRangeMode".}
    ## Set how the range values should be interpreted when computing which
    ## child is active.

proc getRangeMode*(this: LOD): RangeMode  {.importcpp: "getRangeMode".}
    ## Get how the range values should be interpreted when computing which
    ## child is active.

proc setRange*(this: var LOD, childNo: cuint, min: cfloat, max: cfloat)  {.importcpp: "setRange".}
    ## Sets the min and max visible ranges of range of specific child. Values
    ## are floating point distance specified in local objects coordinates.

proc getMinRange*(this: LOD, childNo: cuint): cfloat  {.importcpp: "getMinRange".}
    ## returns the min visible range for specified child.

proc getMaxRange*(this: LOD, childNo: cuint): cfloat  {.importcpp: "getMaxRange".}
    ## returns the max visible range for specified child.

proc getNumRanges*(this: LOD): cuint  {.importcpp: "getNumRanges".}
    ## returns the number of ranges currently set. An LOD which has been
    ## fully set up will have getNumChildren()==getNumRanges().

proc setRangeList*(this: var LOD, rangeList: RangeList)  {.importcpp: "setRangeList".}
    ## set the list of MinMax ranges for each child.

proc getRangeList*(this: LOD): RangeList  {.importcpp: "getRangeList".}
    ## return the list of MinMax ranges for each child.

proc computeBound*(this: LOD): BoundingSphere  {.importcpp: "computeBound".}

{.pop.}  # header: "LOD"
