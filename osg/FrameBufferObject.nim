import State  # provides: osg::State
import GLExtensions  # provides: osg::GLExtensions
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
import Texture  # provides: osg::Texture
type
  BindTarget* {.size:sizeof(cuint),header: "FrameBufferObject", importcpp: "osg::FrameBufferObject::BindTarget".} = enum
    bndtrgtREAD_FRAMEBUFFER = 36008,
    bndtrgtDRAW_FRAMEBUFFER = 36009,
    bndtrgtREAD_DRAW_FRAMEBUFFER = 36160

  RenderBuffer* {.header: "FrameBufferObject", importcpp: "osg::RenderBuffer", byref.} = object #of class osg::Object
    ## **********************************************************************
    ## ** RenderBuffer ******************************************************
    ## ******************

  FrameBufferAttachment* {.header: "FrameBufferObject", importcpp: "osg::FrameBufferAttachment", byref.} = object

  FrameBufferObject* {.header: "FrameBufferObject", importcpp: "osg::FrameBufferObject", byref.} = object #of class osg::StateAttribute
    ## **********************************************************************
    ## ** FrameBufferObject *************************************************
    ## ***********************

  GLRenderBufferManager* {.header: "FrameBufferObject", importcpp: "osg::GLRenderBufferManager", byref.} = object #of class osg::GLObjectManager

  GLFrameBufferObjectManager* {.header: "FrameBufferObject", importcpp: "osg::GLFrameBufferObjectManager", byref.} = object #of class osg::GLObjectManager

  AttachmentMap* {.header: "FrameBufferObject", importcpp: "osg::FrameBufferObject::AttachmentMap".} = cint
  MultipleRenderingTargets* {.header: "FrameBufferObject", importcpp: "osg::FrameBufferObject::MultipleRenderingTargets".} = cint
  BufferComponent* {.header: "FrameBufferObject", importcpp: "osg::FrameBufferObject::BufferComponent".} = Buffercomponent


{.push header: "FrameBufferObject".}

proc constructRenderBuffer*(): RenderBuffer {.constructor,importcpp: "osg::RenderBuffer::RenderBuffer".}

proc constructRenderBuffer*(width: cint, height: cint, internalFormat: GLenum, samples: cint, colorSamples: cint): RenderBuffer {.constructor,importcpp: "osg::RenderBuffer::RenderBuffer(@)".}

proc constructRenderBuffer*(copy: Renderbuffer, copyop: Copyop = SHALLOW_COPY): RenderBuffer {.constructor,importcpp: "osg::RenderBuffer::RenderBuffer(@)".}

proc constructFrameBufferAttachment*(): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment".}

proc constructFrameBufferAttachment*(copy: Framebufferattachment): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Renderbuffer ): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texture1d , level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texture2d , level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texture2dmultisample , level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texture3d , zoffset: cuint, level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texture2darray , layer: cuint, level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texturecubemap , face: cuint, level: cuint = 0): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(target: ptr Texturerectangle ): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferAttachment*(attachment: Attachment): FrameBufferAttachment {.constructor,importcpp: "osg::FrameBufferAttachment::FrameBufferAttachment(@)".}

proc constructFrameBufferObject*(): FrameBufferObject {.constructor,importcpp: "osg::FrameBufferObject::FrameBufferObject".}

proc constructFrameBufferObject*(copy: Framebufferobject, copyop: Copyop = SHALLOW_COPY): FrameBufferObject {.constructor,importcpp: "osg::FrameBufferObject::FrameBufferObject(@)".}

proc constructGLRenderBufferManager*(contextID: cuint): GLRenderBufferManager {.constructor,importcpp: "osg::GLRenderBufferManager::GLRenderBufferManager(@)".}

proc constructGLFrameBufferObjectManager*(contextID: cuint): GLFrameBufferObjectManager {.constructor,importcpp: "osg::GLFrameBufferObjectManager::GLFrameBufferObjectManager(@)".}

proc cloneType*(this: RenderBuffer): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: RenderBuffer, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: RenderBuffer, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: RenderBuffer): cstring  {.importcpp: "libraryName".}

proc className*(this: RenderBuffer): cstring  {.importcpp: "className".}

