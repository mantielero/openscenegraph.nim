import Object  # provides: osg::Object
import Referenced  # provides: osg::Referenced
import Node  # provides: osg::Node
import Group  # provides: osg::NodeList
import CopyOp  # provides: osg::CopyOp
import NodeVisitor  # provides: osg::NodeVisitor
type
  PerRangeDataList* {.header: "PagedLOD", importcpp: "osg::PagedLOD::PerRangeDataList".} = cint


{.push header: "PagedLOD".}

proc constructPagedLOD*(): PagedLOD {.constructor,importcpp: "osg::PagedLOD::PagedLOD".}
    ## Default constructor The default constructor sets - the center mode to
    ## USER_DEFINED_CENTER and - enables the paging of external children.

proc constructPagedLOD*(Pagedlod, copyop: Copyop = SHALLOW_COPY): PagedLOD {.constructor,importcpp: "osg::PagedLOD::PagedLOD(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructPerRangeData*(): PerRangeData {.constructor,importcpp: "osg::PagedLOD::PerRangeData::PerRangeData".}

proc constructPerRangeData*(prd: Perrangedata): PerRangeData {.constructor,importcpp: "osg::PagedLOD::PerRangeData::PerRangeData(@)".}

proc cloneType*(this: PagedLOD): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PagedLOD, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PagedLOD, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: PagedLOD): cstring  {.importcpp: "className".}

proc libraryName*(this: PagedLOD): cstring  {.importcpp: "libraryName".}

proc accept*(this: var PagedLOD, nv: Nodevisitor)  {.importcpp: "accept".}

proc traverse*(this: var PagedLOD, nv: Nodevisitor)  {.importcpp: "traverse".}

proc addChild*(this: var PagedLOD, child: ptr Node ): bool  {.importcpp: "addChild".}

proc addChild*(this: var PagedLOD, child: ptr Node , rmin: cfloat, rmax: cfloat): bool  {.importcpp: "addChild".}

proc addChild*(this: var PagedLOD, child: ptr Node , rmin: cfloat, rmax: cfloat, filename: String, priorityOffset: cfloat, priorityScale: cfloat): bool  {.importcpp: "addChild".}

proc removeChildren*(this: var PagedLOD, pos: cuint, numChildrenToRemove: cuint = 1): bool  {.importcpp: "removeChildren".}

proc setDatabaseOptions*(this: var PagedLOD, options: ptr Referenced )  {.importcpp: "setDatabaseOptions".}
    ## Set the optional database osgDB::Options object to use when reading
    ## children.

proc getDatabaseOptions*(this: var PagedLOD): ptr Referenced   {.importcpp: "getDatabaseOptions".}
    ## Get the optional database osgDB::Options object used when reading
    ## children.

proc getDatabaseOptions*(this: PagedLOD): ptr Referenced   {.importcpp: "getDatabaseOptions".}
    ## Get the optional database osgDB::Options object used when reading
    ## children.

proc setDatabasePath*(this: var PagedLOD, path: String)  {.importcpp: "setDatabasePath".}
    ## Set the database path to prepend to children's filenames.

proc getDatabasePath*(this: PagedLOD): String  {.importcpp: "getDatabasePath".}
    ## Get the database path used to prepend to children's filenames.

proc `=`*(this: var PerRangeData, prd: Perrangedata): Perrangedata  {.importcpp: "# = #".}

proc setFileName*(this: var PagedLOD, childNo: cuint, filename: String)  {.importcpp: "setFileName".}

proc getFileName*(this: PagedLOD, childNo: cuint): String  {.importcpp: "getFileName".}

proc getNumFileNames*(this: PagedLOD): cuint  {.importcpp: "getNumFileNames".}

proc setPriorityOffset*(this: var PagedLOD, childNo: cuint, priorityOffset: cfloat)  {.importcpp: "setPriorityOffset".}

proc getPriorityOffset*(this: PagedLOD, childNo: cuint): cfloat  {.importcpp: "getPriorityOffset".}

proc getNumPriorityOffsets*(this: PagedLOD): cuint  {.importcpp: "getNumPriorityOffsets".}

proc setPriorityScale*(this: var PagedLOD, childNo: cuint, priorityScale: cfloat)  {.importcpp: "setPriorityScale".}

proc getPriorityScale*(this: PagedLOD, childNo: cuint): cfloat  {.importcpp: "getPriorityScale".}

proc getNumPriorityScales*(this: PagedLOD): cuint  {.importcpp: "getNumPriorityScales".}

