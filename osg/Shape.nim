import Vec3  # provides: osg::Vec3
import Object  # provides: osg::Object
import Array  # provides: osg::FloatArray, osg::IndexArray, osg::Vec3Array
import Vec3f  # provides: osg::Vec3f
import Vec2  # provides: osg::Vec2
import Vec2f  # provides: osg::Vec2f
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
import Matrixd  # provides: osg::Matrixd
import Quat  # provides: osg::Quat
type
  TessellationMode* {.size:sizeof(cuint),header: "Shape", importcpp: "osg::TessellationHints::TessellationMode".} = enum
    tsslltnmdUSE_SHAPE_DEFAULTS = 0,
    tsslltnmdUSE_TARGET_NUM_FACES = 1

  SphereHalf* {.size:sizeof(cuint),header: "Shape", importcpp: "osg::BuildShapeGeometryVisitor::SphereHalf".} = enum
    sphrhlfSphereTopHalf = 0,
    sphrhlfSphereBottomHalf = 1

  Sphere* {.header: "Shape", importcpp: "osg::Sphere", byref.} = object #of class osg::Shape

  Box* {.header: "Shape", importcpp: "osg::Box", byref.} = object #of class osg::Shape

  Cone* {.header: "Shape", importcpp: "osg::Cone", byref.} = object #of class osg::Shape

  Cylinder* {.header: "Shape", importcpp: "osg::Cylinder", byref.} = object #of class osg::Shape

  Capsule* {.header: "Shape", importcpp: "osg::Capsule", byref.} = object #of class osg::Shape

  InfinitePlane* {.header: "Shape", importcpp: "osg::InfinitePlane", byref.} = object #of class osg::Shape
    ## Deprecated.

  TriangleMesh* {.header: "Shape", importcpp: "osg::TriangleMesh", byref.} = object #of class osg::Shape
    ## Deprecated.

  ConvexHull* {.header: "Shape", importcpp: "osg::ConvexHull", byref.} = object #of class osg::TriangleMesh
    ## Deprecated.

  HeightField* {.header: "Shape", importcpp: "osg::HeightField", byref.} = object #of class osg::Shape

  CompositeShape* {.header: "Shape", importcpp: "osg::CompositeShape", byref.} = object #of class osg::Shape
    ## Deprecated.

  BuildShapeGeometryVisitor* {.header: "Shape", importcpp: "osg::BuildShapeGeometryVisitor", byref.} = object #of class osg::ConstShapeVisitor
    ## Convenience class for populating an Geometry with vertex, normals,
    ## texture coords and primitives that can render a Shape.

  HeightList* {.header: "Shape", importcpp: "osg::HeightField::HeightList".} = cint
  Grid* {.header: "Shape", importcpp: "osg::Grid".} = Heightfield
  ChildList* {.header: "Shape", importcpp: "osg::CompositeShape::ChildList".} = cint


{.push header: "Shape".}

proc constructShape*(): Shape {.constructor,importcpp: "osg::Shape::Shape".}

proc constructShape*(sa: Shape, copyop: Copyop = SHALLOW_COPY): Shape {.constructor,importcpp: "osg::Shape::Shape(@)".}

proc constructShapeVisitor*(): ShapeVisitor {.constructor,importcpp: "osg::ShapeVisitor::ShapeVisitor".}

proc constructConstShapeVisitor*(): ConstShapeVisitor {.constructor,importcpp: "osg::ConstShapeVisitor::ConstShapeVisitor".}

proc constructSphere*(): Sphere {.constructor,importcpp: "osg::Sphere::Sphere".}

proc constructSphere*(center: Vec3, radius: cfloat): Sphere {.constructor,importcpp: "osg::Sphere::Sphere(@)".}

proc constructSphere*(sphere: Sphere, copyop: Copyop = SHALLOW_COPY): Sphere {.constructor,importcpp: "osg::Sphere::Sphere(@)".}

proc constructBox*(): Box {.constructor,importcpp: "osg::Box::Box".}

