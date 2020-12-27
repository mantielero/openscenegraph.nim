import State  # provides: osg::State
import CullSettings  # provides: osg::CullSettings
import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import Matrixf  # provides: osg::Matrixf
import Stats  # provides: osg::Stats
import View  # provides: osg::View
import OperationThread  # provides: osg::OperationThread
import Image  # provides: osg::Image
import Viewport  # provides: osg::Viewport
import ColorMask  # provides: osg::ColorMask
import Vec3f  # provides: osg::Vec3f
import CopyOp  # provides: osg::CopyOp
import Matrix  # provides: osg::Matrix
import Matrixd  # provides: osg::Matrixd
import GraphicsContext  # provides: osg::GraphicsContext
import RenderInfo  # provides: osg::RenderInfo
import Vec3d  # provides: osg::Vec3d
import DisplaySettings  # provides: osg::DisplaySettings
import Texture  # provides: osg::Texture
import NodeVisitor  # provides: osg::NodeVisitor
type
  TransformOrder* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::TransformOrder".} = enum
    trnsfrmrdrPRE_MULTIPLY = 0,
    trnsfrmrdrPOST_MULTIPLY = 1

  ProjectionResizePolicy* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::ProjectionResizePolicy".} = enum
    prjctnrszplcyFIXED = 0,
      ## Keep the projection matrix fixed, despite window resizes.
    prjctnrszplcyHORIZONTAL = 1,
      ## Adjust the HORIZONTAL field of view on window resizes.
    prjctnrszplcyVERTICAL = 2
      ## Adjust the VERTICAL field of view on window resizes.

  RenderOrder* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::RenderOrder".} = enum
    rndrrdrPRE_RENDER = 0,
    rndrrdrNESTED_RENDER = 1,
    rndrrdrPOST_RENDER = 2

  RenderTargetImplementation* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::RenderTargetImplementation".} = enum
    rndrtrgtmplmnttnFRAME_BUFFER_OBJECT = 0,
    rndrtrgtmplmnttnPIXEL_BUFFER_RTT = 1,
    rndrtrgtmplmnttnPIXEL_BUFFER = 2,
    rndrtrgtmplmnttnFRAME_BUFFER = 3,
    rndrtrgtmplmnttnSEPARATE_WINDOW = 4

  BufferComponent* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::BufferComponent".} = enum
    bffrcmpnntDEPTH_BUFFER = 0,
    bffrcmpnntSTENCIL_BUFFER = 1,
    bffrcmpnntPACKED_DEPTH_STENCIL_BUFFER = 2,
    bffrcmpnntCOLOR_BUFFER = 3,
    bffrcmpnntCOLOR_BUFFER0 = 4,
    bffrcmpnntCOLOR_BUFFER1 = 5,
    bffrcmpnntCOLOR_BUFFER2 = 6,
    bffrcmpnntCOLOR_BUFFER3 = 7,
    bffrcmpnntCOLOR_BUFFER4 = 8,
    bffrcmpnntCOLOR_BUFFER5 = 9,
    bffrcmpnntCOLOR_BUFFER6 = 10,
    bffrcmpnntCOLOR_BUFFER7 = 11,
    bffrcmpnntCOLOR_BUFFER8 = 12,
    bffrcmpnntCOLOR_BUFFER9 = 13,
    bffrcmpnntCOLOR_BUFFER10 = 14,
    bffrcmpnntCOLOR_BUFFER11 = 15,
    bffrcmpnntCOLOR_BUFFER12 = 16,
    bffrcmpnntCOLOR_BUFFER13 = 17,
    bffrcmpnntCOLOR_BUFFER14 = 18,
    bffrcmpnntCOLOR_BUFFER15 = 19

  ResizeMask* {.size:sizeof(cuint),header: "Camera", importcpp: "osg::Camera::ResizeMask".} = enum
    rszmskRESIZE_VIEWPORT = 1,
    rszmskRESIZE_ATTACHMENTS = 2,
    rszmskRESIZE_DEFAULT = 3,
    rszmskRESIZE_PROJECTIONMATRIX = 4

  ImplicitBufferAttachment* {.size:sizeof(cint),header: "Camera", importcpp: "osg::Camera::ImplicitBufferAttachment".} = enum
    ## Explicit control over implicit allocation of buffers when using FBO.
    ## Implicit buffers are automatically substituted when user have not
    ## attached such buffer.

    mplctbffrttchmntUSE_DISPLAY_SETTINGS_MASK = -1,
    mplctbffrttchmntIMPLICIT_DEPTH_BUFFER_ATTACHMENT = 1,
    mplctbffrttchmntIMPLICIT_STENCIL_BUFFER_ATTACHMENT = 2,
    mplctbffrttchmntIMPLICIT_COLOR_BUFFER_ATTACHMENT = 4

  BufferAttachmentMap* {.header: "Camera", importcpp: "osg::Camera::BufferAttachmentMap".} = cint
  ImplicitBufferAttachmentMask* {.header: "Camera", importcpp: "osg::Camera::ImplicitBufferAttachmentMask".} = cint


