import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Vec3f  was providing: osg::Vec3f
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: Matrix  was providing: osg::Matrix
  # File: Vec3d  was providing: osg::Vec3d
type
  LineSegment* {.header: "LineSegment", importcpp: "osg::LineSegment", byref.} = object #of class osg::Referenced
    ## LineSegment class for representing a line segment.

  Vec_type* {.header: "LineSegment", importcpp: "osg::LineSegment::vec_type".} = Vec3d
  Value_type* {.header: "LineSegment", importcpp: "osg::LineSegment::value_type".} = value_type


{.push header: "LineSegment".}

proc constructLineSegment*(): LineSegment {.constructor,importcpp: "osg::LineSegment::LineSegment".}

proc constructLineSegment*(seg: LineSegment): LineSegment {.constructor,importcpp: "osg::LineSegment::LineSegment(@)".}

proc constructLineSegment*(s: vec_type, e: vec_type): LineSegment {.constructor,importcpp: "osg::LineSegment::LineSegment(@)".}

proc `=`*(this: var LineSegment, seg: LineSegment): LineSegment  {.importcpp: "# = #".}

proc set*(this: var LineSegment, s: vec_type, e: vec_type)  {.importcpp: "set".}

proc start*(this: var LineSegment): vec_type  {.importcpp: "start".}

proc start*(this: LineSegment): vec_type  {.importcpp: "start".}

proc `end`*(this: var LineSegment): vec_type  {.importcpp: "end".}

proc `end`*(this: LineSegment): vec_type  {.importcpp: "end".}

proc valid*(this: LineSegment): bool  {.importcpp: "valid".}

proc intersect*(this: LineSegment, bb: BoundingBox): bool  {.importcpp: "intersect".}
    ## return true if segment intersects BoundingBox.

proc intersectAndComputeRatios*(this: LineSegment, bb: BoundingBox, ratioFromStartToEnd1: cfloat, ratioFromStartToEnd2: cfloat): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingBox and set float ratios for
    ## the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersectAndComputeRatios*(this: LineSegment, bb: BoundingBox, ratioFromStartToEnd1: cdouble, ratioFromStartToEnd2: cdouble): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingBox and set double ratios
    ## for the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersect*(this: LineSegment, bs: BoundingSphere): bool  {.importcpp: "intersect".}
    ## return true if segment intersects BoundingSphere.

proc intersectAndComputeRatios*(this: LineSegment, bs: BoundingSphere, ratioFromStartToEnd1: cfloat, ratioFromStartToEnd2: cfloat): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingSphere and set float ratios
    ## for the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersectAndComputeRatios*(this: LineSegment, bs: BoundingSphere, ratioFromStartToEnd1: cdouble, ratioFromStartToEnd2: cdouble): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingSphere and set double ratios
    ## for the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersect*(this: var LineSegment, v1: Vec3f, v2: Vec3f, v3: Vec3f, ratioFromStartToEnd: cfloat): bool  {.importcpp: "intersect".}
    ## return true if segment intersects triangle and set float ratios where
    ## the ratio is 0.0 at the segment start point, and 1.0 at the segment
    ## end point.

proc intersect*(this: var LineSegment, v1: Vec3d, v2: Vec3d, v3: Vec3d, ratioFromStartToEnd: cdouble): bool  {.importcpp: "intersect".}
    ## return true if segment intersects triangle and set double ratios where
    ## the ratio is 0.0 at the segment start point, and 1.0 at the segment
    ## end point.

proc mult*(this: var LineSegment, seg: LineSegment, m: Matrix)  {.importcpp: "mult".}
    ## post multiply a segment by matrix.

proc mult*(this: var LineSegment, m: Matrix, seg: LineSegment)  {.importcpp: "mult".}
    ## pre multiply a segment by matrix.

proc intersectAndClip*(this: var LineSegment, s: vec_type, e: vec_type, bb: BoundingBox): bool  {.importcpp: "intersectAndClip".}

{.pop.}  # header: "LineSegment"
