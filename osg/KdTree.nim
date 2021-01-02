import osg_types
  # File: Object  was providing: osg::Object
  # File: Array  was providing: osg::Vec3Array
  # File: Shape  was providing: osg::ShapeVisitor, osg::ConstShapeVisitor
  # File: Geometry  was providing: osg::Geometry
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
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

proc constructKdTree*(rhs: KdTree, copyop: CopyOp = SHALLOW_COPY): KdTree {.constructor,importcpp: "osg::KdTree::KdTree(@)".}

proc constructBuildOptions*(): BuildOptions {.constructor,importcpp: "osg::KdTree::BuildOptions::BuildOptions".}

proc constructKdNode*(): KdNode {.constructor,importcpp: "osg::KdTree::KdNode::KdNode".}

proc constructKdNode*(f: value_type, s: value_type): KdNode {.constructor,importcpp: "osg::KdTree::KdNode::KdNode(@)".}

proc constructKdTreeBuilder*(): KdTreeBuilder {.constructor,importcpp: "osg::KdTreeBuilder::KdTreeBuilder".}

proc constructKdTreeBuilder*(rhs: KdTreeBuilder): KdTreeBuilder {.constructor,importcpp: "osg::KdTreeBuilder::KdTreeBuilder(@)".}

proc cloneType*(this: KdTree): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: KdTree, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: KdTree, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: KdTree): cstring  {.importcpp: "libraryName".}

proc className*(this: KdTree): cstring  {.importcpp: "className".}

proc accept*(this: var KdTree, sv: ShapeVisitor)  {.importcpp: "accept".}

proc accept*(this: KdTree, csv: ConstShapeVisitor)  {.importcpp: "accept".}

proc build*(this: var KdTree, buildOptions: BuildOptions, geometry: ptr Geometry ): bool  {.importcpp: "build".}
    ## Build the kdtree from the specified source geometry object. retun true
    ## on success.

proc setVertices*(this: var KdTree, vertices: ptr Vec3Array )  {.importcpp: "setVertices".}

proc getVertices*(this: KdTree): ptr Vec3Array   {.importcpp: "getVertices".}

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

proc addNode*(this: var KdTree, node: KdNode): cint  {.importcpp: "addNode".}

proc getNode*(this: var KdTree, nodeNum: cint): KdNode  {.importcpp: "getNode".}

proc getNode*(this: KdTree, nodeNum: cint): KdNode  {.importcpp: "getNode".}

proc getNodes*(this: var KdTree): KdNodeList  {.importcpp: "getNodes".}

proc getNodes*(this: KdTree): KdNodeList  {.importcpp: "getNodes".}

proc libraryName*(this: KdTreeBuilder): cstring  {.importcpp: "libraryName".}

proc className*(this: KdTreeBuilder): cstring  {.importcpp: "className".}

proc clone*(this: var KdTreeBuilder): ptr KdTreeBuilder   {.importcpp: "clone".}

proc apply*(this: var KdTreeBuilder, geometry: Geometry)  {.importcpp: "apply".}

{.pop.}  # header: "KdTree"