{.push header: "Camera".}

proc constructCamera*(): Camera {.constructor,importcpp: "osg::Camera::Camera".}

proc constructCamera*(Camera, copyop: Copyop = SHALLOW_COPY): Camera {.constructor,importcpp: "osg::Camera::Camera(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructAttachment*(): Attachment {.constructor,importcpp: "osg::Camera::Attachment::Attachment".}

proc constructDrawCallback*(): DrawCallback {.constructor,importcpp: "osg::Camera::DrawCallback::DrawCallback".}

proc constructDrawCallback*(org: Drawcallback, copyop: Copyop): DrawCallback {.constructor,importcpp: "osg::Camera::DrawCallback::DrawCallback(@)".}

proc cloneType*(this: Camera): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Camera, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Camera, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Camera): cstring  {.importcpp: "className".}

proc libraryName*(this: Camera): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Camera, nv: Nodevisitor)  {.importcpp: "accept".}

proc asCamera*(this: var Camera): ptr Camera   {.importcpp: "asCamera".}

proc asCamera*(this: Camera): ptr Camera   {.importcpp: "asCamera".}

proc setView*(this: var Camera, view: ptr View )  {.importcpp: "setView".}
    ## Set the View that this Camera is part of.

proc getView*(this: var Camera): ptr View   {.importcpp: "getView".}
    ## Get the View that this Camera is part of.

proc getView*(this: Camera): ptr View   {.importcpp: "getView".}
    ## Get the const View that this Camera is part of.

proc setStats*(this: var Camera, stats: ptr Stats )  {.importcpp: "setStats".}
    ## Set the Stats object used to collect various frame related timing and
    ## scene graph stats.

proc getStats*(this: var Camera): ptr Stats   {.importcpp: "getStats".}
    ## Get the Stats object.

proc getStats*(this: Camera): ptr Stats   {.importcpp: "getStats".}
    ## Get the const Stats object.

proc setAllowEventFocus*(this: var Camera, focus: bool)  {.importcpp: "setAllowEventFocus".}
    ## Set whether this camera allows events to be generated by the
    ## associated graphics window to be associated with this camera.

proc getAllowEventFocus*(this: Camera): bool  {.importcpp: "getAllowEventFocus".}
    ## Get whether this camera allows events to be generated by the
    ## associated graphics window to be associated with this camera.

proc setDisplaySettings*(this: var Camera, ds: ptr Displaysettings )  {.importcpp: "setDisplaySettings".}
    ## Set the DisplaySettings object associated with this view.

proc getDisplaySettings*(this: var Camera): ptr Displaysettings   {.importcpp: "getDisplaySettings".}
    ## Get the DisplaySettings object associated with this view.

proc getDisplaySettings*(this: Camera): ptr Displaysettings   {.importcpp: "getDisplaySettings".}
    ## Get the const DisplaySettings object associated with this view.