proc constructBox*(center: Vec3, width: cfloat): Box {.constructor,importcpp: "osg::Box::Box(@)".}

proc constructBox*(center: Vec3, lengthX: cfloat, lengthY: cfloat, lengthZ: cfloat): Box {.constructor,importcpp: "osg::Box::Box(@)".}

proc constructBox*(box: Box, copyop: Copyop = SHALLOW_COPY): Box {.constructor,importcpp: "osg::Box::Box(@)".}

proc constructCone*(): Cone {.constructor,importcpp: "osg::Cone::Cone".}

proc constructCone*(center: Vec3, radius: cfloat, height: cfloat): Cone {.constructor,importcpp: "osg::Cone::Cone(@)".}

proc constructCone*(cone: Cone, copyop: Copyop = SHALLOW_COPY): Cone {.constructor,importcpp: "osg::Cone::Cone(@)".}

proc constructCylinder*(): Cylinder {.constructor,importcpp: "osg::Cylinder::Cylinder".}

proc constructCylinder*(center: Vec3, radius: cfloat, height: cfloat): Cylinder {.constructor,importcpp: "osg::Cylinder::Cylinder(@)".}

proc constructCylinder*(cylinder: Cylinder, copyop: Copyop = SHALLOW_COPY): Cylinder {.constructor,importcpp: "osg::Cylinder::Cylinder(@)".}

proc constructCapsule*(): Capsule {.constructor,importcpp: "osg::Capsule::Capsule".}

proc constructCapsule*(center: Vec3, radius: cfloat, height: cfloat): Capsule {.constructor,importcpp: "osg::Capsule::Capsule(@)".}

proc constructCapsule*(capsule: Capsule, copyop: Copyop = SHALLOW_COPY): Capsule {.constructor,importcpp: "osg::Capsule::Capsule(@)".}

proc constructInfinitePlane*(): InfinitePlane {.constructor,importcpp: "osg::InfinitePlane::InfinitePlane".}

proc constructInfinitePlane*(plane: Infiniteplane, copyop: Copyop = SHALLOW_COPY): InfinitePlane {.constructor,importcpp: "osg::InfinitePlane::InfinitePlane(@)".}

proc constructTriangleMesh*(): TriangleMesh {.constructor,importcpp: "osg::TriangleMesh::TriangleMesh".}

proc constructTriangleMesh*(mesh: Trianglemesh, copyop: Copyop = SHALLOW_COPY): TriangleMesh {.constructor,importcpp: "osg::TriangleMesh::TriangleMesh(@)".}

proc constructConvexHull*(): ConvexHull {.constructor,importcpp: "osg::ConvexHull::ConvexHull".}

proc constructConvexHull*(hull: Convexhull, copyop: Copyop = SHALLOW_COPY): ConvexHull {.constructor,importcpp: "osg::ConvexHull::ConvexHull(@)".}

proc constructHeightField*(): HeightField {.constructor,importcpp: "osg::HeightField::HeightField".}

proc constructHeightField*(mesh: Heightfield, copyop: Copyop = SHALLOW_COPY): HeightField {.constructor,importcpp: "osg::HeightField::HeightField(@)".}

proc constructCompositeShape*(): CompositeShape {.constructor,importcpp: "osg::CompositeShape::CompositeShape".}

proc constructCompositeShape*(cs: Compositeshape, copyop: Copyop = SHALLOW_COPY): CompositeShape {.constructor,importcpp: "osg::CompositeShape::CompositeShape(@)".}

proc constructTessellationHints*(): TessellationHints {.constructor,importcpp: "osg::TessellationHints::TessellationHints".}

proc constructTessellationHints*(tess: Tessellationhints, copyop: Copyop = SHALLOW_COPY): TessellationHints {.constructor,importcpp: "osg::TessellationHints::TessellationHints(@)".}

proc constructBuildShapeGeometryVisitor*(geometry: ptr Geometry , hints: ptr Tessellationhints ): BuildShapeGeometryVisitor {.constructor,importcpp: "osg::BuildShapeGeometryVisitor::BuildShapeGeometryVisitor(@)".}

