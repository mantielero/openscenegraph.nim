import osg_types
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: ref_ptr  was providing: osg::ref_ptr
  # File: Object  was providing: osg::Object
  # File: Referenced  was providing: osg::Referenced
  # File: Node  was providing: osg::Node
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  CenterMode* {.size:sizeof(cuint),header: "ProxyNode", importcpp: "osg::ProxyNode::CenterMode", pure.} = enum
    ## Modes which control how the center of object should be determined when
    ## computing which child is active.

    USE_BOUNDING_SPHERE_CENTER = 0,
    USER_DEFINED_CENTER = 1,
    UNION_OF_BOUNDING_SPHERE_AND_USER_DEFINED = 2

  LoadingExternalReferenceMode* {.size:sizeof(cuint),header: "ProxyNode", importcpp: "osg::ProxyNode::LoadingExternalReferenceMode", pure.} = enum
    ## Modes which control how the proxynode external reference are loaded.

    LOAD_IMMEDIATELY = 0,
    DEFER_LOADING_TO_DATABASE_PAGER = 1,
    NO_AUTOMATIC_LOADING = 2

  Vec_type* {.header: "ProxyNode", importcpp: "osg::ProxyNode::vec_type".} = cint
  Value_type* {.header: "ProxyNode", importcpp: "osg::ProxyNode::value_type".} = cint
  FileNameDatabaseRequestPair* {.header: "ProxyNode", importcpp: "osg::ProxyNode::FileNameDatabaseRequestPair".} = pair[string,ref_ptr[Referenced]]
  FileNameDatabaseRequestList* {.header: "ProxyNode", importcpp: "osg::ProxyNode::FileNameDatabaseRequestList".} = cint


{.push header: "ProxyNode".}

proc constructProxyNode*(): ProxyNode {.constructor,importcpp: "osg::ProxyNode::ProxyNode".}

proc constructProxyNode*(a00: ProxyNode, copyop: CopyOp = SHALLOW_COPY): ProxyNode {.constructor,importcpp: "osg::ProxyNode::ProxyNode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: ProxyNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ProxyNode, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ProxyNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: ProxyNode): cstring  {.importcpp: "className".}

proc libraryName*(this: ProxyNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var ProxyNode, nv: NodeVisitor)  {.importcpp: "accept".}

proc traverse*(this: var ProxyNode, nv: NodeVisitor)  {.importcpp: "traverse".}

proc addChild*(this: var ProxyNode, child: ptr Node ): bool  {.importcpp: "addChild".}

proc addChild*(this: var ProxyNode, child: ptr Node , filename: string): bool  {.importcpp: "addChild".}

proc removeChildren*(this: var ProxyNode, pos: cuint, numChildrenToRemove: cuint): bool  {.importcpp: "removeChildren".}

proc setDatabaseOptions*(this: var ProxyNode, options: ptr Referenced )  {.importcpp: "setDatabaseOptions".}
    ## Set the optional database osgDB::Options object to use when loading
    ## children.

proc getDatabaseOptions*(this: var ProxyNode): ptr Referenced   {.importcpp: "getDatabaseOptions".}
    ## Get the optional database osgDB::Options object used when loading
    ## children.

proc getDatabaseOptions*(this: ProxyNode): ptr Referenced   {.importcpp: "getDatabaseOptions".}
    ## Get the optional database osgDB::Options object used when loading
    ## children.

proc setDatabasePath*(this: var ProxyNode, path: string)  {.importcpp: "setDatabasePath".}
    ## Set the database path to prepend to children's filenames.

proc getDatabasePath*(this: ProxyNode): string  {.importcpp: "getDatabasePath".}
    ## Get the database path used to prepend to children's filenames.

proc setFileName*(this: var ProxyNode, childNo: cuint, filename: string)  {.importcpp: "setFileName".}

proc getFileName*(this: ProxyNode, childNo: cuint): string  {.importcpp: "getFileName".}

proc getNumFileNames*(this: ProxyNode): cuint  {.importcpp: "getNumFileNames".}

proc getDatabaseRequest*(this: var ProxyNode, childNo: cuint): ref_ptr[Referenced]  {.importcpp: "getDatabaseRequest".}
    ## Return the DatabaseRequest object used by the DatabasePager to keep
    ## track of file load requests being carried out on behalf of the
    ## DatabasePager. Note, in normal OSG usage you should not set this value
    ## yourself, as this will be managed by the osgDB::DatabasePager.

proc getDatabaseRequest*(this: ProxyNode, childNo: cuint): ref_ptr[Referenced]  {.importcpp: "getDatabaseRequest".}
    ## Return the const DatabaseRequest object.

proc setCenterMode*(this: var ProxyNode, mode: CenterMode)  {.importcpp: "setCenterMode".}
    ## Set how the center of object should be determined when computing which
    ## child is active.

proc getCenterMode*(this: ProxyNode): CenterMode  {.importcpp: "getCenterMode".}
    ## Get how the center of object should be determined when computing which
    ## child is active.

proc setLoadingExternalReferenceMode*(this: var ProxyNode, mode: LoadingExternalReferenceMode)  {.importcpp: "setLoadingExternalReferenceMode".}
    ## Set how the child loading is done.

proc getLoadingExternalReferenceMode*(this: ProxyNode): LoadingExternalReferenceMode  {.importcpp: "getLoadingExternalReferenceMode".}
    ## Get the loading mode.

proc setCenter*(this: var ProxyNode, center: vec_type)  {.importcpp: "setCenter".}
    ## Sets the object-space point which defines the center of the
    ## osg::ProxyNode. Center is affected by any transforms in the hierarchy
    ## above the osg::ProxyNode.

proc getCenter*(this: ProxyNode): vec_type  {.importcpp: "getCenter".}
    ## Return the ProxyNode center point.

proc setRadius*(this: var ProxyNode, radius: value_type)  {.importcpp: "setRadius".}
    ## Set the object-space reference radius of the volume enclosed by the
    ## ProxyNode. Used to determine the bounding sphere of the ProxyNode in
    ## the absence of any children.

proc getRadius*(this: ProxyNode): value_type  {.importcpp: "getRadius".}
    ## Get the object-space radius of the volume enclosed by the ProxyNode.

proc computeBound*(this: ProxyNode): BoundingSphere  {.importcpp: "computeBound".}

proc expandFileNameListTo*(this: var ProxyNode, pos: cuint)  {.importcpp: "expandFileNameListTo".}

{.pop.}  # header: "ProxyNode"
