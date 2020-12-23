import CopyOp # Provides CopyOp
import stringfwd # Provides string
import Object # Provides Object
import gl # Provides GLuint
import StateSet # Provides StateSet
import BoundingSphere # Provides BoundingSphere
import NodeVisitor # Provides NodeVisitor
import State # Provides State
import Camera # Provides Camera
import RenderInfo # Provides RenderInfo
import Geometry # Provides Geometry


type
  QueryGeometryState* {.size:sizeof(cuint),header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode::QueryGeometryState".} = enum
    INVALID = 0,
    VALID = 1,
    USER_DEFINED = 2

  # Typedefs
  ResultMap* {.header: "OcclusionQueryNode", importcpp: "osg::QueryGeometry::ResultMap".} = cint
  FrameCountMap* {.header: "OcclusionQueryNode", importcpp: "osg::OcclusionQueryNode::FrameCountMap".} = cint
{.push header: "OcclusionQueryNode".}


# Constructors and methods
proc constructTestResult*(): TestResult {.constructor,importcpp: "TestResult".}

proc constructQueryGeometry*(oqnName: String): QueryGeometry {.constructor,importcpp: "QueryGeometry(@)".}

proc constructQueryResult*(): QueryResult {.constructor,importcpp: "QueryResult".}

proc constructQueryResult*(v: bool, p: cuint): QueryResult {.constructor,importcpp: "QueryResult(@)".}

proc constructOcclusionQueryNode*(): OcclusionQueryNode {.constructor,importcpp: "OcclusionQueryNode".}

proc constructOcclusionQueryNode*(oqn: Occlusionquerynode, copyop: Copyop = SHALLOW_COPY): OcclusionQueryNode {.constructor,importcpp: "OcclusionQueryNode(@)".}

proc reset*(this: var QueryGeometry)  {.importcpp: "reset".}

proc drawImplementation*(this: QueryGeometry, renderInfo: Renderinfo)  {.importcpp: "drawImplementation".}

proc getQueryResult*(this: QueryGeometry, cam: ptr Camera ): Queryresult  {.importcpp: "getQueryResult".}
    ## return a QueryResult for specified Camera, where the QueryResult.valid
    ## is true when query results are available, and in which case the
    ## QueryResult.numPixels provides the num of pixels in the query result.

proc getNumPixels*(this: QueryGeometry, cam: ptr Camera ): cuint  {.importcpp: "getNumPixels".}

proc releaseGLObjects*(this: QueryGeometry, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}

proc deleteQueryObject*(this: var QueryGeometry, contextID: cuint, handle: GLuint)  {.importcpp: "deleteQueryObject".}

proc flushDeletedQueryObjects*(this: var QueryGeometry, contextID: cuint, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedQueryObjects".}

proc discardDeletedQueryObjects*(this: var QueryGeometry, contextID: cuint)  {.importcpp: "discardDeletedQueryObjects".}

proc cloneType*(this: OcclusionQueryNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: OcclusionQueryNode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: OcclusionQueryNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: OcclusionQueryNode): cstring  {.importcpp: "className".}

proc libraryName*(this: OcclusionQueryNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var OcclusionQueryNode, nv: Nodevisitor)  {.importcpp: "accept".}

proc computeBound*(this: OcclusionQueryNode): Boundingsphere  {.importcpp: "computeBound".}

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

proc setQueryStateSet*(this: var OcclusionQueryNode, ss: ptr Stateset )  {.importcpp: "setQueryStateSet".}

proc getQueryStateSet*(this: var OcclusionQueryNode): ptr Stateset   {.importcpp: "getQueryStateSet".}

proc getQueryStateSet*(this: OcclusionQueryNode): ptr Stateset   {.importcpp: "getQueryStateSet".}

proc setQueryGeometry*(this: var OcclusionQueryNode, geom: ptr Querygeometry )  {.importcpp: "setQueryGeometry".}

proc getQueryGeometry*(this: OcclusionQueryNode): ptr Querygeometry   {.importcpp: "getQueryGeometry".}

proc setDebugStateSet*(this: var OcclusionQueryNode, ss: ptr Stateset )  {.importcpp: "setDebugStateSet".}

proc getDebugStateSet*(this: var OcclusionQueryNode): ptr Stateset   {.importcpp: "getDebugStateSet".}

proc getDebugStateSet*(this: OcclusionQueryNode): ptr Stateset   {.importcpp: "getDebugStateSet".}

proc getPassed*(this: OcclusionQueryNode): bool  {.importcpp: "getPassed".}

proc getPassed*(this: var OcclusionQueryNode, camera: ptr Camera , nv: Nodevisitor): bool  {.importcpp: "getPassed".}

proc traverseQuery*(this: var OcclusionQueryNode, camera: ptr Camera , nv: Nodevisitor)  {.importcpp: "traverseQuery".}

proc traverseDebug*(this: var OcclusionQueryNode, nv: Nodevisitor)  {.importcpp: "traverseDebug".}

proc flushDeletedQueryObjects*(this: var OcclusionQueryNode, contextID: cuint, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedQueryObjects".}

proc discardDeletedQueryObjects*(this: var OcclusionQueryNode, contextID: cuint)  {.importcpp: "discardDeletedQueryObjects".}

proc createSupportNodes*(this: var OcclusionQueryNode)  {.importcpp: "createSupportNodes".}

proc isQueryGeometryValid*(this: OcclusionQueryNode): bool  {.importcpp: "isQueryGeometryValid".}

proc setQueryGeometryInternal*(this: var OcclusionQueryNode, queryGeom: ptr Querygeometry , debugQueryGeom: ptr Geometry , state: Querygeometrystate)  {.importcpp: "setQueryGeometryInternal".}

proc updateDefaultQueryGeometry*(this: var OcclusionQueryNode)  {.importcpp: "updateDefaultQueryGeometry".}

{.pop.} # header: "OcclusionQueryNode
