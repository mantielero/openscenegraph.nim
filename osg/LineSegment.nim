import Vec3f # Provides Vec3f
import Vec3d # Provides Vec3d
import Matrix # Provides Matrix
import BoundingBox # Provides BoundingBox
import BoundingSphere # Provides BoundingSphere


type
  # Typedefs
  Vec_type* {.header: "LineSegment", importcpp: "osg::LineSegment::vec_type".} = Vec3d
  Value_type* {.header: "LineSegment", importcpp: "osg::LineSegment::value_type".} = Value_type
{.push header: "LineSegment".}


# Constructors and methods
proc constructLineSegment*(): LineSegment {.constructor,importcpp: "LineSegment".}

proc constructLineSegment*(seg: Linesegment): LineSegment {.constructor,importcpp: "LineSegment(@)".}

proc constructLineSegment*(s: Vec_type, e: Vec_type): LineSegment {.constructor,importcpp: "LineSegment(@)".}

proc `=`*(this: var LineSegment, seg: Linesegment): Linesegment  {.importcpp: "# = #".}

proc set*(this: var LineSegment, s: Vec_type, e: Vec_type)  {.importcpp: "set".}

proc start*(this: var LineSegment): Vec_type  {.importcpp: "start".}

proc start*(this: LineSegment): Vec_type  {.importcpp: "start".}

proc `end`*(this: var LineSegment): Vec_type  {.importcpp: "end".}

proc `end`*(this: LineSegment): Vec_type  {.importcpp: "end".}

proc valid*(this: LineSegment): bool  {.importcpp: "valid".}

proc intersect*(this: LineSegment, bb: Boundingbox): bool  {.importcpp: "intersect".}
    ## return true if segment intersects BoundingBox.

proc intersectAndComputeRatios*(this: LineSegment, bb: Boundingbox, ratioFromStartToEnd1: cfloat, ratioFromStartToEnd2: cfloat): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingBox and set float ratios for
    ## the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersectAndComputeRatios*(this: LineSegment, bb: Boundingbox, ratioFromStartToEnd1: cdouble, ratioFromStartToEnd2: cdouble): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingBox and set double ratios
    ## for the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersect*(this: LineSegment, bs: Boundingsphere): bool  {.importcpp: "intersect".}
    ## return true if segment intersects BoundingSphere.

proc intersectAndComputeRatios*(this: LineSegment, bs: Boundingsphere, ratioFromStartToEnd1: cfloat, ratioFromStartToEnd2: cfloat): bool  {.importcpp: "intersectAndComputeRatios".}
    ## return true if segment intersects BoundingSphere and set float ratios
    ## for the first and second intersections, where the ratio is 0.0 at the
    ## segment start point, and 1.0 at the segment end point.

proc intersectAndComputeRatios*(this: LineSegment, bs: Boundingsphere, ratioFromStartToEnd1: cdouble, ratioFromStartToEnd2: cdouble): bool  {.importcpp: "intersectAndComputeRatios".}
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

proc mult*(this: var LineSegment, seg: Linesegment, m: Matrix)  {.importcpp: "mult".}
    ## post multiply a segment by matrix.

proc mult*(this: var LineSegment, m: Matrix, seg: Linesegment)  {.importcpp: "mult".}
    ## pre multiply a segment by matrix.

proc intersectAndClip*(this: var LineSegment, s: Vec_type, e: Vec_type, bb: Boundingbox): bool  {.importcpp: "intersectAndClip".}

{.pop.} # header: "LineSegment