proc setMinimumExpiryTime*(this: var PagedLOD, childNo: cuint, minTime: cdouble)  {.importcpp: "setMinimumExpiryTime".}
    ## Sets the minimum amount of time, in seconds, that must pass without a
    ## child being traversed before it can be expired.

proc getMinimumExpiryTime*(this: PagedLOD, childNo: cuint): cdouble  {.importcpp: "getMinimumExpiryTime".}

proc getNumMinimumExpiryTimes*(this: PagedLOD): cuint  {.importcpp: "getNumMinimumExpiryTimes".}

proc setMinimumExpiryFrames*(this: var PagedLOD, childNo: cuint, minFrames: cuint)  {.importcpp: "setMinimumExpiryFrames".}
    ## Sets the minimum number of frames that must be rendered without a
    ## child being traversed before it can be expired.

proc getMinimumExpiryFrames*(this: PagedLOD, childNo: cuint): cuint  {.importcpp: "getMinimumExpiryFrames".}

proc getNumMinimumExpiryFrames*(this: PagedLOD): cuint  {.importcpp: "getNumMinimumExpiryFrames".}

proc setTimeStamp*(this: var PagedLOD, childNo: cuint, timeStamp: cdouble)  {.importcpp: "setTimeStamp".}

proc getTimeStamp*(this: PagedLOD, childNo: cuint): cdouble  {.importcpp: "getTimeStamp".}

proc getNumTimeStamps*(this: PagedLOD): cuint  {.importcpp: "getNumTimeStamps".}

proc setFrameNumber*(this: var PagedLOD, childNo: cuint, frameNumber: cuint)  {.importcpp: "setFrameNumber".}

proc getFrameNumber*(this: PagedLOD, childNo: cuint): cuint  {.importcpp: "getFrameNumber".}

proc getNumFrameNumbers*(this: PagedLOD): cuint  {.importcpp: "getNumFrameNumbers".}

proc getDatabaseRequest*(this: var PagedLOD, childNo: cuint): Ref_ptr[Referenced]  {.importcpp: "getDatabaseRequest".}
    ## Return the DatabaseRequest object used by the DatabasePager to keep
    ## track of file load requests being carried on behalf of the
    ## DatabasePager. Note, in normal OSG usage you should not set this value
    ## yourself, as this will be managed by the osgDB::DatabasePager.

proc getDatabaseRequest*(this: PagedLOD, childNo: cuint): Ref_ptr[Referenced]  {.importcpp: "getDatabaseRequest".}
    ## Return the const DatabaseRequest object.

proc setFrameNumberOfLastTraversal*(this: var PagedLOD, frameNumber: cuint)  {.importcpp: "setFrameNumberOfLastTraversal".}
    ## Set the frame number of the last time that this PageLOD node was
    ## traversed. Note, this frame number is automatically set by the
    ## traverse() method for all traversals (update, cull etc.).

proc getFrameNumberOfLastTraversal*(this: PagedLOD): cuint  {.importcpp: "getFrameNumberOfLastTraversal".}
    ## Get the frame number of the last time that this PageLOD node was
    ## traversed.

proc setNumChildrenThatCannotBeExpired*(this: var PagedLOD, num: cuint)  {.importcpp: "setNumChildrenThatCannotBeExpired".}
    ## Set the number of children that the PagedLOD must keep around, even if
    ## they are older than their expiry time.

proc getNumChildrenThatCannotBeExpired*(this: PagedLOD): cuint  {.importcpp: "getNumChildrenThatCannotBeExpired".}
    ## Get the number of children that the PagedLOD must keep around, even if
    ## they are older than their expiry time.

proc setDisableExternalChildrenPaging*(this: var PagedLOD, flag: bool)  {.importcpp: "setDisableExternalChildrenPaging".}
    ## Set whether you want to disable the paging in of external nodes.

proc getDisableExternalChildrenPaging*(this: PagedLOD): bool  {.importcpp: "getDisableExternalChildrenPaging".}

proc removeExpiredChildren*(this: var PagedLOD, expiryTime: cdouble, expiryFrame: cuint, removedChildren: Nodelist): bool  {.importcpp: "removeExpiredChildren".}
    ## Remove the children from the PagedLOD which haven't been visited since
    ## specified expiry time and expiry frame number. The removed children
    ## are added to the removeChildren list passed into the method, this
    ## allows the children to be deleted later at the caller's discretion.
    ## Return true if children are removed, false otherwise.

proc expandPerRangeDataTo*(this: var PagedLOD, pos: cuint)  {.importcpp: "expandPerRangeDataTo".}

{.pop.}  # header: "PagedLOD"
