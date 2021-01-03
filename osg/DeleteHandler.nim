import osg_types
  # File: Referenced  was providing: osg::Referenced
type
  FrameNumberObjectPair* {.header: "DeleteHandler", importcpp: "osg::DeleteHandler::FrameNumberObjectPair".} = pair[cuint,ptr Referenced ]
  ObjectsToDeleteList* {.header: "DeleteHandler", importcpp: "osg::DeleteHandler::ObjectsToDeleteList".} = cint


{.push header: "DeleteHandler".}

proc constructDeleteHandler*(numberOfFramesToRetainObjects: cint): DeleteHandler {.constructor,importcpp: "osg::DeleteHandler::DeleteHandler(@)".}

proc constructDeleteHandler*(a00: DeleteHandler): DeleteHandler {.constructor,importcpp: "osg::DeleteHandler::DeleteHandler(@)".}

proc setNumFramesToRetainObjects*(this: var DeleteHandler, numberOfFramesToRetainObjects: cuint)  {.importcpp: "setNumFramesToRetainObjects".}
    ## Set the number of frames to retain objects that have been requested
    ## for deletion. When set to zero objects are deleted immediately, by
    ## setting to 1 they are kept around for an extra frame etc. The ability
    ## to retain objects for several frames is useful to prevent premature
    ## deletion when objects are still being used by graphics threads that
    ## use double buffering of rendering data structures with non ref_ptr<>
    ## pointers to scene graph elements.

proc getNumFramesToRetainObjects*(this: DeleteHandler): cuint  {.importcpp: "getNumFramesToRetainObjects".}

proc setFrameNumber*(this: var DeleteHandler, frameNumber: cuint)  {.importcpp: "setFrameNumber".}
    ## Set the current frame number so that subsequent deletes get tagged as
    ## associated with this frame.

proc getFrameNumber*(this: DeleteHandler): cuint  {.importcpp: "getFrameNumber".}
    ## Get the current frame number.

proc doDelete*(this: var DeleteHandler, `object`: ptr Referenced )  {.importcpp: "doDelete".}

proc flush*(this: var DeleteHandler)  {.importcpp: "flush".}
    ## Flush objects that are ready to be fully deleted.

proc flushAll*(this: var DeleteHandler)  {.importcpp: "flushAll".}
    ## Flush all objects that the DeleteHandler holds. Note, this should only
    ## be called if there are no threads running with non ref_ptr<> pointers,
    ## such as graphics threads.

proc requestDelete*(this: var DeleteHandler, `object`: ptr Referenced )  {.importcpp: "requestDelete".}
    ## Request the deletion of an object. Depending on users implementation
    ## of DeleteHandler, the delete of the object may occur straight away or
    ## be delayed until doDelete is called. The default implementation does a
    ## delete straight away.

{.pop.}  # header: "DeleteHandler"