proc setClearMask*(this: var Camera, mask: GLbitfield)  {.importcpp: "setClearMask".}
    ## Set the clear mask used in glClear(). Defaults to GL_COLOR_BUFFER_BIT
    ## | GL_DEPTH_BUFFER_BIT.

proc getClearMask*(this: Camera): GLbitfield  {.importcpp: "getClearMask".}
    ## Get the clear mask.

proc setClearColor*(this: var Camera, color: Vec4)  {.importcpp: "setClearColor".}
    ## Set the clear color used in glClearColor(). glClearColor is only
    ## called if mask & GL_COLOR_BUFFER_BIT is true

proc getClearColor*(this: Camera): Vec4  {.importcpp: "getClearColor".}
    ## Get the clear color.

proc setClearAccum*(this: var Camera, color: Vec4)  {.importcpp: "setClearAccum".}
    ## Set the clear accum used in glClearAccum(). glClearAcumm is only
    ## called if mask & GL_ACCUM_BUFFER_BIT is true.

proc getClearAccum*(this: Camera): Vec4  {.importcpp: "getClearAccum".}
    ## Get the clear accum value.

proc setClearDepth*(this: var Camera, depth: cdouble)  {.importcpp: "setClearDepth".}
    ## Set the clear depth used in glClearDepth(). Defaults to 1.0
    ## glClearDepth is only called if mask & GL_DEPTH_BUFFER_BIT is true.

proc getClearDepth*(this: Camera): cdouble  {.importcpp: "getClearDepth".}
    ## Get the clear depth value.

proc setClearStencil*(this: var Camera, stencil: cint)  {.importcpp: "setClearStencil".}
    ## Set the clear stencil value used in glClearStencil(). Defaults to 0;
    ## glClearStencil is only called if mask & GL_STENCIL_BUFFER_BIT is true

proc getClearStencil*(this: Camera): cint  {.importcpp: "getClearStencil".}
    ## Get the clear stencil value.

proc setColorMask*(this: var Camera, colorMask: ptr Colormask )  {.importcpp: "setColorMask".}
    ## Set the color mask of the camera to use specified osg::ColorMask.

proc setColorMask*(this: var Camera, red: bool, green: bool, blue: bool, alpha: bool)  {.importcpp: "setColorMask".}
    ## Set the color mask of the camera to specified values.

proc getColorMask*(this: Camera): ptr Colormask   {.importcpp: "getColorMask".}
    ## Get the const ColorMask.

proc getColorMask*(this: var Camera): ptr Colormask   {.importcpp: "getColorMask".}
    ## Get the ColorMask.

proc setViewport*(this: var Camera, viewport: ptr Viewport )  {.importcpp: "setViewport".}
    ## Set the viewport of the camera to use specified osg::Viewport.

proc setViewport*(this: var Camera, x: cint, y: cint, width: cint, height: cint)  {.importcpp: "setViewport".}
    ## Set the viewport of the camera to specified dimensions.

proc getViewport*(this: Camera): ptr Viewport   {.importcpp: "getViewport".}
    ## Get the const viewport.

proc getViewport*(this: var Camera): ptr Viewport   {.importcpp: "getViewport".}
    ## Get the viewport.

proc setTransformOrder*(this: var Camera, order: Transformorder)  {.importcpp: "setTransformOrder".}
    ## Set the transformation order for world-to-local and local-to-world
    ## transformation.

proc getTransformOrder*(this: Camera): Transformorder  {.importcpp: "getTransformOrder".}
    ## Get the transformation order.

proc setProjectionResizePolicy*(this: var Camera, policy: Projectionresizepolicy)  {.importcpp: "setProjectionResizePolicy".}
    ## Set the policy used to determine if and how the projection matrix
    ## should be adjusted on window resizes.

proc getProjectionResizePolicy*(this: Camera): Projectionresizepolicy  {.importcpp: "getProjectionResizePolicy".}
    ## Get the policy used to determine if and how the projection matrix
    ## should be adjusted on window resizes.

proc setProjectionMatrix*(this: var Camera, matrix: Matrixf)  {.importcpp: "setProjectionMatrix".}
    ## Set the projection matrix. Can be thought of as setting the lens of a
    ## camera.

