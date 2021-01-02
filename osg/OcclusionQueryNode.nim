import osg_types
  # File: State  was providing: osg::State
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: Camera  was providing: osg::Camera
  # File: Object  was providing: osg::Object
  # File: Geometry  was providing: osg::Geometry
  # File: StateSet  was providing: osg::StateSet
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  QueryGeometryState* {.size:sizeof(cuint),header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode::QueryGeometryState", pure.} = enum
    INVALID = 0,
    VALID = 1,
    USER_DEFINED = 2

  TestResult* {.header: "OcclusionQueryNode", importcpp: "osg::TestResult", byref.} = object #of osg::Referenced

  QueryGeometry* {.header: "OcclusionQueryNode", importcpp: "osg::QueryGeometry", byref.} = object #of osg::Geometry

  ResultMap* {.header: "OcclusionQueryNode", importcpp: "osg::QueryGeometry::ResultMap".} = cint
  FrameCountMap* {.header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode::FrameCountMap".} = cint


{.push header: "OcclusionQueryNode".}

proc constructTestResult*(): TestResult {.constructor,importcpp: "osg::TestResult::TestResult".}

proc constructQueryGeometry*(oqnName: string): QueryGeometry {.constructor,importcpp: "osg::QueryGeometry::QueryGeometry(@)".}

proc constructQueryResult*(): QueryResult {.constructor,importcpp: "osg::QueryGeometry::QueryResult::QueryResult".}

proc constructQueryResult*(v: bool, p: cuint): QueryResult {.constructor,importcpp: "osg::QueryGeometry::QueryResult::QueryResult(@)".}

proc constructOcclusionQueryNode*(): OcclusionQueryNode {.constructor,importcpp: "osg::OcclusionQueryNode::OcclusionQueryNode".}

proc constructOcclusionQueryNode*(oqn: OcclusionQueryNode, copyop: CopyOp = SHALLOW_COPY): OcclusionQueryNode {.constructor,importcpp: "osg::OcclusionQueryNode::OcclusionQueryNode(@)".}

proc reset*(this: var QueryGeometry)  {.importcpp: "reset".}

proc drawImplementation*(this: QueryGeometry, renderInfo: RenderInfo)  {.importcpp: "drawImplementation".}

proc getQueryResult*(this: QueryGeometry, cam: ptr Camera ): QueryResult  {.importcpp: "getQueryResult".}
    ## return a QueryResult for specified Camera, where the QueryResult.valid
    ## is true when query results are available, and in which case the
    ## QueryResult.numPixels provides the num of pixels in the query result.

proc getNumPixels*(this: QueryGeometry, cam: ptr Camera ): cuint  {.importcpp: "getNumPixels".}

proc releaseGLObjects*(this: QueryGeometry, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

proc deleteQueryObject*(this: var QueryGeometry, contextID: cuint, handle: GLuint)  {.importcpp: "deleteQueryObject".}

proc flushDeletedQueryObjects*(this: var QueryGeometry, contextID: cuint, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedQueryObjects".}

proc discardDeletedQueryObjects*(this: var QueryGeometry, contextID: cuint)  {.importcpp: "discardDeletedQueryObjects".}

proc cloneType*(this: OcclusionQueryNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: OcclusionQueryNode, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: OcclusionQueryNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: OcclusionQueryNode): cstring  {.importcpp: "className".}

proc libraryName*(this: OcclusionQueryNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var OcclusionQueryNode, nv: NodeVisitor)  {.importcpp: "accept".}

proc computeBound*(this: OcclusionQueryNode): BoundingSphere  {.importcpp: "computeBound".}

proc releaseGLObjects*(this: OcclusionQueryNode, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

proc setQueriesEnabled*(this: var OcclusionQueryNode, enable: bool)  {.importcpp: "setQueriesEnabled".}

proc getQueriesEnabled*(this: OcclusionQueryNode): bool  {.importcpp: "getQueriesEnabled".}

proc setVisibilityThreshold*(this: var OcclusionQueryNode, pixels: cuint)  {.importcpp: "setVisibilityThreshold".}

proc getVisibilityThreshold*(this: OcclusionQueryNode): cuint  {.importcpp: "getVisibilityThreshold".}

proc setQueryFrameCount*(this: var OcclusionQueryNode, frames: cuint)  {.importcpp: "setQueryFrameCount".}

proc getQueryFrameCount*(this: OcclusionQueryNode): cuint  {.importcpp: "getQueryFrameCount".}

proc resetQueries*(this: var OcclusionQueryNode)  {.importcpp: "resetQueries".}

proc setDebugDisplay*(this: var OcclusionQueryNode, enable: bool)  {.importcpp: "setDebugDisplay".}

proc getDebugDisplay*(this: OcclusionQueryNode): bool  {.importcpp: "getDebugDisplay".}

proc setQueryStateSet*(this: var OcclusionQueryNode, ss: ptr StateSet )  {.importcpp: "setQueryStateSet".}

proc getQueryStateSet*(this: var OcclusionQueryNode): ptr StateSet   {.importcpp: "getQueryStateSet".}

proc getQueryStateSet*(this: OcclusionQueryNode): ptr StateSet   {.importcpp: "getQueryStateSet".}

proc setQueryGeometry*(this: var OcclusionQueryNode, geom: ptr QueryGeometry )  {.importcpp: "setQueryGeometry".}

proc getQueryGeometry*(this: OcclusionQueryNode): ptr QueryGeometry   {.importcpp: "getQueryGeometry".}

proc setDebugStateSet*(this: var OcclusionQueryNode, ss: ptr StateSet )  {.importcpp: "setDebugStateSet".}

proc getDebugStateSet*(this: var OcclusionQueryNode): ptr StateSet   {.importcpp: "getDebugStateSet".}

proc getDebugStateSet*(this: OcclusionQueryNode): ptr StateSet   {.importcpp: "getDebugStateSet".}

proc getPassed*(this: OcclusionQueryNode): bool  {.importcpp: "getPassed".}

proc getPassed*(this: var OcclusionQueryNode, camera: ptr Camera , nv: NodeVisitor): bool  {.importcpp: "getPassed".}

proc traverseQuery*(this: var OcclusionQueryNode, camera: ptr Camera , nv: NodeVisitor)  {.importcpp: "traverseQuery".}

proc traverseDebug*(this: var OcclusionQueryNode, nv: NodeVisitor)  {.importcpp: "traverseDebug".}

proc flushDeletedQueryObjects*(this: var OcclusionQueryNode, contextID: cuint, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedQueryObjects".}

proc discardDeletedQueryObjects*(this: var OcclusionQueryNode, contextID: cuint)  {.importcpp: "discardDeletedQueryObjects".}

proc createSupportNodes*(this: var OcclusionQueryNode)  {.importcpp: "createSupportNodes".}

proc isQueryGeometryValid*(this: OcclusionQueryNode): bool  {.importcpp: "isQueryGeometryValid".}

proc setQueryGeometryInternal*(this: var OcclusionQueryNode, queryGeom: ptr QueryGeometry , debugQueryGeom: ptr Geometry , state: QueryGeometryState)  {.importcpp: "setQueryGeometryInternal".}

proc updateDefaultQueryGeometry*(this: var OcclusionQueryNode)  {.importcpp: "updateDefaultQueryGeometry".}

{.pop.}  # header: "OcclusionQueryNode"