proc cloneType*(this: Shape): ptr Object   {.importcpp: "cloneType".}
    ## Clone the type of an attribute, with Object* return type. Must be
    ## defined by derived classes.

proc clone*(this: Shape, Copyop): ptr Object   {.importcpp: "clone".}
    ## Clone an attribute, with Object* return type. Must be defined by
    ## derived classes.

proc isSameKindAs*(this: Shape, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}
    ## return true if this and obj are of the same kind of object.

proc libraryName*(this: Shape): cstring  {.importcpp: "libraryName".}
    ## return the name of the attribute's library.

proc className*(this: Shape): cstring  {.importcpp: "className".}
    ## return the name of the attribute's class type.

proc accept*(this: var Shape, Shapevisitor)  {.importcpp: "accept".}
    ## accept a non const shape visitor which can be used on non const shape
    ## objects. Must be defined by derived classes.

proc accept*(this: Shape, Constshapevisitor)  {.importcpp: "accept".}
    ## accept a const shape visitor which can be used on const shape objects.
    ## Must be defined by derived classes.

proc apply*(this: var ShapeVisitor, Shape)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Sphere)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Box)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Cone)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Cylinder)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Capsule)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Infiniteplane)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Trianglemesh)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Convexhull)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Heightfield)  {.importcpp: "apply".}

proc apply*(this: var ShapeVisitor, Compositeshape)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Shape)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Sphere)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Box)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Cone)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Cylinder)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Capsule)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Infiniteplane)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Trianglemesh)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Convexhull)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Heightfield)  {.importcpp: "apply".}

proc apply*(this: var ConstShapeVisitor, Compositeshape)  {.importcpp: "apply".}

proc cloneType*(this: Sphere): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Sphere, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Sphere, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Sphere): cstring  {.importcpp: "libraryName".}

proc className*(this: Sphere): cstring  {.importcpp: "className".}

proc accept*(this: var Sphere, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: Sphere, csv: Constshapevisitor)  {.importcpp: "accept".}

proc valid*(this: Sphere): bool  {.importcpp: "valid".}

proc set*(this: var Sphere, center: Vec3, radius: cfloat)  {.importcpp: "set".}

proc setCenter*(this: var Sphere, center: Vec3)  {.importcpp: "setCenter".}

proc getCenter*(this: Sphere): Vec3  {.importcpp: "getCenter".}

proc setRadius*(this: var Sphere, radius: cfloat)  {.importcpp: "setRadius".}

proc getRadius*(this: Sphere): cfloat  {.importcpp: "getRadius".}

proc cloneType*(this: Box): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Box, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Box, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Box): cstring  {.importcpp: "libraryName".}

proc className*(this: Box): cstring  {.importcpp: "className".}

proc accept*(this: var Box, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: Box, csv: Constshapevisitor)  {.importcpp: "accept".}

proc valid*(this: Box): bool  {.importcpp: "valid".}

proc set*(this: var Box, center: Vec3, halfLengths: Vec3)  {.importcpp: "set".}

proc setCenter*(this: var Box, center: Vec3)  {.importcpp: "setCenter".}

proc getCenter*(this: Box): Vec3  {.importcpp: "getCenter".}

proc setHalfLengths*(this: var Box, halfLengths: Vec3)  {.importcpp: "setHalfLengths".}

proc getHalfLengths*(this: Box): Vec3  {.importcpp: "getHalfLengths".}

proc setRotation*(this: var Box, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: Box): Quat  {.importcpp: "getRotation".}

proc computeRotationMatrix*(this: Box): Matrix  {.importcpp: "computeRotationMatrix".}

proc zeroRotation*(this: Box): bool  {.importcpp: "zeroRotation".}

proc cloneType*(this: Cone): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Cone, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Cone, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Cone): cstring  {.importcpp: "libraryName".}

proc className*(this: Cone): cstring  {.importcpp: "className".}