proc setProjectionMatrix*(this: var Camera, matrix: Matrixd)  {.importcpp: "setProjectionMatrix".}
    ## Set the projection matrix. Can be thought of as setting the lens of a
    ## camera.

proc setProjectionMatrixAsOrtho*(this: var Camera, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "setProjectionMatrixAsOrtho".}
    ## Set to an orthographic projection. See OpenGL glOrtho for
    ## documentation further details.

proc setProjectionMatrixAsOrtho2D*(this: var Camera, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble)  {.importcpp: "setProjectionMatrixAsOrtho2D".}
    ## Set to a 2D orthographic projection. See OpenGL glOrtho2D
    ## documentation for further details.

proc setProjectionMatrixAsFrustum*(this: var Camera, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "setProjectionMatrixAsFrustum".}
    ## Set to a perspective projection. See OpenGL glFrustum documentation
    ## for further details.

proc setProjectionMatrixAsPerspective*(this: var Camera, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble)  {.importcpp: "setProjectionMatrixAsPerspective".}
    ## Create a symmetrical perspective projection, See OpenGL gluPerspective
    ## documentation for further details. Aspect ratio is defined as
    ## width/height.

proc getProjectionMatrix*(this: var Camera): Matrixd  {.importcpp: "getProjectionMatrix".}
    ## Get the projection matrix.

proc getProjectionMatrix*(this: Camera): Matrixd  {.importcpp: "getProjectionMatrix".}
    ## Get the const projection matrix.

