import State  # provides: osg::State
import Vec4  # provides: osg::Vec4
import Camera  # provides: osg::Camera
import Object  # provides: osg::Object
import OperationThread  # provides: osg::RefBlock, osg::Operation
import CopyOp  # provides: osg::CopyOp
import GraphicsThread  # provides: osg::GraphicsThread
import DisplaySettings  # provides: osg::DisplaySettings
type
  WindowingSystemInterfaces* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::WindowingSystemInterfaces", byref.} = object #of osg::Referenced

  SyncSwapBuffersCallback* {.header: "GraphicsContext", importcpp: "osg::SyncSwapBuffersCallback", byref.} = object #of class GraphicsContext::SwapCallback

  WindowingSystemInterfaceProxy* {.header: "GraphicsContext", importcpp: "osg::WindowingSystemInterfaceProxy", byref.} [T]= object

  ScreenSettingsList* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::ScreenSettingsList".} = cint
  Interfaces* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::WindowingSystemInterfaces::Interfaces".} = cint
  GraphicsContexts* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::GraphicsContexts".} = cint
  GraphicsOperationQueue* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::GraphicsOperationQueue".} = cint
  Cameras* {.header: "GraphicsContext", importcpp: "osg::GraphicsContext::Cameras".} = cint


{.push header: "GraphicsContext".}

proc constructScreenIdentifier*(): ScreenIdentifier {.constructor,importcpp: "osg::GraphicsContext::ScreenIdentifier::ScreenIdentifier".}

proc constructScreenIdentifier*(in_screenNum: cint): ScreenIdentifier {.constructor,importcpp: "osg::GraphicsContext::ScreenIdentifier::ScreenIdentifier(@)".}

proc constructScreenIdentifier*(in_hostName: String, in_displayNum: cint, in_screenNum: cint): ScreenIdentifier {.constructor,importcpp: "osg::GraphicsContext::ScreenIdentifier::ScreenIdentifier(@)".}

proc constructTraits*(ds: ptr Displaysettings  = 0): Traits {.constructor,importcpp: "osg::GraphicsContext::Traits::Traits(@)".}

proc constructScreenSettings*(): ScreenSettings {.constructor,importcpp: "osg::GraphicsContext::ScreenSettings::ScreenSettings".}

proc constructScreenSettings*(in_width: cint, in_height: cint, in_refreshRate: cdouble = 0, in_colorDepth: cuint = 0): ScreenSettings {.constructor,importcpp: "osg::GraphicsContext::ScreenSettings::ScreenSettings(@)".}

proc constructWindowingSystemInterface*(): WindowingSystemInterface {.constructor,importcpp: "osg::GraphicsContext::WindowingSystemInterface::WindowingSystemInterface".}

proc constructWindowingSystemInterfaces*(): WindowingSystemInterfaces {.constructor,importcpp: "osg::GraphicsContext::WindowingSystemInterfaces::WindowingSystemInterfaces".}

proc constructGraphicsContext*(): GraphicsContext {.constructor,importcpp: "osg::GraphicsContext::GraphicsContext".}

proc constructGraphicsContext*(Graphicscontext, Copyop): GraphicsContext {.constructor,importcpp: "osg::GraphicsContext::GraphicsContext(@)".}

proc constructSyncSwapBuffersCallback*(): SyncSwapBuffersCallback {.constructor,importcpp: "osg::SyncSwapBuffersCallback::SyncSwapBuffersCallback".}

proc constructWindowingSystemInterfaceProxy*[T](name: String): WindowingSystemInterfaceProxy {.constructor,importcpp: "osg::WindowingSystemInterfaceProxy::WindowingSystemInterfaceProxy<T>(@)".}

proc displayName*(this: ScreenIdentifier): String  {.importcpp: "displayName".}
    ## Return the display name in the form hostName::displayNum:screenNum.

