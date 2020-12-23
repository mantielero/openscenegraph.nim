import stringfwd # Provides string
import Object # Provides Object
import State # Provides State
import GraphicsContext # Provides GraphicsContext


type
  PreBlockOp* {.size:sizeof(cuint),header: "GraphicsThread", importcpp: "osg::BarrierOperation::PreBlockOp".} = enum
    NO_OPERATION = 0,
    GL_FLUSH = 1,
    GL_FINISH = 2

{.push header: "GraphicsThread".}


# Constructors and methods
proc constructGraphicsThread*(): GraphicsThread {.constructor,importcpp: "GraphicsThread".}

proc constructGraphicsOperation*(name: String, keep: bool): GraphicsOperation {.constructor,importcpp: "GraphicsOperation(@)".}

proc constructSwapBuffersOperation*(): SwapBuffersOperation {.constructor,importcpp: "SwapBuffersOperation".}

proc constructBarrierOperation*(numThreads: cint, op: Preblockop, keep: bool): BarrierOperation {.constructor,importcpp: "BarrierOperation(@)".}

proc constructReleaseContext_Block_MakeCurrentOperation*(): ReleaseContext_Block_MakeCurrentOperation {.constructor,importcpp: "ReleaseContext_Block_MakeCurrentOperation".}

proc constructBlockAndFlushOperation*(): BlockAndFlushOperation {.constructor,importcpp: "BlockAndFlushOperation".}

proc constructFlushDeletedGLObjectsOperation*(availableTime: cdouble, keep: bool): FlushDeletedGLObjectsOperation {.constructor,importcpp: "FlushDeletedGLObjectsOperation(@)".}

proc constructRunOperations*(): RunOperations {.constructor,importcpp: "RunOperations".}

proc constructEndOfDynamicDrawBlock*(cuint): EndOfDynamicDrawBlock {.constructor,importcpp: "EndOfDynamicDrawBlock(@)".}

proc run*(this: var GraphicsThread)  {.importcpp: "run".}
    ## Run does the graphics thread run loop.

proc `()`*(this: var GraphicsOperation, `object`: ptr Object )  {.importcpp: "# () #".}
    ## Override the standard Operation operator and dynamic cast object to a
    ## GraphicsContext, on success call operation()(GraphicsContext*).

proc `()`*(this: var GraphicsOperation, context: ptr Graphicscontext )  {.importcpp: "# () #".}

proc resizeGLObjectBuffers*(this: var GraphicsOperation, cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: GraphicsOperation, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc `()`*(this: var SwapBuffersOperation, context: ptr Graphicscontext )  {.importcpp: "# () #".}

proc release*(this: var BarrierOperation)  {.importcpp: "release".}

proc `()`*(this: var BarrierOperation, `object`: ptr Object )  {.importcpp: "# () #".}

proc release*(this: var ReleaseContext_Block_MakeCurrentOperation)  {.importcpp: "release".}

proc `()`*(this: var ReleaseContext_Block_MakeCurrentOperation, context: ptr Graphicscontext )  {.importcpp: "# () #".}

proc release*(this: var BlockAndFlushOperation)  {.importcpp: "release".}

proc `()`*(this: var BlockAndFlushOperation, ptr Graphicscontext )  {.importcpp: "# () #".}

proc `()`*(this: var FlushDeletedGLObjectsOperation, ptr Graphicscontext )  {.importcpp: "# () #".}

proc `()`*(this: var RunOperations, context: ptr Graphicscontext )  {.importcpp: "# () #".}

proc completed*(this: var EndOfDynamicDrawBlock, state: ptr State )  {.importcpp: "completed".}

{.pop.} # header: "GraphicsThread