proc accept*(this: var Cone, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: Cone, csv: Constshapevisitor)  {.importcpp: "accept".}

proc valid*(this: Cone): bool  {.importcpp: "valid".}

proc set*(this: var Cone, center: Vec3, radius: cfloat, height: cfloat)  {.importcpp: "set".}

proc setCenter*(this: var Cone, center: Vec3)  {.importcpp: "setCenter".}

proc getCenter*(this: Cone): Vec3  {.importcpp: "getCenter".}

proc setRadius*(this: var Cone, radius: cfloat)  {.importcpp: "setRadius".}

proc getRadius*(this: Cone): cfloat  {.importcpp: "getRadius".}

proc setHeight*(this: var Cone, height: cfloat)  {.importcpp: "setHeight".}

proc getHeight*(this: Cone): cfloat  {.importcpp: "getHeight".}

proc setRotation*(this: var Cone, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: Cone): Quat  {.importcpp: "getRotation".}

proc computeRotationMatrix*(this: Cone): Matrix  {.importcpp: "computeRotationMatrix".}

proc zeroRotation*(this: Cone): bool  {.importcpp: "zeroRotation".}

proc getBaseOffsetFactor*(this: Cone): cfloat  {.importcpp: "getBaseOffsetFactor".}

proc getBaseOffset*(this: Cone): cfloat  {.importcpp: "getBaseOffset".}

proc cloneType*(this: Cylinder): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Cylinder, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Cylinder, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Cylinder): cstring  {.importcpp: "libraryName".}

proc className*(this: Cylinder): cstring  {.importcpp: "className".}

proc accept*(this: var Cylinder, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: Cylinder, csv: Constshapevisitor)  {.importcpp: "accept".}

proc valid*(this: Cylinder): bool  {.importcpp: "valid".}

proc set*(this: var Cylinder, center: Vec3, radius: cfloat, height: cfloat)  {.importcpp: "set".}

proc setCenter*(this: var Cylinder, center: Vec3)  {.importcpp: "setCenter".}

proc getCenter*(this: Cylinder): Vec3  {.importcpp: "getCenter".}

proc setRadius*(this: var Cylinder, radius: cfloat)  {.importcpp: "setRadius".}

proc getRadius*(this: Cylinder): cfloat  {.importcpp: "getRadius".}

proc setHeight*(this: var Cylinder, height: cfloat)  {.importcpp: "setHeight".}

proc getHeight*(this: Cylinder): cfloat  {.importcpp: "getHeight".}

proc setRotation*(this: var Cylinder, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: Cylinder): Quat  {.importcpp: "getRotation".}

proc computeRotationMatrix*(this: Cylinder): Matrix  {.importcpp: "computeRotationMatrix".}

proc zeroRotation*(this: Cylinder): bool  {.importcpp: "zeroRotation".}

proc cloneType*(this: Capsule): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Capsule, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Capsule, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Capsule): cstring  {.importcpp: "libraryName".}

proc className*(this: Capsule): cstring  {.importcpp: "className".}

proc accept*(this: var Capsule, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: Capsule, csv: Constshapevisitor)  {.importcpp: "accept".}

proc valid*(this: Capsule): bool  {.importcpp: "valid".}

proc set*(this: var Capsule, center: Vec3, radius: cfloat, height: cfloat)  {.importcpp: "set".}

proc setCenter*(this: var Capsule, center: Vec3)  {.importcpp: "setCenter".}

proc getCenter*(this: Capsule): Vec3  {.importcpp: "getCenter".}

proc setRadius*(this: var Capsule, radius: cfloat)  {.importcpp: "setRadius".}

proc getRadius*(this: Capsule): cfloat  {.importcpp: "getRadius".}

proc setHeight*(this: var Capsule, height: cfloat)  {.importcpp: "setHeight".}

proc getHeight*(this: Capsule): cfloat  {.importcpp: "getHeight".}

proc setRotation*(this: var Capsule, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: Capsule): Quat  {.importcpp: "getRotation".}

