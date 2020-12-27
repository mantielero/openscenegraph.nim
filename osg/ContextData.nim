import GraphicsContext  # provides: osg::GraphicsContext
import FrameStamp  # provides: osg::FrameStamp
type
  ContextData* {.header: "ContextData", importcpp: "osg::ContextData", byref.} = object #of class osg::GraphicsObjectManager

  GraphicsContexts* {.header: "ContextData", importcpp: "osg::ContextData::GraphicsContexts".} = Graphicscontexts
  ManagerMap* {.header: "ContextData", importcpp: "osg::ContextData::ManagerMap".} = cint


{.push header: "ContextData".}

proc constructContextData*(contextID: cuint): ContextData {.constructor,importcpp: "osg::ContextData::ContextData(@)".}

proc incrementUsageCount*(this: var ContextData)  {.importcpp: "incrementUsageCount".}

proc decrementUsageCount*(this: var ContextData)  {.importcpp: "decrementUsageCount".}

proc setNumContexts*(this: var ContextData, numContexts: cuint)  {.importcpp: "setNumContexts".}

proc getNumContexts*(this: ContextData): cuint  {.importcpp: "getNumContexts".}

proc setCompileContext*(this: var ContextData, gc: ptr Graphicscontext )  {.importcpp: "setCompileContext".}

proc getCompileContext*(this: var ContextData): ptr Graphicscontext   {.importcpp: "getCompileContext".}

proc newFrame*(this: var ContextData, ptr Framestamp )  {.importcpp: "newFrame".}
    ## Signal that a new frame has started.

proc resetStats*(this: var ContextData)  {.importcpp: "resetStats".}

proc reportStats*(this: var ContextData, `out`: Ostream)  {.importcpp: "reportStats".}

proc recomputeStats*(this: ContextData, `out`: Ostream)  {.importcpp: "recomputeStats".}

proc flushDeletedGLObjects*(this: var ContextData, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLObjects".}
    ## Flush all deleted OpenGL objects within the specified availableTime.
    ## Note, must be called from a thread which has current the graphics
    ## context associated with contextID.

proc flushAllDeletedGLObjects*(this: var ContextData)  {.importcpp: "flushAllDeletedGLObjects".}
    ## Flush all deleted OpenGL objects. Note, must be called from a thread
    ## which has current the graphics context associated with contextID.

proc deleteAllGLObjects*(this: var ContextData)  {.importcpp: "deleteAllGLObjects".}
    ## Do a GL delete all OpenGL objects. Note, must be called from a thread
    ## which has current the graphics context associated with contextID.

proc discardAllGLObjects*(this: var ContextData)  {.importcpp: "discardAllGLObjects".}
    ## Discard all OpenGL objects. Note, unlike deleteAllGLjects discard does
    ## not do any OpenGL calls so can be called from any thread, but as a
    ## consequence it also doesn't remove the associated OpenGL resource so
    ## discard should only be called when the associated graphics context is
    ## being/has been closed.

proc createNewContextID*(this: var ContextData): cuint  {.importcpp: "createNewContextID".}
    ## Create a contextID for a new graphics context, this contextID is used
    ## to set up the osg::State associate with context. Automatically
    ## increments the usage count of the contextID to 1.

proc getMaxContextID*(this: var ContextData): cuint  {.importcpp: "getMaxContextID".}
    ## Get the current max ContextID.

proc incrementContextIDUsageCount*(this: var ContextData, contextID: cuint)  {.importcpp: "incrementContextIDUsageCount".}
    ## Increment the usage count associate with a contextID. The usage count
    ## specifies how many graphics contexts a specific contextID is shared
    ## between.

proc decrementContextIDUsageCount*(this: var ContextData, contextID: cuint)  {.importcpp: "decrementContextIDUsageCount".}
    ## Decrement the usage count associate with a contextID. Once the
    ## contextID goes to 0 the contextID is then free to be reused.

proc getAllRegisteredGraphicsContexts*(this: var ContextData): Graphicscontexts  {.importcpp: "getAllRegisteredGraphicsContexts".}
    ## Get all the registered graphics contexts.

proc getRegisteredGraphicsContexts*(this: var ContextData, contextID: cuint): Graphicscontexts  {.importcpp: "getRegisteredGraphicsContexts".}
    ## Get all the registered graphics contexts associated with a specific
    ## contextID.

proc setCompileContext*(this: var ContextData, contextID: cuint, gc: ptr Graphicscontext )  {.importcpp: "setCompileContext".}
    ## Get the GraphicsContext for doing background compilation for
    ## GraphicsContexts associated with specified contextID.

proc getOrCreateCompileContext*(this: var ContextData, contextID: cuint): ptr Graphicscontext   {.importcpp: "getOrCreateCompileContext".}
    ## Get existing or create a new GraphicsContext to do background
    ## compilation for GraphicsContexts associated with specified contextID.

proc getCompileContext*(this: var ContextData, contextID: cuint): ptr Graphicscontext   {.importcpp: "getCompileContext".}
    ## Get the GraphicsContext for doing background compilation for
    ## GraphicsContexts associated with specified contextID.

proc registerGraphicsContext*(this: var ContextData, gc: ptr Graphicscontext )  {.importcpp: "registerGraphicsContext".}
    ## Register a GraphicsContext.

proc unregisterGraphicsContext*(this: var ContextData, gc: ptr Graphicscontext )  {.importcpp: "unregisterGraphicsContext".}
    ## Unregister a GraphicsContext.

{.pop.}  # header: "ContextData"
