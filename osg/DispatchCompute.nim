import osg_types
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: VertexArrayState  was providing: osg::VertexArrayState
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  DispatchCompute* {.header: "DispatchCompute", importcpp: "osg::DispatchCompute", byref.} = object #of osg::Drawable
    ## Wrapper around glDispatchCompute.



{.push header: "DispatchCompute".}

proc constructDispatchCompute*(numGroupsX: GLint, numGroupsY: GLint, numGroupsZ: GLint): DispatchCompute {.constructor,importcpp: "osg::DispatchCompute::DispatchCompute(@)".}

proc constructDispatchCompute*(a00: DispatchCompute, copyop: CopyOp = SHALLOW_COPY): DispatchCompute {.constructor,importcpp: "osg::DispatchCompute::DispatchCompute(@)".}

proc cloneType*(this: DispatchCompute): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DispatchCompute, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DispatchCompute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: DispatchCompute): cstring  {.importcpp: "className".}

proc libraryName*(this: DispatchCompute): cstring  {.importcpp: "libraryName".}

proc accept*(this: var DispatchCompute, nv: NodeVisitor)  {.importcpp: "accept".}

proc compileGLObjects*(this: DispatchCompute, a00: RenderInfo)  {.importcpp: "compileGLObjects".}

proc createVertexArrayStateImplememtation*(this: DispatchCompute, a00: RenderInfo): ptr VertexArrayState   {.importcpp: "createVertexArrayStateImplememtation".}

proc drawImplementation*(this: DispatchCompute, renderInfo: RenderInfo)  {.importcpp: "drawImplementation".}

proc setComputeGroups*(this: var DispatchCompute, numGroupsX: GLint, numGroupsY: GLint, numGroupsZ: GLint)  {.importcpp: "setComputeGroups".}
    ## Set compute shader work groups

proc getComputeGroups*(this: DispatchCompute, numGroupsX: var GLint, numGroupsY: var GLint, numGroupsZ: var GLint)  {.importcpp: "getComputeGroups".}
    ## Get compute shader work groups

{.pop.}  # header: "DispatchCompute"