proc readDISPLAY*(this: var ScreenIdentifier)  {.importcpp: "readDISPLAY".}
    ## Read the DISPLAY environmental variable, and set the ScreenIdentifier
    ## accordingly. Note, if either of displayNum or screenNum are not
    ## defined then -1 is set respectively to signify that this parameter has
    ## not been set. When parameters are undefined one can call call
    ## setUndefinedScreenDetailsToDefaultScreen() after readDISPLAY() to
    ## ensure valid values.

proc setScreenIdentifier*(this: var ScreenIdentifier, displayName: String)  {.importcpp: "setScreenIdentifier".}
    ## Set the screenIndentifier from the displayName string. Note, if either
    ## of displayNum or screenNum are not defined then -1 is set to signify
    ## that this parameter has not been set. When parameters are undefined
    ## one can call call setUndefinedScreenDetailsToDefaultScreen() after
    ## readDISPLAY() to ensure valid values.

proc setUndefinedScreenDetailsToDefaultScreen*(this: var ScreenIdentifier)  {.importcpp: "setUndefinedScreenDetailsToDefaultScreen".}
    ## Set any undefined displayNum or screenNum values (i.e. -1) to the
    ## default display & screen of 0 respectively.

proc getContextVersion*(this: Traits, major: cuint, minor: cuint): bool  {.importcpp: "getContextVersion".}
    ## return true if glContextVersion is set in the form major.minor, and
    ## assign the appropriate major and minor values to the associated
    ## parameters.

proc setName*(this: var WindowingSystemInterface, name: String)  {.importcpp: "setName".}

proc getName*(this: WindowingSystemInterface): String  {.importcpp: "getName".}

proc getNumScreens*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier = )): cuint  {.importcpp: "getNumScreens".}

proc getScreenSettings*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier, resolution: Screensettings)  {.importcpp: "getScreenSettings".}

proc setScreenSettings*(this: var WindowingSystemInterface, Screenidentifier, Screensettings): bool  {.importcpp: "setScreenSettings".}

proc enumerateScreenSettings*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier, resolutionList: Screensettingslist)  {.importcpp: "enumerateScreenSettings".}

proc setDisplaySettings*(this: var WindowingSystemInterface, ptr Displaysettings )  {.importcpp: "setDisplaySettings".}

proc getDisplaySettings*(this: WindowingSystemInterface): ptr Displaysettings   {.importcpp: "getDisplaySettings".}

proc createGraphicsContext*(this: var WindowingSystemInterface, traits: ptr Traits ): ptr Graphicscontext   {.importcpp: "createGraphicsContext".}

proc getScreenResolution*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier, width: cuint, height: cuint)  {.importcpp: "getScreenResolution".}
    ## Gets screen resolution without using the ScreenResolution structure.

proc setScreenResolution*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier, width: cuint, height: cuint): bool  {.importcpp: "setScreenResolution".}
    ## Sets screen resolution without using the ScreenSettings structure.

proc setScreenRefreshRate*(this: var WindowingSystemInterface, screenIdentifier: Screenidentifier, refreshRate: cdouble): bool  {.importcpp: "setScreenRefreshRate".}
    ## 

proc getInterfaces*(this: var WindowingSystemInterfaces): Interfaces  {.importcpp: "getInterfaces".}

proc addWindowingSystemInterface*(this: var WindowingSystemInterfaces, wsInterface: ptr Windowingsysteminterface )  {.importcpp: "addWindowingSystemInterface".}

proc removeWindowingSystemInterface*(this: var WindowingSystemInterfaces, wsInterface: ptr Windowingsysteminterface )  {.importcpp: "removeWindowingSystemInterface".}

proc getWindowingSystemInterface*(this: var WindowingSystemInterfaces, name: String): ptr Windowingsysteminterface   {.importcpp: "getWindowingSystemInterface".}
    ## get named WindowingSystemInterface if one is available, otherwise
    ## return 0;