proc computeRotationMatrix*(this: Capsule): Matrix  {.importcpp: "computeRotationMatrix".}

proc zeroRotation*(this: Capsule): bool  {.importcpp: "zeroRotation".}

proc cloneType*(this: InfinitePlane): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: InfinitePlane, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: InfinitePlane, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: InfinitePlane): cstring  {.importcpp: "libraryName".}

proc className*(this: InfinitePlane): cstring  {.importcpp: "className".}

proc accept*(this: var InfinitePlane, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: InfinitePlane, csv: Constshapevisitor)  {.importcpp: "accept".}

proc cloneType*(this: TriangleMesh): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TriangleMesh, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TriangleMesh, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TriangleMesh): cstring  {.importcpp: "libraryName".}

proc className*(this: TriangleMesh): cstring  {.importcpp: "className".}

proc accept*(this: var TriangleMesh, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: TriangleMesh, csv: Constshapevisitor)  {.importcpp: "accept".}

proc setVertices*(this: var TriangleMesh, vertices: ptr Vec3array )  {.importcpp: "setVertices".}

proc getVertices*(this: var TriangleMesh): ptr Vec3array   {.importcpp: "getVertices".}

proc getVertices*(this: TriangleMesh): ptr Vec3array   {.importcpp: "getVertices".}

proc setIndices*(this: var TriangleMesh, indices: ptr Indexarray )  {.importcpp: "setIndices".}

proc getIndices*(this: var TriangleMesh): ptr Indexarray   {.importcpp: "getIndices".}

proc getIndices*(this: TriangleMesh): ptr Indexarray   {.importcpp: "getIndices".}

proc cloneType*(this: ConvexHull): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ConvexHull, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ConvexHull, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ConvexHull): cstring  {.importcpp: "libraryName".}

proc className*(this: ConvexHull): cstring  {.importcpp: "className".}

proc accept*(this: var ConvexHull, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: ConvexHull, csv: Constshapevisitor)  {.importcpp: "accept".}

proc cloneType*(this: HeightField): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: HeightField, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: HeightField, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: HeightField): cstring  {.importcpp: "libraryName".}

proc className*(this: HeightField): cstring  {.importcpp: "className".}

proc accept*(this: var HeightField, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: HeightField, csv: Constshapevisitor)  {.importcpp: "accept".}

proc allocate*(this: var HeightField, numColumns: cuint, numRows: cuint)  {.importcpp: "allocate".}

proc getNumColumns*(this: HeightField): cuint  {.importcpp: "getNumColumns".}

proc getNumRows*(this: HeightField): cuint  {.importcpp: "getNumRows".}

proc setOrigin*(this: var HeightField, origin: Vec3)  {.importcpp: "setOrigin".}

proc getOrigin*(this: HeightField): Vec3  {.importcpp: "getOrigin".}

proc setXInterval*(this: var HeightField, dx: cfloat)  {.importcpp: "setXInterval".}

proc getXInterval*(this: HeightField): cfloat  {.importcpp: "getXInterval".}

proc setYInterval*(this: var HeightField, dy: cfloat)  {.importcpp: "setYInterval".}

proc getYInterval*(this: HeightField): cfloat  {.importcpp: "getYInterval".}

proc getFloatArray*(this: var HeightField): ptr Floatarray   {.importcpp: "getFloatArray".}
    ## Get the FloatArray height data.

proc getFloatArray*(this: HeightField): ptr Floatarray   {.importcpp: "getFloatArray".}
    ## Get the const FloatArray height data.

proc getHeightList*(this: var HeightField): Heightlist  {.importcpp: "getHeightList".}

proc getHeightList*(this: HeightField): Heightlist  {.importcpp: "getHeightList".}

proc setSkirtHeight*(this: var HeightField, skirtHeight: cfloat)  {.importcpp: "setSkirtHeight".}
    ## Set the height of the skirt to render around the edge of HeightField.
    ## The skirt is used as a means of disguising edge boundaries between
    ## adjacent HeightField, particularly of ones with different resolutions.