proc getProjectionMatrixAsOrtho*(this: Camera, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getProjectionMatrixAsOrtho".}
    ## Get the orthographic settings of the orthographic projection matrix.
    ## Returns false if matrix is not an orthographic matrix, where parameter
    ## values are undefined.

proc getProjectionMatrixAsFrustum*(this: Camera, left: cdouble, right: cdouble, bottom: cdouble, top: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getProjectionMatrixAsFrustum".}
    ## Get the frustum setting of a perspective projection matrix. Returns
    ## false if matrix is not a perspective matrix, where parameter values
    ## are undefined.

proc getProjectionMatrixAsPerspective*(this: Camera, fovy: cdouble, aspectRatio: cdouble, zNear: cdouble, zFar: cdouble): bool  {.importcpp: "getProjectionMatrixAsPerspective".}
    ## Get the frustum setting of a symmetric perspective projection matrix.
    ## Returns false if matrix is not a perspective matrix, where parameter
    ## values are undefined. Note, if matrix is not a symmetric perspective
    ## matrix then the shear will be lost. Asymmetric matrices occur when
    ## stereo, power walls, caves and reality center display are used. In
    ## these configurations one should use the 'getProjectionMatrixAsFrustum'
    ## method instead.

proc setViewMatrix*(this: var Camera, matrix: Matrixf)  {.importcpp: "setViewMatrix".}
    ## Set the view matrix. Can be thought of as setting the position of the
    ## world relative to the camera in camera coordinates.

proc setViewMatrix*(this: var Camera, matrix: Matrixd)  {.importcpp: "setViewMatrix".}
    ## Set the view matrix. Can be thought of as setting the position of the
    ## world relative to the camera in camera coordinates.

proc getViewMatrix*(this: var Camera): Matrixd  {.importcpp: "getViewMatrix".}
    ## Get the view matrix.

proc getViewMatrix*(this: Camera): Matrixd  {.importcpp: "getViewMatrix".}
    ## Get the const view matrix.

proc setViewMatrixAsLookAt*(this: var Camera, eye: Vec3d, center: Vec3d, up: Vec3d)  {.importcpp: "setViewMatrixAsLookAt".}
    ## Set to the position and orientation of view matrix, using the same
    ## convention as gluLookAt.

proc getViewMatrixAsLookAt*(this: Camera, eye: Vec3d, center: Vec3d, up: Vec3d, lookDistance: cdouble)  {.importcpp: "getViewMatrixAsLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc getViewMatrixAsLookAt*(this: Camera, eye: Vec3f, center: Vec3f, up: Vec3f, lookDistance: cfloat)  {.importcpp: "getViewMatrixAsLookAt".}
    ## Get to the position and orientation of a modelview matrix, using the
    ## same convention as gluLookAt.

proc getInverseViewMatrix*(this: Camera): Matrixd  {.importcpp: "getInverseViewMatrix".}
    ## Get the inverse view matrix.

proc setRenderOrder*(this: var Camera, order: Renderorder, orderNum: cint)  {.importcpp: "setRenderOrder".}
    ## Set the rendering order of this camera's subgraph relative to any
    ## camera that this subgraph is nested within. For rendering to a
    ## texture, one typically uses PRE_RENDER. For Head Up Displays, one
    ## would typically use POST_RENDER.

proc getRenderOrder*(this: Camera): Renderorder  {.importcpp: "getRenderOrder".}
    ## Get the rendering order of this camera's subgraph relative to any
    ## camera that this subgraph is nested within.

proc getRenderOrderNum*(this: Camera): cint  {.importcpp: "getRenderOrderNum".}
    ## Get the rendering order number of this camera relative to any sibling
    ## cameras in this subgraph.

proc isRenderToTextureCamera*(this: Camera): bool  {.importcpp: "isRenderToTextureCamera".}
    ## Return true if this Camera is set up as a render to texture camera,
    ## i.e. it has textures assigned to it.

proc setRenderTargetImplementation*(this: var Camera, impl: Rendertargetimplementation)  {.importcpp: "setRenderTargetImplementation".}
    ## Set the render target.

proc setRenderTargetImplementation*(this: var Camera, impl: Rendertargetimplementation, fallback: Rendertargetimplementation)  {.importcpp: "setRenderTargetImplementation".}
    ## Set the render target and fall-back that's used if the former isn't
    ## available.

proc getRenderTargetImplementation*(this: Camera): Rendertargetimplementation  {.importcpp: "getRenderTargetImplementation".}
    ## Get the render target.

proc getRenderTargetFallback*(this: Camera): Rendertargetimplementation  {.importcpp: "getRenderTargetFallback".}
    ## Get the render target fallback.

proc setDrawBuffer*(this: var Camera, buffer: GLenum)  {.importcpp: "setDrawBuffer".}
    ## Set the draw buffer used at the start of each frame draw. Note, a
    ## buffer value of GL_NONE is used to specify that the rendering back-end
    ## should choose the most appropriate buffer.

proc getDrawBuffer*(this: Camera): GLenum  {.importcpp: "getDrawBuffer".}
    ## Get the draw buffer used at the start of each frame draw.

proc setReadBuffer*(this: var Camera, buffer: GLenum)  {.importcpp: "setReadBuffer".}
    ## Set the read buffer for any required copy operations to use. Note, a
    ## buffer value of GL_NONE is used to specify that the rendering back-end
    ## should choose the most appropriate buffer.

proc getReadBuffer*(this: Camera): GLenum  {.importcpp: "getReadBuffer".}
    ## Get the read buffer for any required copy operations to use.

proc attach*(this: var Camera, buffer: Buffercomponent, internalFormat: GLenum)  {.importcpp: "attach".}
    ## Attach a buffer with specified OpenGL internal format.

proc attach*(this: var Camera, buffer: Buffercomponent, texture: ptr Texture , level: cuint = 0, face: cuint = 0, mipMapGeneration: bool, multisampleSamples: cuint = 0, multisampleColorSamples: cuint = 0)  {.importcpp: "attach".}
    ## Attach a Texture to specified buffer component. The level parameter
    ## controls the mip map level of the texture that is attached. The face
    ## parameter controls the face of texture cube map or z level of 3d
    ## texture. The mipMapGeneration flag controls whether mipmap generation
    ## should be done for texture.

proc attach*(this: var Camera, buffer: Buffercomponent, image: ptr Image , multisampleSamples: cuint = 0, multisampleColorSamples: cuint = 0)  {.importcpp: "attach".}
    ## Attach a Image to specified buffer component.

proc detach*(this: var Camera, buffer: Buffercomponent)  {.importcpp: "detach".}
    ## Detach specified buffer component.

proc width*(this: Attachment): cint  {.importcpp: "width".}

proc height*(this: Attachment): cint  {.importcpp: "height".}

proc depth*(this: Attachment): cint  {.importcpp: "depth".}

proc getBufferAttachmentMap*(this: var Camera): Bufferattachmentmap  {.importcpp: "getBufferAttachmentMap".}
    ## Get the BufferAttachmentMap, used to configure frame buffer objects,
    ## pbuffers and texture reads.

proc getBufferAttachmentMap*(this: Camera): Bufferattachmentmap  {.importcpp: "getBufferAttachmentMap".}
    ## Get the const BufferAttachmentMap, used to configure frame buffer
    ## objects, pbuffers and texture reads.

proc dirtyAttachmentMap*(this: var Camera)  {.importcpp: "dirtyAttachmentMap".}
    ## Increment the _attachementMapModifiedCount so that the rendering
    ## backend will know that it needs to be updated to handle any new
    ## settings (such as format change/resizes.).

proc setAttachmentMapModifiedCount*(this: var Camera, v: cuint)  {.importcpp: "setAttachmentMapModifiedCount".}
    ## Set the AttachmentMapModifiedCount to a specific value. Note, normal
    ## usage you would simply call dirtyAttachmentMap().

proc getAttachmentMapModifiedCount*(this: Camera): cuint  {.importcpp: "getAttachmentMapModifiedCount".}
    ## Get the AttachmentMapModifiedCount.

proc resizeAttachments*(this: var Camera, width: cint, height: cint)  {.importcpp: "resizeAttachments".}
    ## Resize the image and textures in the AttachementMap.

proc resize*(this: var Camera, width: cint, height: cint, resizeMask: cint)  {.importcpp: "resize".}
    ## Resize, to the specified width and height, the viewport, attachments
    ## and projection matrix according to the resizeMask provided. Note, the
    ## adjustment of the projection matrix is done if the
    ## RESIZE_PROJECTIONMATRIX mask to set and according to the rules
    ## specified in the ProjectionResizePolicy.

proc setImplicitBufferAttachmentMask*(this: var Camera, renderMask: Implicitbufferattachmentmask, resolveMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentMask".}

proc setImplicitBufferAttachmentRenderMask*(this: var Camera, implicitBufferAttachmentRenderMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentRenderMask".}

proc setImplicitBufferAttachmentResolveMask*(this: var Camera, implicitBufferAttachmentResolveMask: Implicitbufferattachmentmask)  {.importcpp: "setImplicitBufferAttachmentResolveMask".}

proc getImplicitBufferAttachmentRenderMask*(this: Camera): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentRenderMask".}

proc getImplicitBufferAttachmentRenderMask*(this: Camera, effectiveMask: bool): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentRenderMask".}
    ## Get mask selecting implicit buffer attachments for Camera primary FBO
    ## if effectiveMask parameter is set, method follows
    ## USE_DISPLAY_SETTINGS_MASK dependence and returns effective mask if
    ## effectiveMask parameter is reset, method returns nominal mask set by
    ## the Camera

proc getImplicitBufferAttachmentResolveMask*(this: Camera): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentResolveMask".}

proc getImplicitBufferAttachmentResolveMask*(this: Camera, effectiveMask: bool): Implicitbufferattachmentmask  {.importcpp: "getImplicitBufferAttachmentResolveMask".}
    ## Get mask selecting implicit buffer attachments for Camera secondary
    ## MULTISAMPLE FBO if effectiveMask parameter is set, method follows
    ## USE_DISPLAY_SETTINGS_MASK dependence and returns effective mask if
    ## effectiveMask parameter is reset, method returns nominal mask set by
    ## the Camera

proc setProcessorAffinity*(this: var Camera, affinity: Affinity)  {.importcpp: "setProcessorAffinity".}
    ## Set the process affinity hint for any Camera Threads that are/will be
    ## assigned to this Camera.

proc getProcessorAffinity*(this: var Camera): Affinity  {.importcpp: "getProcessorAffinity".}

proc getProcessorAffinity*(this: Camera): Affinity  {.importcpp: "getProcessorAffinity".}

proc createCameraThread*(this: var Camera)  {.importcpp: "createCameraThread".}
    ## Create a operation thread for this camera.

proc setCameraThread*(this: var Camera, gt: ptr Operationthread )  {.importcpp: "setCameraThread".}
    ## Assign a operation thread to the camera.

proc getCameraThread*(this: var Camera): ptr Operationthread   {.importcpp: "getCameraThread".}
    ## Get the operation thread assigned to this camera.

proc getCameraThread*(this: Camera): ptr Operationthread   {.importcpp: "getCameraThread".}
    ## Get the const operation thread assigned to this camera.

proc setGraphicsContext*(this: var Camera, context: ptr Graphicscontext )  {.importcpp: "setGraphicsContext".}
    ## Set the GraphicsContext that provides the mechansim for managing the
    ## OpenGL graphics context associated with this camera.

proc getGraphicsContext*(this: var Camera): ptr Graphicscontext   {.importcpp: "getGraphicsContext".}
    ## Get the GraphicsContext.

proc getGraphicsContext*(this: Camera): ptr Graphicscontext   {.importcpp: "getGraphicsContext".}
    ## Get the const GraphicsContext.

proc setRenderer*(this: var Camera, rc: ptr Graphicsoperation )  {.importcpp: "setRenderer".}
    ## Set the Rendering object that is used to implement rendering of the
    ## subgraph.

proc getRenderer*(this: var Camera): ptr Graphicsoperation   {.importcpp: "getRenderer".}
    ## Get the Rendering object that is used to implement rendering of the
    ## subgraph.

proc getRenderer*(this: Camera): ptr Graphicsoperation   {.importcpp: "getRenderer".}
    ## Get the const Rendering object that is used to implement rendering of
    ## the subgraph.

proc setRenderingCache*(this: var Camera, rc: ptr Object )  {.importcpp: "setRenderingCache".}
    ## Set the Rendering cache that is used for cached objects associated
    ## with rendering of subgraphs.

proc getRenderingCache*(this: var Camera): ptr Object   {.importcpp: "getRenderingCache".}
    ## Get the Rendering cache that is used for cached objects associated
    ## with rendering of subgraphs.

proc getRenderingCache*(this: Camera): ptr Object   {.importcpp: "getRenderingCache".}
    ## Get the const Rendering cache that is used for cached objects
    ## associated with rendering of subgraphs.

proc cloneType*(this: DrawCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawCallback): cstring  {.importcpp: "className".}

proc run*(this: DrawCallback, renderInfo: Renderinfo)  {.importcpp: "run".}
    ## Functor method called by rendering thread to recursively launch
    ## operator() on _nestedcallback *

proc `()`*(this: DrawCallback, renderInfo: Renderinfo)  {.importcpp: "# () #".}
    ## Users will typically override this method to carry tasks such as
    ## screen capture or bufferobject readback. *

proc `()`*(this: DrawCallback, Camera)  {.importcpp: "# () #".}
    ## Functor method, provided for backwards compatibility, called by
    ## operator() (osg::RenderInfo& renderInfo) method.*

proc resizeGLObjectBuffers*(this: var DrawCallback, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: DrawCallback, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objexts for all graphics contexts.

proc setInitialDrawCallback*(this: var Camera, cb: ptr Drawcallback )  {.importcpp: "setInitialDrawCallback".}
    ## Set the initial draw callback for custom operations to be done before
    ## the drawing of the camera's subgraph and pre render stages.

proc getInitialDrawCallback*(this: var Camera): ptr Drawcallback   {.importcpp: "getInitialDrawCallback".}
    ## Get the initial draw callback.

proc getInitialDrawCallback*(this: Camera): ptr Drawcallback   {.importcpp: "getInitialDrawCallback".}
    ## Get the const initial draw callback.

proc addInitialDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "addInitialDrawCallback".}
    ## Convenience method that sets DrawCallback Initial callback of the node
    ## if it doesn't exist, or nest it into the existing one.

proc removeInitialDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "removeInitialDrawCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc setPreDrawCallback*(this: var Camera, cb: ptr Drawcallback )  {.importcpp: "setPreDrawCallback".}
    ## Set the pre draw callback for custom operations to be done before the
    ## drawing of the camera's subgraph but after any pre render stages have
    ## been completed.

proc getPreDrawCallback*(this: var Camera): ptr Drawcallback   {.importcpp: "getPreDrawCallback".}
    ## Get the pre draw callback.

proc getPreDrawCallback*(this: Camera): ptr Drawcallback   {.importcpp: "getPreDrawCallback".}
    ## Get the const pre draw callback.

proc addPreDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "addPreDrawCallback".}
    ## Convenience method that sets DrawCallback Initial callback of the node
    ## if it doesn't exist, or nest it into the existing one.

proc removePreDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "removePreDrawCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc setPostDrawCallback*(this: var Camera, cb: ptr Drawcallback )  {.importcpp: "setPostDrawCallback".}
    ## Set the post draw callback for custom operations to be done after the
    ## drawing of the camera's subgraph but before the any post render stages
    ## have been completed.

proc getPostDrawCallback*(this: var Camera): ptr Drawcallback   {.importcpp: "getPostDrawCallback".}
    ## Get the post draw callback.

proc getPostDrawCallback*(this: Camera): ptr Drawcallback   {.importcpp: "getPostDrawCallback".}
    ## Get the const post draw callback.

proc addPostDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "addPostDrawCallback".}
    ## Convenience method that sets DrawCallback Initial callback of the node
    ## if it doesn't exist, or nest it into the existing one.

proc removePostDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "removePostDrawCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc setFinalDrawCallback*(this: var Camera, cb: ptr Drawcallback )  {.importcpp: "setFinalDrawCallback".}
    ## Set the final draw callback for custom operations to be done after the
    ## drawing of the camera's subgraph and all of the post render stages has
    ## been completed.

proc getFinalDrawCallback*(this: var Camera): ptr Drawcallback   {.importcpp: "getFinalDrawCallback".}
    ## Get the final draw callback.

proc getFinalDrawCallback*(this: Camera): ptr Drawcallback   {.importcpp: "getFinalDrawCallback".}
    ## Get the const final draw callback.

proc addFinalDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "addFinalDrawCallback".}
    ## Convenience method that sets DrawCallback Initial callback of the node
    ## if it doesn't exist, or nest it into the existing one.

proc removeFinalDrawCallback*(this: var Camera, nc: ptr Drawcallback )  {.importcpp: "removeFinalDrawCallback".}
    ## Convenience method that removes a given callback from a node, even if
    ## that callback is nested. There is no error return in case the given
    ## callback is not found.

proc getDataChangeMutex*(this: Camera): ptr Mutex   {.importcpp: "getDataChangeMutex".}

proc resizeGLObjectBuffers*(this: var Camera, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Camera, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objexts for all graphics contexts.

proc computeLocalToWorldMatrix*(this: Camera, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}
    ## Transform method that must be defined to provide generic interface for
    ## scene graph traversals.

proc computeWorldToLocalMatrix*(this: Camera, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}
    ## Transform method that must be defined to provide generic interface for
    ## scene graph traversals.

proc inheritCullSettings*(this: var Camera, settings: Cullsettings, inheritanceMask: cuint)  {.importcpp: "inheritCullSettings".}
    ## Inherit the local cull settings variable from specified CullSettings
    ## object, according to the inheritance mask.

proc `()`*(this: CameraRenderOrderSortOp, lhs: ptr Camera , rhs: ptr Camera ): bool  {.importcpp: "# () #".}

{.pop.}  # header: "Camera"