proc getWindowingSystemInterfaces*(this: var GraphicsContext): Ref_ptr[WindowingSystemInterfaces]  {.importcpp: "getWindowingSystemInterfaces".}

proc getWindowingSystemInterface*(this: var GraphicsContext, name: String): ptr Windowingsysteminterface   {.importcpp: "getWindowingSystemInterface".}
    ## Get the default WindowingSystemInterface for this OS

proc createGraphicsContext*(this: var GraphicsContext, traits: ptr Traits ): ptr Graphicscontext   {.importcpp: "createGraphicsContext".}
    ## Create a graphics context for a specified set of traits.

proc createNewContextID*(this: var GraphicsContext): cuint  {.importcpp: "createNewContextID".}
    ## Create a contextID for a new graphics context, this contextID is used
    ## to set up the osg::State associate with context. Automatically
    ## increments the usage count of the contextID to 1.

proc getMaxContextID*(this: var GraphicsContext): cuint  {.importcpp: "getMaxContextID".}
    ## Get the current max ContextID.

proc incrementContextIDUsageCount*(this: var GraphicsContext, contextID: cuint)  {.importcpp: "incrementContextIDUsageCount".}
    ## Increment the usage count associate with a contextID. The usage count
    ## specifies how many graphics contexts a specific contextID is shared
    ## between.

proc decrementContextIDUsageCount*(this: var GraphicsContext, contextID: cuint)  {.importcpp: "decrementContextIDUsageCount".}
    ## Decrement the usage count associate with a contextID. Once the
    ## contextID goes to 0 the contextID is then free to be reused.

proc getAllRegisteredGraphicsContexts*(this: var GraphicsContext): Graphicscontexts  {.importcpp: "getAllRegisteredGraphicsContexts".}
    ## Get all the registered graphics contexts.

proc getRegisteredGraphicsContexts*(this: var GraphicsContext, contextID: cuint): Graphicscontexts  {.importcpp: "getRegisteredGraphicsContexts".}
    ## Get all the registered graphics contexts associated with a specific
    ## contextID.

proc setCompileContext*(this: var GraphicsContext, contextID: cuint, gc: ptr Graphicscontext )  {.importcpp: "setCompileContext".}
    ## Get the GraphicsContext for doing background compilation for
    ## GraphicsContexts associated with specified contextID.

proc getOrCreateCompileContext*(this: var GraphicsContext, contextID: cuint): ptr Graphicscontext   {.importcpp: "getOrCreateCompileContext".}
    ## Get existing or create a new GraphicsContext to do background
    ## compilation for GraphicsContexts associated with specified contextID.

proc getCompileContext*(this: var GraphicsContext, contextID: cuint): ptr Graphicscontext   {.importcpp: "getCompileContext".}
    ## Get the GraphicsContext for doing background compilation for
    ## GraphicsContexts associated with specified contextID.

proc add*(this: var GraphicsContext, operation: ptr Operation )  {.importcpp: "add".}
    ## Add operation to end of OperationQueue.

proc remove*(this: var GraphicsContext, operation: ptr Operation )  {.importcpp: "remove".}
    ## Remove operation from OperationQueue.

proc remove*(this: var GraphicsContext, name: String)  {.importcpp: "remove".}
    ## Remove named operation from OperationQueue.

proc removeAllOperations*(this: var GraphicsContext)  {.importcpp: "removeAllOperations".}
    ## Remove all operations from OperationQueue.

proc runOperations*(this: var GraphicsContext)  {.importcpp: "runOperations".}
    ## Run the operations.

proc getOperationsQueue*(this: var GraphicsContext): Graphicsoperationqueue  {.importcpp: "getOperationsQueue".}
    ## Get the operations queue, note you must use the OperationsMutex when
    ## accessing the queue.

proc getOperationsMutex*(this: var GraphicsContext): ptr Mutex   {.importcpp: "getOperationsMutex".}
    ## Get the operations queue mutex.

