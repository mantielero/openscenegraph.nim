import Object  # provides: osg::Object
import Array  # provides: osg::Vec3Array
import Shape  # provides: osg::ConstShapeVisitor, osg::ShapeVisitor
import Geometry  # provides: osg::Geometry
import CopyOp  # provides: osg::CopyOp
type
  KdTree* {.header: "KdTree", importcpp: "osg::KdTree", byref.} = object #of osg::Shape
    ## Implementation of a kdtree for Geometry leaves, to enable fast
    ## intersection tests.

  KdTreeBuilder* {.header: "KdTree", importcpp: "osg::KdTreeBuilder", byref.} = object #of osg::NodeVisitor

  Indices* {.header: "KdTree", importcpp: "osg::KdTree::Indices".} = cint
  Value_type* {.header: "KdTree", importcpp: "osg::KdTree::value_type".} = cint
  KdNodeList* {.header: "KdTree", importcpp: "osg::KdTree::KdNodeList".} = cint


{.push header: "KdTree".}

proc constructKdTree*(): KdTree {.constructor,importcpp: "osg::KdTree::KdTree".}

proc constructKdTree*(rhs: Kdtree, copyop: Copyop = SHALLOW_COPY): KdTree {.constructor,importcpp: "osg::KdTree::KdTree(@)".}

proc constructBuildOptions*(): BuildOptions {.constructor,importcpp: "osg::KdTree::BuildOptions::BuildOptions".}

proc constructKdNode*(): KdNode {.constructor,importcpp: "osg::KdTree::KdNode::KdNode".}

proc constructKdNode*(f: Value_type, s: Value_type): KdNode {.constructor,importcpp: "osg::KdTree::KdNode::KdNode(@)".}

proc constructKdTreeBuilder*(): KdTreeBuilder {.constructor,importcpp: "osg::KdTreeBuilder::KdTreeBuilder".}

proc constructKdTreeBuilder*(rhs: Kdtreebuilder): KdTreeBuilder {.constructor,importcpp: "osg::KdTreeBuilder::KdTreeBuilder(@)".}

proc cloneType*(this: KdTree): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: KdTree, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: KdTree, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: KdTree): cstring  {.importcpp: "libraryName".}

proc className*(this: KdTree): cstring  {.importcpp: "className".}

proc accept*(this: var KdTree, sv: Shapevisitor)  {.importcpp: "accept".}

proc accept*(this: KdTree, csv: Constshapevisitor)  {.importcpp: "accept".}

proc build*(this: var KdTree, buildOptions: Buildoptions, geometry: ptr Geometry ): bool  {.importcpp: "build".}
    ## Build the kdtree from the specified source geometry object. retun true
    ## on success.

proc setVertices*(this: var KdTree, vertices: ptr Vec3array )  {.importcpp: "setVertices".}

proc getVertices*(this: KdTree): ptr Vec3array   {.importcpp: "getVertices".}

proc setPrimitiveIndices*(this: var KdTree, indices: Indices)  {.importcpp: "setPrimitiveIndices".}

proc getPrimitiveIndices*(this: var KdTree): Indices  {.importcpp: "getPrimitiveIndices".}

proc getPrimitiveIndices*(this: KdTree): Indices  {.importcpp: "getPrimitiveIndices".}

proc setVertexIndices*(this: var KdTree, indices: Indices)  {.importcpp: "setVertexIndices".}

proc getVertexIndices*(this: var KdTree): Indices  {.importcpp: "getVertexIndices".}

proc getVertexIndices*(this: KdTree): Indices  {.importcpp: "getVertexIndices".}

proc addPoint*(this: var KdTree, p0: cuint): cuint  {.importcpp: "addPoint".}

proc addLine*(this: var KdTree, p0: cuint, p1: cuint): cuint  {.importcpp: "addLine".}

proc addTriangle*(this: var KdTree, p0: cuint, p1: cuint, p2: cuint): cuint  {.importcpp: "addTriangle".}

proc addQuad*(this: var KdTree, p0: cuint, p1: cuint, p2: cuint, p3: cuint): cuint  {.importcpp: "addQuad".}

proc addNode*(this: var KdTree, node: Kdnode): cint  {.importcpp: "addNode".}

proc getNode*(this: var KdTree, nodeNum: cint): Kdnode  {.importcpp: "getNode".}

proc getNode*(this: KdTree, nodeNum: cint): Kdnode  {.importcpp: "getNode".}

proc getNodes*(this: var KdTree): Kdnodelist  {.importcpp: "getNodes".}

proc getNodes*(this: KdTree): Kdnodelist  {.importcpp: "getNodes".}

proc libraryName*(this: KdTreeBuilder): cstring  {.importcpp: "libraryName".}

proc className*(this: KdTreeBuilder): cstring  {.importcpp: "className".}

proc clone*(this: var KdTreeBuilder): ptr Kdtreebuilder   {.importcpp: "clone".}

proc apply*(this: var KdTreeBuilder, geometry: Geometry)  {.importcpp: "apply".}

{.pop.}  # header: "KdTree"