proc getSkirtHeight*(this: HeightField): cfloat  {.importcpp: "getSkirtHeight".}
    ## Get the height of the skirt to render around the edge of HeightField.

proc setBorderWidth*(this: var HeightField, borderWidth: cuint)  {.importcpp: "setBorderWidth".}
    ## Set the width in number of cells in from the edge that the height
    ## field should be rendered from. This exists to allow gradient and
    ## curvature continutity to be maintained between adjacent HeightField,
    ## where the border cells will overlap adjacent HeightField.

proc getBorderWidth*(this: HeightField): cuint  {.importcpp: "getBorderWidth".}
    ## Get the width in number of cells in from the edge that the height
    ## field should be rendered from.

proc setRotation*(this: var HeightField, quat: Quat)  {.importcpp: "setRotation".}

proc getRotation*(this: HeightField): Quat  {.importcpp: "getRotation".}

proc computeRotationMatrix*(this: HeightField): Matrix  {.importcpp: "computeRotationMatrix".}

proc zeroRotation*(this: HeightField): bool  {.importcpp: "zeroRotation".}

proc setHeight*(this: var HeightField, c: cuint, r: cuint, value: cfloat)  {.importcpp: "setHeight".}

proc getHeight*(this: var HeightField, c: cuint, r: cuint): cfloat  {.importcpp: "getHeight".}

proc getHeight*(this: HeightField, c: cuint, r: cuint): cfloat  {.importcpp: "getHeight".}

proc getVertex*(this: HeightField, c: cuint, r: cuint): Vec3  {.importcpp: "getVertex".}

proc getNormal*(this: HeightField, c: cuint, r: cuint): Vec3  {.importcpp: "getNormal".}

proc getHeightDelta*(this: HeightField, c: cuint, r: cuint): Vec2  {.importcpp: "getHeightDelta".}

proc cloneType*(this: CompositeShape): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CompositeShape, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CompositeShape, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CompositeShape): cstring  {.importcpp: "libraryName".}

proc className*(this: CompositeShape): cstring  {.importcpp: "className".}

proc accept*(this: var CompositeShape, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: CompositeShape, csv: Constshapevisitor)  {.importcpp: "accept".}

proc setShape*(this: var CompositeShape, shape: ptr Shape )  {.importcpp: "setShape".}
    ## Set the shape that encloses all of the children.

proc getShape*(this: var CompositeShape): ptr Shape   {.importcpp: "getShape".}
    ## Get the shape that encloses all of the children.

proc getShape*(this: CompositeShape): ptr Shape   {.importcpp: "getShape".}
    ## Get the const shape that encloses all of the children.

proc getNumChildren*(this: CompositeShape): cuint  {.importcpp: "getNumChildren".}
    ## Get the number of children of this composite shape.

proc getChild*(this: var CompositeShape, i: cuint): ptr Shape   {.importcpp: "getChild".}
    ## Get a child.

proc getChild*(this: CompositeShape, i: cuint): ptr Shape   {.importcpp: "getChild".}
    ## Get a const child.

proc addChild*(this: var CompositeShape, shape: ptr Shape )  {.importcpp: "addChild".}
    ## Add a child to the list.

proc removeChild*(this: var CompositeShape, i: cuint)  {.importcpp: "removeChild".}
    ## remove a child from the list.

proc findChildNo*(this: CompositeShape, shape: ptr Shape ): cuint  {.importcpp: "findChildNo".}
    ## find the index number of child, if child is not found then it returns
    ## getNumChildren(), so should be used in similar style to STL's
    ## result!=end().

proc cloneType*(this: TessellationHints): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TessellationHints, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TessellationHints, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TessellationHints): cstring  {.importcpp: "libraryName".}

proc className*(this: TessellationHints): cstring  {.importcpp: "className".}

proc setTessellationMode*(this: var TessellationHints, mode: Tessellationmode)  {.importcpp: "setTessellationMode".}

