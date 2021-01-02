import osg_types
  # File: FrameStamp  was providing: osg::FrameStamp
type
  GraphicsObject* {.header: "GLObjects", importcpp: "osg::GraphicsObject", byref.} = object #of osg::Referenced

  GraphicsObjectManager* {.header: "GLObjects", importcpp: "osg::GraphicsObjectManager", byref.} = object #of osg::Referenced

  GLObjectManager* {.header: "GLObjects", importcpp: "osg::GLObjectManager", byref.} = object #of class osg::GraphicsObjectManager

  GLObjectHandleList* {.header: "GLObjects", importcpp: "osg::GLObjectManager::GLObjectHandleList".} = cint


{.push header: "GLObjects".}

proc constructGraphicsObject*(): GraphicsObject {.constructor,importcpp: "osg::GraphicsObject::GraphicsObject".}

proc constructGraphicsObjectManager*(name: string, contextID: cuint): GraphicsObjectManager {.constructor,importcpp: "osg::GraphicsObjectManager::GraphicsObjectManager(@)".}

proc constructGLObjectManager*(name: string, contextID: cuint): GLObjectManager {.constructor,importcpp: "osg::GLObjectManager::GLObjectManager(@)".}

proc getContextID*(this: GraphicsObjectManager): cuint  {.importcpp: "getContextID".}

proc newFrame*(this: var GraphicsObjectManager, a00: ptr FrameStamp )  {.importcpp: "newFrame".}
    ## Signal that a new frame has started.

proc resetStats*(this: var GraphicsObjectManager)  {.importcpp: "resetStats".}

proc reportStats*(this: var GraphicsObjectManager, a00: ostream)  {.importcpp: "reportStats".}

proc recomputeStats*(this: GraphicsObjectManager, a00: ostream)  {.importcpp: "recomputeStats".}

proc flushDeletedGLObjects*(this: var GraphicsObjectManager, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLObjects".}
    ## Flush all deleted OpenGL objects within the specified availableTime.
    ## Note, must be called from a thread which has current the graphics
    ## context associated with contextID.

proc flushAllDeletedGLObjects*(this: var GraphicsObjectManager)  {.importcpp: "flushAllDeletedGLObjects".}
    ## Flush all deleted OpenGL objects. Note, must be called from a thread
    ## which has current the graphics context associated with contextID.

proc deleteAllGLObjects*(this: var GraphicsObjectManager)  {.importcpp: "deleteAllGLObjects".}
    ## Do a GL delete all OpenGL objects. Note, must be called from a thread
    ## which has current the graphics context associated with contextID.

proc discardAllGLObjects*(this: var GraphicsObjectManager)  {.importcpp: "discardAllGLObjects".}
    ## Discard all OpenGL objects. Note, unlike deleteAllGLjects discard does
    ## not do any OpenGL calls so can be called from any thread, but as a
    ## consequence it also doesn't remove the associated OpenGL resource so
    ## discard should only be called when the associated graphics context is
    ## being/has been closed.

proc flushDeletedGLObjects*(this: var GLObjectManager, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLObjects".}

proc flushAllDeletedGLObjects*(this: var GLObjectManager)  {.importcpp: "flushAllDeletedGLObjects".}

proc deleteAllGLObjects*(this: var GLObjectManager)  {.importcpp: "deleteAllGLObjects".}

proc discardAllGLObjects*(this: var GLObjectManager)  {.importcpp: "discardAllGLObjects".}

proc scheduleGLObjectForDeletion*(this: var GLObjectManager, globj: GLuint)  {.importcpp: "scheduleGLObjectForDeletion".}
    ## schedule a GL object for deletion by the graphics thread.

proc createGLObject*(this: var GLObjectManager): GLuint  {.importcpp: "createGLObject".}
    ## implementation of the actual creation of an GL object - subclasses
    ## from GLObjectManager must implement the appropriate GL calls.

proc deleteGLObject*(this: var GLObjectManager, globj: GLuint)  {.importcpp: "deleteGLObject".}
    ## implementation of the actual deletion of an GL object - subclasses
    ## from GLObjectManager must implement the appropriate GL calls.

{.pop.}  # header: "GLObjects"
