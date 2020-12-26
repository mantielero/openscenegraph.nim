import Object  # provides: osg::Object
type
  OperationThreads* {.header: "OperationThread", importcpp: "osg::OperationQueue::OperationThreads".} = cint
  Operations* {.header: "OperationThread", importcpp: "osg::OperationQueue::Operations".} = cint
  OperationsThread* {.header: "OperationThread", importcpp: "osg::OperationsThread".} = Operationthread
  RefBlockCount* {.header: "OperationThread", importcpp: "osg::RefBlockCount", byref.} = object #of osg::Referenced

  OperationQueue* {.header: "OperationThread", importcpp: "osg::OperationQueue", byref.} = object #of class osg::Referenced



{.push header: "OperationThread".}

proc constructRefBlock*(): RefBlock {.constructor,importcpp: "osg::RefBlock::RefBlock".}

proc constructRefBlockCount*(blockCount: cuint): RefBlockCount {.constructor,importcpp: "osg::RefBlockCount::RefBlockCount(@)".}

proc constructOperation*(name: String, keep: bool): Operation {.constructor,importcpp: "osg::Operation::Operation(@)".}

proc constructOperation*(): Operation {.constructor,importcpp: "osg::Operation::Operation".}

proc constructOperationQueue*(): OperationQueue {.constructor,importcpp: "osg::OperationQueue::OperationQueue".}

proc constructOperationThread*(): OperationThread {.constructor,importcpp: "osg::OperationThread::OperationThread".}

proc setName*(this: var Operation, name: String)  {.importcpp: "setName".}
    ## Set the human readable name of the operation.

proc getName*(this: Operation): String  {.importcpp: "getName".}
    ## Get the human readable name of the operation.

proc setKeep*(this: var Operation, keep: bool)  {.importcpp: "setKeep".}
    ## Set whether the operation should be kept once its been applied.

proc getKeep*(this: Operation): bool  {.importcpp: "getKeep".}
    ## Get whether the operation should be kept once its been applied.

proc release*(this: var Operation)  {.importcpp: "release".}
    ## if this operation is a barrier then release it.

proc `()`*(this: var Operation, ptr Object )  {.importcpp: "# () #".}
    ## Do the actual task of this operation.

proc getNextOperation*(this: var OperationQueue, blockIfEmpty: bool): Ref_ptr[Operation]  {.importcpp: "getNextOperation".}
    ## Get the next operation from the operation queue. Return null ref_ptr<>
    ## if no operations are left in queue.

proc empty*(this: var OperationQueue): bool  {.importcpp: "empty".}
    ## Return true if the operation queue is empty.

proc getNumOperationsInQueue*(this: var OperationQueue): cuint  {.importcpp: "getNumOperationsInQueue".}
    ## Return the num of pending operations that are sitting in the
    ## OperationQueue.

proc add*(this: var OperationQueue, operation: ptr Operation )  {.importcpp: "add".}
    ## Add operation to end of OperationQueue, this will be executed by the
    ## operation thread once this operation gets to the head of the queue.

proc remove*(this: var OperationQueue, operation: ptr Operation )  {.importcpp: "remove".}
    ## Remove operation from OperationQueue.

proc remove*(this: var OperationQueue, name: String)  {.importcpp: "remove".}
    ## Remove named operation from OperationQueue.

proc removeAllOperations*(this: var OperationQueue)  {.importcpp: "removeAllOperations".}
    ## Remove all operations from OperationQueue.

proc runOperations*(this: var OperationQueue, callingObject: ptr Object  = 0)  {.importcpp: "runOperations".}
    ## Run the operations.

proc releaseAllOperations*(this: var OperationQueue)  {.importcpp: "releaseAllOperations".}
    ## Call release on all operations.

proc releaseOperationsBlock*(this: var OperationQueue)  {.importcpp: "releaseOperationsBlock".}
    ## Release operations block that is used to block threads that are
    ## waiting on an empty operations queue.

proc getOperationThreads*(this: OperationQueue): Operationthreads  {.importcpp: "getOperationThreads".}
    ## Get the set of OperationThreads that are sharing this OperationQueue.

proc addOperationThread*(this: var OperationQueue, thread: ptr Operationthread )  {.importcpp: "addOperationThread".}

proc removeOperationThread*(this: var OperationQueue, thread: ptr Operationthread )  {.importcpp: "removeOperationThread".}

proc setParent*(this: var OperationThread, parent: ptr Object )  {.importcpp: "setParent".}

proc getParent*(this: var OperationThread): ptr Object   {.importcpp: "getParent".}

proc getParent*(this: OperationThread): ptr Object   {.importcpp: "getParent".}

proc setOperationQueue*(this: var OperationThread, opq: ptr Operationqueue )  {.importcpp: "setOperationQueue".}
    ## Set the OperationQueue.

proc getOperationQueue*(this: var OperationThread): ptr Operationqueue   {.importcpp: "getOperationQueue".}
    ## Get the OperationQueue.

proc getOperationQueue*(this: OperationThread): ptr Operationqueue   {.importcpp: "getOperationQueue".}
    ## Get the const OperationQueue.

proc add*(this: var OperationThread, operation: ptr Operation )  {.importcpp: "add".}
    ## Add operation to end of OperationQueue, this will be executed by the
    ## graphics thread once this operation gets to the head of the queue.

proc remove*(this: var OperationThread, operation: ptr Operation )  {.importcpp: "remove".}
    ## Remove operation from OperationQueue.

proc remove*(this: var OperationThread, name: String)  {.importcpp: "remove".}
    ## Remove named operation from OperationQueue.

proc removeAllOperations*(this: var OperationThread)  {.importcpp: "removeAllOperations".}
    ## Remove all operations from OperationQueue.

proc getCurrentOperation*(this: var OperationThread): Ref_ptr[Operation]  {.importcpp: "getCurrentOperation".}
    ## Get the operation currently being run.

proc run*(this: var OperationThread)  {.importcpp: "run".}
    ## Run does the opertion thread run loop.

proc setDone*(this: var OperationThread, done: bool)  {.importcpp: "setDone".}

proc getDone*(this: OperationThread): bool  {.importcpp: "getDone".}

proc cancel*(this: var OperationThread): cint  {.importcpp: "cancel".}
    ## Cancel this graphics thread.

{.pop.}  # header: "OperationThread"