proc getOperationsBlock*(this: var GraphicsContext): ptr Refblock   {.importcpp: "getOperationsBlock".}
    ## Get the operations queue block used to mark an empty queue, if you end
    ## items into the empty queue you must release this block.

proc getCurrentOperation*(this: var GraphicsContext): ptr Operation   {.importcpp: "getCurrentOperation".}
    ## Get the current operations that is being run.

proc getTraits*(this: GraphicsContext): ptr Traits   {.importcpp: "getTraits".}
    ## Get the traits of the GraphicsContext.

proc valid*(this: GraphicsContext): bool  {.importcpp: "valid".}
    ## Return whether a valid and usable GraphicsContext has been created.

proc setState*(this: var GraphicsContext, state: ptr State )  {.importcpp: "setState".}
    ## Set the State object which tracks the current OpenGL state for this
    ## graphics context.

proc getState*(this: var GraphicsContext): ptr State   {.importcpp: "getState".}
    ## Get the State object which tracks the current OpenGL state for this
    ## graphics context.

proc getState*(this: GraphicsContext): ptr State   {.importcpp: "getState".}
    ## Get the const State object which tracks the current OpenGL state for
    ## this graphics context.

proc setClearColor*(this: var GraphicsContext, color: Vec4)  {.importcpp: "setClearColor".}
    ## Sets the clear color.

proc getClearColor*(this: GraphicsContext): Vec4  {.importcpp: "getClearColor".}
    ## Returns the clear color.

proc setClearMask*(this: var GraphicsContext, mask: GLbitfield)  {.importcpp: "setClearMask".}
    ## Set the clear mask used in glClear(..). Defaults to 0 - so no clear is
    ## done by default by the GraphicsContext, instead the Cameras attached
    ## to the GraphicsContext will do the clear.
    ## GraphicsContext::setClearMask() is useful for when the Camera
    ## Viewports don't cover the whole context, so the context will fill in
    ## the gaps.

proc getClearMask*(this: GraphicsContext): GLbitfield  {.importcpp: "getClearMask".}
    ## Get the clear mask.

proc clear*(this: var GraphicsContext)  {.importcpp: "clear".}
    ## Do an OpenGL clear of the full graphics context/window. Note, must
    ## only be called from a thread with this context current.

proc getTimeSinceLastClear*(this: GraphicsContext): cdouble  {.importcpp: "getTimeSinceLastClear".}

proc realize*(this: var GraphicsContext): bool  {.importcpp: "realize".}
    ## Realize the GraphicsContext.

proc close*(this: var GraphicsContext, callCloseImplementation: bool)  {.importcpp: "close".}
    ## close the graphics context. close(bool) stops any associated graphics
    ## threads, releases the contextID for the GraphicsContext then optional
    ## calls closeImplementation() to do the actual deletion of the graphics.
    ## This call is made optional as there are times when the graphics
    ## context has already been deleted externally and only the OSG side of
    ## the its data need to be closed down.

proc swapBuffers*(this: var GraphicsContext)  {.importcpp: "swapBuffers".}
    ## swap the front and back buffers.

proc isRealized*(this: GraphicsContext): bool  {.importcpp: "isRealized".}
    ## Return true if the graphics context has been realized and is ready to
    ## use.

proc makeCurrent*(this: var GraphicsContext): bool  {.importcpp: "makeCurrent".}
    ## Make this graphics context current. Implemented by calling
    ## makeCurrentImplementation(). Returns true on success.

proc makeContextCurrent*(this: var GraphicsContext, readContext: ptr Graphicscontext ): bool  {.importcpp: "makeContextCurrent".}
    ## Make this graphics context current with specified read context.
    ## Implemented by calling makeContextCurrentImplementation(). Returns
    ## true on success.

proc releaseContext*(this: var GraphicsContext): bool  {.importcpp: "releaseContext".}
    ## Release the graphics context. Returns true on success.

