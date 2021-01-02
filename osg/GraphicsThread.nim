import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: GraphicsContext  was providing: osg::GraphicsContext
type
  PreBlockOp* {.size:sizeof(cuint),header: "GraphicsThread", importcpp: "osg::BarrierOperation::PreBlockOp", pure.} = enum
    NO_OPERATION = 0,
    GL_FLUSH = 1,
    GL_FINISH = 2

  RunOperations* {.header: "GraphicsThread", importcpp: "osg::RunOperations", byref.} = object #of osg::GraphicsOperation

  EndOfDynamicDrawBlock* {.header: "GraphicsThread", importcpp: "osg::EndOfDynamicDrawBlock", byref.} = object #of OpenThreads::BlockCount



{.push header: "GraphicsThread".}

proc constructGraphicsThread*(): GraphicsThread {.constructor,importcpp: "osg::GraphicsThread::GraphicsThread".}

proc constructGraphicsOperation*(name: string, keep: bool): GraphicsOperation {.constructor,importcpp: "osg::GraphicsOperation::GraphicsOperation(@)".}

proc constructSwapBuffersOperation*(): SwapBuffersOperation {.constructor,importcpp: "osg::SwapBuffersOperation::SwapBuffersOperation".}

proc constructBarrierOperation*(numThreads: cint, op: PreBlockOp, keep: bool): BarrierOperation {.constructor,importcpp: "osg::BarrierOperation::BarrierOperation(@)".}

proc constructReleaseContext_Block_MakeCurrentOperation*(): ReleaseContext_Block_MakeCurrentOperation {.constructor,importcpp: "osg::ReleaseContext_Block_MakeCurrentOperation::ReleaseContext_Block_MakeCurrentOperation".}

proc constructBlockAndFlushOperation*(): BlockAndFlushOperation {.constructor,importcpp: "osg::BlockAndFlushOperation::BlockAndFlushOperation".}

proc constructFlushDeletedGLObjectsOperation*(availableTime: cdouble, keep: bool): FlushDeletedGLObjectsOperation {.constructor,importcpp: "osg::FlushDeletedGLObjectsOperation::FlushDeletedGLObjectsOperation(@)".}

proc constructRunOperations*(): RunOperations {.constructor,importcpp: "osg::RunOperations::RunOperations".}

proc constructEndOfDynamicDrawBlock*(a00: cuint): EndOfDynamicDrawBlock {.constructor,importcpp: "osg::EndOfDynamicDrawBlock::EndOfDynamicDrawBlock(@)".}

proc run*(this: var GraphicsThread)  {.importcpp: "run".}
    ## Run does the graphics thread run loop.

proc `()`*(this: var GraphicsOperation, `object`: ptr Object )  {.importcpp: "# () #".}
    ## Override the standard Operation operator and dynamic cast object to a
    ## GraphicsContext, on success call operation()(GraphicsContext*).

proc `()`*(this: var GraphicsOperation, context: ptr GraphicsContext )  {.importcpp: "# () #".}

proc resizeGLObjectBuffers*(this: var GraphicsOperation, a00: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: GraphicsOperation, a00: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc `()`*(this: var SwapBuffersOperation, context: ptr GraphicsContext )  {.importcpp: "# () #".}

proc release*(this: var BarrierOperation)  {.importcpp: "release".}

proc `()`*(this: var BarrierOperation, `object`: ptr Object )  {.importcpp: "# () #".}

proc release*(this: var ReleaseContext_Block_MakeCurrentOperation)  {.importcpp: "release".}

proc `()`*(this: var ReleaseContext_Block_MakeCurrentOperation, context: ptr GraphicsContext )  {.importcpp: "# () #".}

proc release*(this: var BlockAndFlushOperation)  {.importcpp: "release".}

proc `()`*(this: var BlockAndFlushOperation, a00: ptr GraphicsContext )  {.importcpp: "# () #".}

proc `()`*(this: var FlushDeletedGLObjectsOperation, a00: ptr GraphicsContext )  {.importcpp: "# () #".}

proc `()`*(this: var RunOperations, context: ptr GraphicsContext )  {.importcpp: "# () #".}

proc completed*(this: var EndOfDynamicDrawBlock, state: ptr State )  {.importcpp: "completed".}

{.pop.}  # header: "GraphicsThread"