proc getWidth*(this: RenderBuffer): cint  {.importcpp: "getWidth".}

proc getHeight*(this: RenderBuffer): cint  {.importcpp: "getHeight".}

proc setWidth*(this: var RenderBuffer, w: cint)  {.importcpp: "setWidth".}

proc setHeight*(this: var RenderBuffer, h: cint)  {.importcpp: "setHeight".}

proc setSize*(this: var RenderBuffer, w: cint, h: cint)  {.importcpp: "setSize".}

proc getInternalFormat*(this: RenderBuffer): GLenum  {.importcpp: "getInternalFormat".}

proc setInternalFormat*(this: var RenderBuffer, format: GLenum)  {.importcpp: "setInternalFormat".}

proc getSamples*(this: RenderBuffer): cint  {.importcpp: "getSamples".}

proc getColorSamples*(this: RenderBuffer): cint  {.importcpp: "getColorSamples".}

proc setSamples*(this: var RenderBuffer, samples: cint)  {.importcpp: "setSamples".}

proc setColorSamples*(this: var RenderBuffer, colorSamples: cint)  {.importcpp: "setColorSamples".}

proc getObjectID*(this: RenderBuffer, contextID: cuint, ext: ptr Glextensions ): GLuint  {.importcpp: "getObjectID".}

proc compare*(this: RenderBuffer, rb: Renderbuffer): cint  {.importcpp: "compare".}

proc getMaxSamples*(this: var RenderBuffer, contextID: cuint, ext: ptr Glextensions ): cint  {.importcpp: "getMaxSamples".}