proc isCurrent*(this: GraphicsContext): bool  {.importcpp: "isCurrent".}
    ## Return true if the current thread has this OpenGL graphics context.

proc bindPBufferToTexture*(this: var GraphicsContext, buffer: GLenum)  {.importcpp: "bindPBufferToTexture".}
    ## Bind the graphics context to associated texture.

proc createGraphicsThread*(this: var GraphicsContext)  {.importcpp: "createGraphicsThread".}
    ## Create a graphics thread to the graphics context, so that the thread
    ## handles all OpenGL operations.

proc setGraphicsThread*(this: var GraphicsContext, gt: ptr Graphicsthread )  {.importcpp: "setGraphicsThread".}
    ## Assign a graphics thread to the graphics context, so that the thread
    ## handles all OpenGL operations.

proc getGraphicsThread*(this: var GraphicsContext): ptr Graphicsthread   {.importcpp: "getGraphicsThread".}
    ## Get the graphics thread assigned the graphics context.

proc getGraphicsThread*(this: GraphicsContext): ptr Graphicsthread   {.importcpp: "getGraphicsThread".}
    ## Get the const graphics thread assigned the graphics context.

proc realizeImplementation*(this: var GraphicsContext): bool  {.importcpp: "realizeImplementation".}
    ## Realize the GraphicsContext implementation, Pure virtual - must be
    ## implemented by concrete implementations of GraphicsContext.

proc isRealizedImplementation*(this: GraphicsContext): bool  {.importcpp: "isRealizedImplementation".}
    ## Return true if the graphics context has been realized, and is ready to
    ## use, implementation. Pure virtual - must be implemented by concrete
    ## implementations of GraphicsContext.

proc closeImplementation*(this: var GraphicsContext)  {.importcpp: "closeImplementation".}
    ## Close the graphics context implementation. Pure virtual - must be
    ## implemented by concrete implementations of GraphicsContext.

proc makeCurrentImplementation*(this: var GraphicsContext): bool  {.importcpp: "makeCurrentImplementation".}
    ## Make this graphics context current implementation. Pure virtual - must
    ## be implemented by concrete implementations of GraphicsContext.

proc makeContextCurrentImplementation*(this: var GraphicsContext, readContext: ptr Graphicscontext ): bool  {.importcpp: "makeContextCurrentImplementation".}
    ## Make this graphics context current with specified read context
    ## implementation. Pure virtual - must be implemented by concrete
    ## implementations of GraphicsContext.

proc releaseContextImplementation*(this: var GraphicsContext): bool  {.importcpp: "releaseContextImplementation".}
    ## Release the graphics context implementation.

proc bindPBufferToTextureImplementation*(this: var GraphicsContext, buffer: GLenum)  {.importcpp: "bindPBufferToTextureImplementation".}
    ## Pure virtual, Bind the graphics context to associated texture
    ## implementation. Pure virtual - must be implemented by concrete
    ## implementations of GraphicsContext.

proc swapBuffersImplementation*(this: var SwapCallback, gc: ptr Graphicscontext )  {.importcpp: "swapBuffersImplementation".}

proc setSwapCallback*(this: var GraphicsContext, rc: ptr Swapcallback )  {.importcpp: "setSwapCallback".}
    ## Set the swap callback which overrides the
    ## GraphicsContext::swapBuffersImplementation(), allowing developers to
    ## provide custom behavior for swap. The callback must call
    ## GraphicsContext::swapBuffersImplementation()

proc getSwapCallback*(this: var GraphicsContext): ptr Swapcallback   {.importcpp: "getSwapCallback".}
    ## Get the swap callback which overrides the
    ## GraphicsContext::swapBuffersImplementation().

proc getSwapCallback*(this: GraphicsContext): ptr Swapcallback   {.importcpp: "getSwapCallback".}
    ## Get the const swap callback which overrides the
    ## GraphicsContext::swapBuffersImplementation().