proc getTessellationMode*(this: TessellationHints): Tessellationmode  {.importcpp: "getTessellationMode".}

proc setDetailRatio*(this: var TessellationHints, ratio: cfloat)  {.importcpp: "setDetailRatio".}

proc getDetailRatio*(this: TessellationHints): cfloat  {.importcpp: "getDetailRatio".}

proc setTargetNumFaces*(this: var TessellationHints, target: cuint)  {.importcpp: "setTargetNumFaces".}

proc getTargetNumFaces*(this: TessellationHints): cuint  {.importcpp: "getTargetNumFaces".}

proc setCreateFrontFace*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateFrontFace".}

proc getCreateFrontFace*(this: TessellationHints): bool  {.importcpp: "getCreateFrontFace".}

proc setCreateBackFace*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateBackFace".}

proc getCreateBackFace*(this: TessellationHints): bool  {.importcpp: "getCreateBackFace".}

proc setCreateNormals*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateNormals".}

proc getCreateNormals*(this: TessellationHints): bool  {.importcpp: "getCreateNormals".}

proc setCreateTextureCoords*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateTextureCoords".}

proc getCreateTextureCoords*(this: TessellationHints): bool  {.importcpp: "getCreateTextureCoords".}

proc setCreateTop*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateTop".}

proc getCreateTop*(this: TessellationHints): bool  {.importcpp: "getCreateTop".}

proc setCreateBody*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateBody".}

proc getCreateBody*(this: TessellationHints): bool  {.importcpp: "getCreateBody".}

proc setCreateBottom*(this: var TessellationHints, on: bool)  {.importcpp: "setCreateBottom".}

proc getCreateBottom*(this: TessellationHints): bool  {.importcpp: "getCreateBottom".}

proc apply*(this: var BuildShapeGeometryVisitor, Sphere)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Box)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Cone)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Cylinder)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Capsule)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Infiniteplane)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Trianglemesh)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Convexhull)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Heightfield)  {.importcpp: "apply".}

proc apply*(this: var BuildShapeGeometryVisitor, Compositeshape)  {.importcpp: "apply".}

proc normal*(this: var BuildShapeGeometryVisitor, v: Vec3f)  {.importcpp: "Normal".}

proc normal3f*(this: var BuildShapeGeometryVisitor, x: cfloat, y: cfloat, z: cfloat)  {.importcpp: "Normal3f".}

proc texCoord*(this: var BuildShapeGeometryVisitor, tc: Vec2f)  {.importcpp: "TexCoord".}

proc texCoord2f*(this: var BuildShapeGeometryVisitor, x: cfloat, y: cfloat)  {.importcpp: "TexCoord2f".}

proc vertex*(this: var BuildShapeGeometryVisitor, v: Vec3f)  {.importcpp: "Vertex".}

proc vertex3f*(this: var BuildShapeGeometryVisitor, x: cfloat, y: cfloat, z: cfloat)  {.importcpp: "Vertex3f".}

proc setMatrix*(this: var BuildShapeGeometryVisitor, m: Matrixd)  {.importcpp: "setMatrix".}

proc begin*(this: var BuildShapeGeometryVisitor, mode: GLenum)  {.importcpp: "Begin".}

proc `end`*(this: var BuildShapeGeometryVisitor)  {.importcpp: "End".}

proc `=`*(this: var BuildShapeGeometryVisitor, Buildshapegeometryvisitor): Buildshapegeometryvisitor  {.importcpp: "# = #".}

proc drawCylinderBody*(this: var BuildShapeGeometryVisitor, numSegments: cuint, radius: cfloat, height: cfloat)  {.importcpp: "drawCylinderBody".}

proc drawHalfSphere*(this: var BuildShapeGeometryVisitor, numSegments: cuint, numRows: cuint, radius: cfloat, which: Spherehalf, zOffset: cfloat)  {.importcpp: "drawHalfSphere".}

{.pop.}  # header: "Shape"
