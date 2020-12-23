import CopyOp # Provides CopyOp
import Object # Provides Object
import gl # Provides GLint
import VertexArrayState # Provides VertexArrayState
import NodeVisitor # Provides NodeVisitor
import RenderInfo # Provides RenderInfo


{.push header: "DispatchCompute".}


# Constructors and methods
proc constructDispatchCompute*(numGroupsX: GLint, numGroupsY: GLint, numGroupsZ: GLint): DispatchCompute {.constructor,importcpp: "DispatchCompute(@)".}

proc constructDispatchCompute*(Dispatchcompute, copyop: Copyop = SHALLOW_COPY): DispatchCompute {.constructor,importcpp: "DispatchCompute(@)".}

proc cloneType*(this: DispatchCompute): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DispatchCompute, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DispatchCompute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: DispatchCompute): cstring  {.importcpp: "className".}

proc libraryName*(this: DispatchCompute): cstring  {.importcpp: "libraryName".}

proc accept*(this: var DispatchCompute, nv: Nodevisitor)  {.importcpp: "accept".}

proc compileGLObjects*(this: DispatchCompute, Renderinfo)  {.importcpp: "compileGLObjects".}

proc createVertexArrayStateImplememtation*(this: DispatchCompute, Renderinfo): ptr Vertexarraystate   {.importcpp: "createVertexArrayStateImplememtation".}

proc drawImplementation*(this: DispatchCompute, renderInfo: Renderinfo)  {.importcpp: "drawImplementation".}

proc setComputeGroups*(this: var DispatchCompute, numGroupsX: GLint, numGroupsY: GLint, numGroupsZ: GLint)  {.importcpp: "setComputeGroups".}
    ## Set compute shader work groups

proc getComputeGroups*(this: DispatchCompute, numGroupsX: var GLint, numGroupsY: var GLint, numGroupsZ: var GLint)  {.importcpp: "getComputeGroups".}
    ## Get compute shader work groups

{.pop.} # header: "DispatchCompute