proc swapBuffersCallbackOrImplementation*(this: var GraphicsContext)  {.importcpp: "swapBuffersCallbackOrImplementation".}
    ## Convenience method for handling whether to call swapbuffers callback
    ## or the standard context swapBuffersImplementation.
    ## swapBuffersCallbackOrImplementation() is called by swapBuffers() and
    ## osg::SwapBuffersOperation, end users should normally call
    ## swapBuffers() rather than swapBuffersCallbackOrImplementation().

proc swapBuffersImplementation*(this: var GraphicsContext)  {.importcpp: "swapBuffersImplementation".}
    ## Swap the front and back buffers implementation. Pure virtual - must be
    ## implemented by concrete implementations of GraphicsContext.

proc resized*(this: var GraphicsContext, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "resized".}
    ## resized method should be called when the underlying window has been
    ## resized and the GraphicsWindow and associated Cameras must be updated
    ## to keep in sync with the new size.

proc resizedImplementation*(this: var ResizedCallback, gc: ptr Graphicscontext , x: cint, y: cint, width: cint, height: cint)  {.importcpp: "resizedImplementation".}

proc setResizedCallback*(this: var GraphicsContext, rc: ptr Resizedcallback )  {.importcpp: "setResizedCallback".}
    ## Set the resized callback which overrides the
    ## GraphicsConext::realizedImplementation(), allow developers to provide
    ## custom behavior in response to a window being resized.

proc getResizedCallback*(this: var GraphicsContext): ptr Resizedcallback   {.importcpp: "getResizedCallback".}
    ## Get the resized callback which overrides the
    ## GraphicsConext::realizedImplementation().

proc getResizedCallback*(this: GraphicsContext): ptr Resizedcallback   {.importcpp: "getResizedCallback".}
    ## Get the const resized callback which overrides the
    ## GraphicsConext::realizedImplementation().

proc resizedImplementation*(this: var GraphicsContext, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "resizedImplementation".}
    ## resized implementation, by default resizes the viewports and aspect
    ## ratios the cameras associated with the graphics Window.

proc getCameras*(this: var GraphicsContext): Cameras  {.importcpp: "getCameras".}
    ## Get the list of cameras associated with this graphics context.

proc getCameras*(this: GraphicsContext): Cameras  {.importcpp: "getCameras".}
    ## Get the const list of cameras associated with this graphics context.

proc setDefaultFboId*(this: var GraphicsContext, i: GLuint)  {.importcpp: "setDefaultFboId".}
    ## set the default FBO-id, this id will be used when the rendering-
    ## backend is finished with RTT FBOs

proc getDefaultFboId*(this: GraphicsContext): GLuint  {.importcpp: "getDefaultFboId".}

proc isSameKindAs*(this: GraphicsContext, `object`: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: GraphicsContext): cstring  {.importcpp: "libraryName".}

proc className*(this: GraphicsContext): cstring  {.importcpp: "className".}

proc cloneType*(this: GraphicsContext): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: GraphicsContext, Copyop): ptr Object   {.importcpp: "clone".}

proc registerGraphicsContext*(this: var GraphicsContext, gc: ptr Graphicscontext )  {.importcpp: "registerGraphicsContext".}
    ## Register a GraphicsContext.

proc unregisterGraphicsContext*(this: var GraphicsContext, gc: ptr Graphicscontext )  {.importcpp: "unregisterGraphicsContext".}
    ## Unregister a GraphicsContext.

proc addCamera*(this: var GraphicsContext, camera: ptr Camera )  {.importcpp: "addCamera".}

proc removeCamera*(this: var GraphicsContext, camera: ptr Camera )  {.importcpp: "removeCamera".}

proc swapBuffersImplementation*(this: var SyncSwapBuffersCallback, gc: ptr Graphicscontext )  {.importcpp: "swapBuffersImplementation".}

{.pop.}  # header: "GraphicsContext"