proc resizeGLObjectBuffers*(this: var RenderBuffer, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: RenderBuffer, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objexts for all graphics contexts.

proc `=`*(this: var RenderBuffer, Renderbuffer): Renderbuffer  {.importcpp: "# = #".}

proc dirtyAll*(this: RenderBuffer)  {.importcpp: "dirtyAll".}

proc getWidth*(this: RenderBuffer): cint  {.importcpp: "getWidth".}

proc getHeight*(this: RenderBuffer): cint  {.importcpp: "getHeight".}

proc setWidth*(this: var RenderBuffer, w: cint)  {.importcpp: "setWidth".}

proc setHeight*(this: var RenderBuffer, h: cint)  {.importcpp: "setHeight".}

proc setSize*(this: var RenderBuffer, w: cint, h: cint)  {.importcpp: "setSize".}

proc getInternalFormat*(this: RenderBuffer): GLenum  {.importcpp: "getInternalFormat".}

proc setInternalFormat*(this: var RenderBuffer, format: GLenum)  {.importcpp: "setInternalFormat".}

proc getSamples*(this: RenderBuffer): cint  {.importcpp: "getSamples".}

proc getColorSamples*(this: RenderBuffer): cint  {.importcpp: "getColorSamples".}

proc setSamples*(this: var RenderBuffer, samples: cint)  {.importcpp: "setSamples".}

proc setColorSamples*(this: var RenderBuffer, colorSamples: cint)  {.importcpp: "setColorSamples".}

proc dirtyAll*(this: RenderBuffer)  {.importcpp: "dirtyAll".}

proc compare*(this: RenderBuffer, rb: Renderbuffer): cint  {.importcpp: "compare".}

proc `=`*(this: var FrameBufferAttachment, copy: Framebufferattachment): Framebufferattachment  {.importcpp: "# = #".}

proc isMultisample*(this: FrameBufferAttachment): bool  {.importcpp: "isMultisample".}

proc createRequiredTexturesAndApplyGenerateMipMap*(this: FrameBufferAttachment, state: State, ext: ptr Glextensions )  {.importcpp: "createRequiredTexturesAndApplyGenerateMipMap".}

proc attach*(this: FrameBufferAttachment, state: State, target: GLenum, attachment_point: GLenum, ext: ptr Glextensions )  {.importcpp: "attach".}

proc compare*(this: FrameBufferAttachment, fa: Framebufferattachment): cint  {.importcpp: "compare".}

proc getRenderBuffer*(this: var FrameBufferAttachment): ptr Renderbuffer   {.importcpp: "getRenderBuffer".}

proc getRenderBuffer*(this: FrameBufferAttachment): ptr Renderbuffer   {.importcpp: "getRenderBuffer".}

proc getTexture*(this: var FrameBufferAttachment): ptr Texture   {.importcpp: "getTexture".}

proc getTexture*(this: FrameBufferAttachment): ptr Texture   {.importcpp: "getTexture".}

proc getCubeMapFace*(this: FrameBufferAttachment): cuint  {.importcpp: "getCubeMapFace".}

proc getTextureLevel*(this: FrameBufferAttachment): cuint  {.importcpp: "getTextureLevel".}

proc getTexture3DZOffset*(this: FrameBufferAttachment): cuint  {.importcpp: "getTexture3DZOffset".}

proc getTextureArrayLayer*(this: FrameBufferAttachment): cuint  {.importcpp: "getTextureArrayLayer".}

proc resizeGLObjectBuffers*(this: var FrameBufferAttachment, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*(this: FrameBufferAttachment, ptr State  = 0)  {.importcpp: "releaseGLObjects".}

proc cloneType*(this: FrameBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: FrameBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: FrameBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: FrameBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: FrameBufferObject): cstring  {.importcpp: "className".}

proc getType*(this: FrameBufferObject): Type  {.importcpp: "getType".}

proc getAttachmentMap*(this: FrameBufferObject): Attachmentmap  {.importcpp: "getAttachmentMap".}

proc setAttachment*(this: var FrameBufferObject, attachment_point: Buffercomponent, attachment: Framebufferattachment)  {.importcpp: "setAttachment".}

proc getAttachment*(this: FrameBufferObject, attachment_point: Buffercomponent): Framebufferattachment  {.importcpp: "getAttachment".}

proc hasAttachment*(this: FrameBufferObject, attachment_point: Buffercomponent): bool  {.importcpp: "hasAttachment".}

proc hasMultipleRenderingTargets*(this: FrameBufferObject): bool  {.importcpp: "hasMultipleRenderingTargets".}

proc getMultipleRenderingTargets*(this: FrameBufferObject): Multiplerenderingtargets  {.importcpp: "getMultipleRenderingTargets".}

proc isMultisample*(this: FrameBufferObject): bool  {.importcpp: "isMultisample".}

proc compare*(this: FrameBufferObject, sa: Stateattribute): cint  {.importcpp: "compare".}

proc apply*(this: FrameBufferObject, state: State)  {.importcpp: "apply".}

proc getHandle*(this: FrameBufferObject, contextID: cuint): GLuint  {.importcpp: "getHandle".}

proc apply*(this: FrameBufferObject, state: State, target: Bindtarget)  {.importcpp: "apply".}
    ## Bind the FBO as either the read or draw target, or both.

proc resizeGLObjectBuffers*(this: var FrameBufferObject, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: FrameBufferObject, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objexts for all graphics contexts.

proc `=`*(this: var FrameBufferObject, Framebufferobject): Framebufferobject  {.importcpp: "# = #".}

proc updateDrawBuffers*(this: var FrameBufferObject)  {.importcpp: "updateDrawBuffers".}

proc dirtyAll*(this: var FrameBufferObject)  {.importcpp: "dirtyAll".}

proc convertBufferComponentToGLenum*(this: FrameBufferObject, attachment_point: Buffercomponent): GLenum  {.importcpp: "convertBufferComponentToGLenum".}

proc getAttachmentMap*(this: FrameBufferObject): Attachmentmap  {.importcpp: "getAttachmentMap".}

proc hasAttachment*(this: FrameBufferObject, attachment_point: Buffercomponent): bool  {.importcpp: "hasAttachment".}

proc getAttachment*(this: FrameBufferObject, attachment_point: Buffercomponent): Framebufferattachment  {.importcpp: "getAttachment".}

proc dirtyAll*(this: var FrameBufferObject)  {.importcpp: "dirtyAll".}

proc deleteGLObject*(this: var GLRenderBufferManager, globj: GLuint)  {.importcpp: "deleteGLObject".}

proc deleteGLObject*(this: var GLFrameBufferObjectManager, globj: GLuint)  {.importcpp: "deleteGLObject".}

{.pop.}  # header: "FrameBufferObject"
