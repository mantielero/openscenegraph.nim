import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Array  # provides: osg::Array
import /usr/include/osg/PrimitiveSet  # provides: osg::DrawElements, osg::PrimitiveSet
import /usr/include/osg/Image  # provides: osg::Image
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/FrameStamp  # provides: osg::FrameStamp
type
  Mode* {.size:sizeof(cuint),header: "BufferObject", importcpp: "osg::PixelDataBufferObject::Mode".} = enum
    NONE = 0,
      ## A normal mode of this data buffer
    READ = 1,
      ## Buffer is in read mode (
    WRITE = 2
      ## Buffer is in write mode (

  BufferEntries* {.header: "BufferObject", importcpp: "osg::GLBufferObject::BufferEntries".} = cint
  GLBufferObjectList* {.header: "BufferObject", importcpp: "osg::GLBufferObjectList".} = cint
  GLBufferObjectSetMap* {.header: "BufferObject", importcpp: "osg::GLBufferObjectManager::GLBufferObjectSetMap".} = cint
  BufferDataList* {.header: "BufferObject", importcpp: "osg::BufferObject::BufferDataList".} = cint
  GLBufferObjects* {.header: "BufferObject", importcpp: "osg::BufferObject::GLBufferObjects".} = Buffered_object[Ref_ptr[GLBufferObject]]
  ModeList* {.header: "BufferObject", importcpp: "osg::PixelDataBufferObject::ModeList".} = Buffered_value[cuint]
  BufferObjectProfile* {.header: "BufferObject", importcpp: "osg::BufferObjectProfile", byref.} = object

  GLBufferObjectSet* {.header: "BufferObject", importcpp: "osg::GLBufferObjectSet", byref.} = object #of class osg::Referenced

  GLBufferObjectManager* {.header: "BufferObject", importcpp: "osg::GLBufferObjectManager", byref.} = object #of class osg::GraphicsObjectManager

  BufferObject* {.header: "BufferObject", importcpp: "osg::BufferObject", byref.} = object #of class osg::Object

  DrawIndirectBufferObject* {.header: "BufferObject", importcpp: "osg::DrawIndirectBufferObject", byref.} = object #of class osg::BufferObject

  PixelDataBufferObject* {.header: "BufferObject", importcpp: "osg::PixelDataBufferObject", byref.} = object #of class osg::BufferObject
    ## This object represent a general class of pixel buffer objects, which
    ## are capable of allocating buffer object (memory) on the GPU. The
    ## memory can then be used either for CPU-GPU pixel transfer or directly
    ## for GPU-GPU transfer, without CPU intervention.

  UniformBufferObject* {.header: "BufferObject", importcpp: "osg::UniformBufferObject", byref.} = object #of class osg::BufferObject

  AtomicCounterBufferObject* {.header: "BufferObject", importcpp: "osg::AtomicCounterBufferObject", byref.} = object #of class osg::BufferObject

  ShaderStorageBufferObject* {.header: "BufferObject", importcpp: "osg::ShaderStorageBufferObject", byref.} = object #of class osg::BufferObject



{.push header: "BufferObject".}

proc constructBufferObjectProfile*(): BufferObjectProfile {.constructor,importcpp: "osg::BufferObjectProfile::BufferObjectProfile".}

proc constructBufferObjectProfile*(target: GLenum, usage: GLenum, size: cuint): BufferObjectProfile {.constructor,importcpp: "osg::BufferObjectProfile::BufferObjectProfile(@)".}

proc constructBufferObjectProfile*(bpo: Bufferobjectprofile): BufferObjectProfile {.constructor,importcpp: "osg::BufferObjectProfile::BufferObjectProfile(@)".}

proc constructGLBufferObject*(contextID: cuint, bufferObject: ptr Bufferobject , glObjectID: cuint = 0): GLBufferObject {.constructor,importcpp: "osg::GLBufferObject::GLBufferObject(@)".}

proc constructBufferEntry*(): BufferEntry {.constructor,importcpp: "osg::GLBufferObject::BufferEntry::BufferEntry".}

proc constructBufferEntry*(rhs: Bufferentry): BufferEntry {.constructor,importcpp: "osg::GLBufferObject::BufferEntry::BufferEntry(@)".}

proc constructGLBufferObjectSet*(parent: ptr Glbufferobjectmanager , profile: Bufferobjectprofile): GLBufferObjectSet {.constructor,importcpp: "osg::GLBufferObjectSet::GLBufferObjectSet(@)".}

proc constructGLBufferObjectManager*(contextID: cuint): GLBufferObjectManager {.constructor,importcpp: "osg::GLBufferObjectManager::GLBufferObjectManager(@)".}

proc constructBufferObject*(): BufferObject {.constructor,importcpp: "osg::BufferObject::BufferObject".}

proc constructBufferObject*(bo: Bufferobject, copyop: Copyop = SHALLOW_COPY): BufferObject {.constructor,importcpp: "osg::BufferObject::BufferObject(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructBufferData*(): BufferData {.constructor,importcpp: "osg::BufferData::BufferData".}

proc constructBufferData*(bd: Bufferdata, copyop: Copyop = SHALLOW_COPY): BufferData {.constructor,importcpp: "osg::BufferData::BufferData(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructModifiedCallback*(): ModifiedCallback {.constructor,importcpp: "osg::BufferData::ModifiedCallback::ModifiedCallback".}

proc constructModifiedCallback*(org: Modifiedcallback, copyop: Copyop): ModifiedCallback {.constructor,importcpp: "osg::BufferData::ModifiedCallback::ModifiedCallback(@)".}

proc constructVertexBufferObject*(): VertexBufferObject {.constructor,importcpp: "osg::VertexBufferObject::VertexBufferObject".}

proc constructVertexBufferObject*(vbo: Vertexbufferobject, copyop: Copyop = SHALLOW_COPY): VertexBufferObject {.constructor,importcpp: "osg::VertexBufferObject::VertexBufferObject(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructElementBufferObject*(): ElementBufferObject {.constructor,importcpp: "osg::ElementBufferObject::ElementBufferObject".}

proc constructElementBufferObject*(pbo: Elementbufferobject, copyop: Copyop = SHALLOW_COPY): ElementBufferObject {.constructor,importcpp: "osg::ElementBufferObject::ElementBufferObject(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructDrawIndirectBufferObject*(): DrawIndirectBufferObject {.constructor,importcpp: "osg::DrawIndirectBufferObject::DrawIndirectBufferObject".}

proc constructDrawIndirectBufferObject*(vbo: Drawindirectbufferobject, copyop: Copyop = SHALLOW_COPY): DrawIndirectBufferObject {.constructor,importcpp: "osg::DrawIndirectBufferObject::DrawIndirectBufferObject(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructPixelBufferObject*(image: ptr Image  = 0): PixelBufferObject {.constructor,importcpp: "osg::PixelBufferObject::PixelBufferObject(@)".}

proc constructPixelBufferObject*(pbo: Pixelbufferobject, copyop: Copyop = SHALLOW_COPY): PixelBufferObject {.constructor,importcpp: "osg::PixelBufferObject::PixelBufferObject(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructPixelDataBufferObject*(): PixelDataBufferObject {.constructor,importcpp: "osg::PixelDataBufferObject::PixelDataBufferObject".}

proc constructPixelDataBufferObject*(pbo: Pixeldatabufferobject, copyop: Copyop = SHALLOW_COPY): PixelDataBufferObject {.constructor,importcpp: "osg::PixelDataBufferObject::PixelDataBufferObject(@)".}

proc constructUniformBufferObject*(): UniformBufferObject {.constructor,importcpp: "osg::UniformBufferObject::UniformBufferObject".}

proc constructUniformBufferObject*(ubo: Uniformbufferobject, copyop: Copyop = SHALLOW_COPY): UniformBufferObject {.constructor,importcpp: "osg::UniformBufferObject::UniformBufferObject(@)".}

proc constructAtomicCounterBufferObject*(): AtomicCounterBufferObject {.constructor,importcpp: "osg::AtomicCounterBufferObject::AtomicCounterBufferObject".}

proc constructAtomicCounterBufferObject*(ubo: Atomiccounterbufferobject, copyop: Copyop = SHALLOW_COPY): AtomicCounterBufferObject {.constructor,importcpp: "osg::AtomicCounterBufferObject::AtomicCounterBufferObject(@)".}

proc constructShaderStorageBufferObject*(): ShaderStorageBufferObject {.constructor,importcpp: "osg::ShaderStorageBufferObject::ShaderStorageBufferObject".}

proc constructShaderStorageBufferObject*(ubo: Shaderstoragebufferobject, copyop: Copyop = SHALLOW_COPY): ShaderStorageBufferObject {.constructor,importcpp: "osg::ShaderStorageBufferObject::ShaderStorageBufferObject(@)".}

proc `<`*(this: BufferObjectProfile, rhs: Bufferobjectprofile): bool  {.importcpp: "# < #".}

proc `==`*(this: BufferObjectProfile, rhs: Bufferobjectprofile): bool  {.importcpp: "# == #".}

proc setProfile*(this: var BufferObjectProfile, target: GLenum, usage: GLenum, size: cuint)  {.importcpp: "setProfile".}

proc `=`*(this: var BufferObjectProfile, rhs: Bufferobjectprofile): Bufferobjectprofile  {.importcpp: "# = #".}

proc setProfile*(this: var GLBufferObject, profile: Bufferobjectprofile)  {.importcpp: "setProfile".}

proc getProfile*(this: GLBufferObject): Bufferobjectprofile  {.importcpp: "getProfile".}

proc setBufferObject*(this: var GLBufferObject, bufferObject: ptr Bufferobject )  {.importcpp: "setBufferObject".}

proc getBufferObject*(this: var GLBufferObject): ptr Bufferobject   {.importcpp: "getBufferObject".}

proc `=`*(this: var BufferEntry, rhs: Bufferentry): Bufferentry  {.importcpp: "# = #".}

proc getNumClients*(this: BufferEntry): cuint  {.importcpp: "getNumClients".}

proc getContextID*(this: GLBufferObject): cuint  {.importcpp: "getContextID".}

proc getGLObjectID*(this: var GLBufferObject): GLuint  {.importcpp: "getGLObjectID".}

proc getGLObjectID*(this: GLBufferObject): GLuint  {.importcpp: "getGLObjectID".}

proc getOffset*(this: GLBufferObject, i: cuint): GLsizeiptr  {.importcpp: "getOffset".}

proc bindBuffer*(this: var GLBufferObject)  {.importcpp: "bindBuffer".}

proc unbindBuffer*(this: var GLBufferObject)  {.importcpp: "unbindBuffer".}

proc release*(this: var GLBufferObject)  {.importcpp: "release".}
    ## release GLBufferObject to the orphan list to be reused or deleted.

proc isDirty*(this: GLBufferObject): bool  {.importcpp: "isDirty".}

proc dirty*(this: var GLBufferObject)  {.importcpp: "dirty".}

proc clear*(this: var GLBufferObject)  {.importcpp: "clear".}

proc compileBuffer*(this: var GLBufferObject)  {.importcpp: "compileBuffer".}

proc deleteGLObject*(this: var GLBufferObject)  {.importcpp: "deleteGLObject".}

proc assign*(this: var GLBufferObject, bufferObject: ptr Bufferobject )  {.importcpp: "assign".}

proc isPBOSupported*(this: GLBufferObject): bool  {.importcpp: "isPBOSupported".}

proc hasAllBufferDataBeenRead*(this: GLBufferObject): bool  {.importcpp: "hasAllBufferDataBeenRead".}

proc setBufferDataHasBeenRead*(this: var GLBufferObject, bd: ptr Bufferdata )  {.importcpp: "setBufferDataHasBeenRead".}

proc computeBufferAlignment*(this: GLBufferObject, pos: cuint, bufferAlignment: cuint): cuint  {.importcpp: "computeBufferAlignment".}

proc getProfile*(this: GLBufferObjectSet): Bufferobjectprofile  {.importcpp: "getProfile".}

proc handlePendingOrphandedGLBufferObjects*(this: var GLBufferObjectSet)  {.importcpp: "handlePendingOrphandedGLBufferObjects".}

proc deleteAllGLBufferObjects*(this: var GLBufferObjectSet)  {.importcpp: "deleteAllGLBufferObjects".}

proc discardAllGLBufferObjects*(this: var GLBufferObjectSet)  {.importcpp: "discardAllGLBufferObjects".}

proc flushAllDeletedGLBufferObjects*(this: var GLBufferObjectSet)  {.importcpp: "flushAllDeletedGLBufferObjects".}

proc discardAllDeletedGLBufferObjects*(this: var GLBufferObjectSet)  {.importcpp: "discardAllDeletedGLBufferObjects".}

proc flushDeletedGLBufferObjects*(this: var GLBufferObjectSet, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLBufferObjects".}

proc takeFromOrphans*(this: var GLBufferObjectSet, bufferObject: ptr Bufferobject ): Ref_ptr[GLBufferObject]  {.importcpp: "takeFromOrphans".}

proc takeOrGenerate*(this: var GLBufferObjectSet, bufferObject: ptr Bufferobject ): Ref_ptr[GLBufferObject]  {.importcpp: "takeOrGenerate".}

proc moveToBack*(this: var GLBufferObjectSet, to: ptr Glbufferobject )  {.importcpp: "moveToBack".}

proc addToBack*(this: var GLBufferObjectSet, to: ptr Glbufferobject )  {.importcpp: "addToBack".}

proc orphan*(this: var GLBufferObjectSet, to: ptr Glbufferobject )  {.importcpp: "orphan".}

proc remove*(this: var GLBufferObjectSet, to: ptr Glbufferobject )  {.importcpp: "remove".}

proc moveToSet*(this: var GLBufferObjectSet, to: ptr Glbufferobject , set: ptr Glbufferobjectset )  {.importcpp: "moveToSet".}

proc size*(this: GLBufferObjectSet): cuint  {.importcpp: "size".}

proc makeSpace*(this: var GLBufferObjectSet, size: cuint): bool  {.importcpp: "makeSpace".}

proc checkConsistency*(this: GLBufferObjectSet): bool  {.importcpp: "checkConsistency".}

proc getParent*(this: var GLBufferObjectSet): ptr Glbufferobjectmanager   {.importcpp: "getParent".}

proc computeNumGLBufferObjectsInList*(this: GLBufferObjectSet): cuint  {.importcpp: "computeNumGLBufferObjectsInList".}

proc getNumOfGLBufferObjects*(this: GLBufferObjectSet): cuint  {.importcpp: "getNumOfGLBufferObjects".}

proc getNumOrphans*(this: GLBufferObjectSet): cuint  {.importcpp: "getNumOrphans".}

proc getNumPendingOrphans*(this: GLBufferObjectSet): cuint  {.importcpp: "getNumPendingOrphans".}

proc setNumberActiveGLBufferObjects*(this: var GLBufferObjectManager, size: cuint)  {.importcpp: "setNumberActiveGLBufferObjects".}

proc getNumberActiveGLBufferObjects*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberActiveGLBufferObjects".}

proc getNumberActiveGLBufferObjects*(this: GLBufferObjectManager): cuint  {.importcpp: "getNumberActiveGLBufferObjects".}

proc setNumberOrphanedGLBufferObjects*(this: var GLBufferObjectManager, size: cuint)  {.importcpp: "setNumberOrphanedGLBufferObjects".}

proc getNumberOrphanedGLBufferObjects*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberOrphanedGLBufferObjects".}

proc getNumberOrphanedGLBufferObjects*(this: GLBufferObjectManager): cuint  {.importcpp: "getNumberOrphanedGLBufferObjects".}

proc setCurrGLBufferObjectPoolSize*(this: var GLBufferObjectManager, size: cuint)  {.importcpp: "setCurrGLBufferObjectPoolSize".}

proc getCurrGLBufferObjectPoolSize*(this: var GLBufferObjectManager): cuint  {.importcpp: "getCurrGLBufferObjectPoolSize".}

proc getCurrGLBufferObjectPoolSize*(this: GLBufferObjectManager): cuint  {.importcpp: "getCurrGLBufferObjectPoolSize".}

proc setMaxGLBufferObjectPoolSize*(this: var GLBufferObjectManager, size: cuint)  {.importcpp: "setMaxGLBufferObjectPoolSize".}

proc getMaxGLBufferObjectPoolSize*(this: GLBufferObjectManager): cuint  {.importcpp: "getMaxGLBufferObjectPoolSize".}

proc hasSpace*(this: GLBufferObjectManager, size: cuint): bool  {.importcpp: "hasSpace".}

proc makeSpace*(this: var GLBufferObjectManager, size: cuint): bool  {.importcpp: "makeSpace".}

proc generateGLBufferObject*(this: var GLBufferObjectManager, bufferObject: ptr Bufferobject ): Ref_ptr[GLBufferObject]  {.importcpp: "generateGLBufferObject".}

proc handlePendingOrphandedGLBufferObjects*(this: var GLBufferObjectManager)  {.importcpp: "handlePendingOrphandedGLBufferObjects".}

proc deleteAllGLObjects*(this: var GLBufferObjectManager)  {.importcpp: "deleteAllGLObjects".}

proc discardAllGLObjects*(this: var GLBufferObjectManager)  {.importcpp: "discardAllGLObjects".}

proc flushAllDeletedGLObjects*(this: var GLBufferObjectManager)  {.importcpp: "flushAllDeletedGLObjects".}

proc discardAllDeletedGLObjects*(this: var GLBufferObjectManager)  {.importcpp: "discardAllDeletedGLObjects".}

proc flushDeletedGLObjects*(this: var GLBufferObjectManager, currentTime: cdouble, availableTime: cdouble)  {.importcpp: "flushDeletedGLObjects".}

proc getGLBufferObjectSet*(this: var GLBufferObjectManager, profile: Bufferobjectprofile): ptr Glbufferobjectset   {.importcpp: "getGLBufferObjectSet".}

proc newFrame*(this: var GLBufferObjectManager, fs: ptr Framestamp )  {.importcpp: "newFrame".}

proc resetStats*(this: var GLBufferObjectManager)  {.importcpp: "resetStats".}

proc reportStats*(this: var GLBufferObjectManager, `out`: Ostream)  {.importcpp: "reportStats".}

proc recomputeStats*(this: GLBufferObjectManager, `out`: Ostream)  {.importcpp: "recomputeStats".}

proc getFrameNumber*(this: var GLBufferObjectManager): cuint  {.importcpp: "getFrameNumber".}

proc getNumberFrames*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberFrames".}

proc getNumberDeleted*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberDeleted".}

proc getDeleteTime*(this: var GLBufferObjectManager): cdouble  {.importcpp: "getDeleteTime".}

proc getNumberGenerated*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberGenerated".}

proc getGenerateTime*(this: var GLBufferObjectManager): cdouble  {.importcpp: "getGenerateTime".}

proc getNumberApplied*(this: var GLBufferObjectManager): cuint  {.importcpp: "getNumberApplied".}

proc getApplyTime*(this: var GLBufferObjectManager): cdouble  {.importcpp: "getApplyTime".}

proc isSameKindAs*(this: BufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: BufferObject): cstring  {.importcpp: "className".}

proc setTarget*(this: var BufferObject, target: GLenum)  {.importcpp: "setTarget".}

proc getTarget*(this: BufferObject): GLenum  {.importcpp: "getTarget".}

proc setUsage*(this: var BufferObject, usage: GLenum)  {.importcpp: "setUsage".}
    ## Set what type of usage the buffer object will have. Options are:
    ## GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW,
    ## GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or
    ## GL_DYNAMIC_COPY.

proc getUsage*(this: BufferObject): GLenum  {.importcpp: "getUsage".}
    ## Get the type of usage the buffer object has been set up for.

proc getProfile*(this: var BufferObject): Bufferobjectprofile  {.importcpp: "getProfile".}

proc getProfile*(this: BufferObject): Bufferobjectprofile  {.importcpp: "getProfile".}

proc setCopyDataAndReleaseGLBufferObject*(this: var BufferObject, copyAndRelease: bool)  {.importcpp: "setCopyDataAndReleaseGLBufferObject".}
    ## Set whether the BufferObject should use a GLBufferObject just for
    ## copying the BufferData and release it immediately so that it may be
    ## reused.

proc getCopyDataAndReleaseGLBufferObject*(this: BufferObject): bool  {.importcpp: "getCopyDataAndReleaseGLBufferObject".}
    ## Get whether the BufferObject should use a GLBufferObject just for
    ## copying the BufferData and release it immediately.

proc dirty*(this: var BufferObject)  {.importcpp: "dirty".}

proc resizeGLObjectBuffers*(this: var BufferObject, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: BufferObject, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases OpenGL objects for the
    ## specified graphics context. Otherwise, releases OpenGL objects for all
    ## graphics contexts.

proc addBufferData*(this: var BufferObject, bd: ptr Bufferdata ): cuint  {.importcpp: "addBufferData".}

proc removeBufferData*(this: var BufferObject, index: cuint)  {.importcpp: "removeBufferData".}

proc removeBufferData*(this: var BufferObject, bd: ptr Bufferdata )  {.importcpp: "removeBufferData".}

proc setBufferData*(this: var BufferObject, index: cuint, bd: ptr Bufferdata )  {.importcpp: "setBufferData".}

proc getBufferData*(this: var BufferObject, index: cuint): ptr Bufferdata   {.importcpp: "getBufferData".}

proc getBufferData*(this: BufferObject, index: cuint): ptr Bufferdata   {.importcpp: "getBufferData".}

proc getNumBufferData*(this: BufferObject): cuint  {.importcpp: "getNumBufferData".}

proc setGLBufferObject*(this: var BufferObject, contextID: cuint, glbo: ptr Glbufferobject )  {.importcpp: "setGLBufferObject".}

proc getGLBufferObject*(this: BufferObject, contextID: cuint): ptr Glbufferobject   {.importcpp: "getGLBufferObject".}

proc getOrCreateGLBufferObject*(this: BufferObject, contextID: cuint): ptr Glbufferobject   {.importcpp: "getOrCreateGLBufferObject".}

proc computeRequiredBufferSize*(this: BufferObject): cuint  {.importcpp: "computeRequiredBufferSize".}

proc deleteBufferObject*(this: var BufferObject, contextID: cuint, globj: GLuint)  {.importcpp: "deleteBufferObject".}
    ## deprecated, provided for backwards compatibility.

proc isSameKindAs*(this: BufferData, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BufferData): cstring  {.importcpp: "libraryName".}

proc className*(this: BufferData): cstring  {.importcpp: "className".}

proc getDataPointer*(this: BufferData): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: BufferData): cuint  {.importcpp: "getTotalDataSize".}

proc asArray*(this: var BufferData): ptr Array   {.importcpp: "asArray".}

proc asArray*(this: BufferData): ptr Array   {.importcpp: "asArray".}

proc asPrimitiveSet*(this: var BufferData): ptr Primitiveset   {.importcpp: "asPrimitiveSet".}

proc asPrimitiveSet*(this: BufferData): ptr Primitiveset   {.importcpp: "asPrimitiveSet".}

proc asImage*(this: var BufferData): ptr Image   {.importcpp: "asImage".}

proc asImage*(this: BufferData): ptr Image   {.importcpp: "asImage".}

proc setBufferObject*(this: var BufferData, bufferObject: ptr Bufferobject )  {.importcpp: "setBufferObject".}

proc getBufferObject*(this: var BufferData): ptr Bufferobject   {.importcpp: "getBufferObject".}

proc getBufferObject*(this: BufferData): ptr Bufferobject   {.importcpp: "getBufferObject".}

proc setBufferIndex*(this: var BufferData, index: cuint)  {.importcpp: "setBufferIndex".}

proc getBufferIndex*(this: BufferData): cuint  {.importcpp: "getBufferIndex".}

proc getGLBufferObject*(this: BufferData, contextID: cuint): ptr Glbufferobject   {.importcpp: "getGLBufferObject".}

proc getOrCreateGLBufferObject*(this: BufferData, contextID: cuint): ptr Glbufferobject   {.importcpp: "getOrCreateGLBufferObject".}

proc cloneType*(this: ModifiedCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ModifiedCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ModifiedCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ModifiedCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ModifiedCallback): cstring  {.importcpp: "className".}

proc modified*(this: ModifiedCallback, ptr Bufferdata )  {.importcpp: "modified".}

proc setModifiedCallback*(this: var BufferData, md: ptr Modifiedcallback )  {.importcpp: "setModifiedCallback".}

proc getModifiedCallback*(this: var BufferData): ptr Modifiedcallback   {.importcpp: "getModifiedCallback".}

proc getModifiedCallback*(this: BufferData): ptr Modifiedcallback   {.importcpp: "getModifiedCallback".}

proc dirty*(this: var BufferData)  {.importcpp: "dirty".}
    ## Dirty the primitive, which increments the modified count, to force
    ## buffer objects to update. If a ModifiedCallback is attached to this
    ## BufferData then the callback is called prior to the bufferObject's
    ## dirty is called.

proc setModifiedCount*(this: var BufferData, value: cuint)  {.importcpp: "setModifiedCount".}
    ## Set the modified count value.

proc getModifiedCount*(this: BufferData): cuint  {.importcpp: "getModifiedCount".}
    ## Get modified count value.

proc resizeGLObjectBuffers*(this: var BufferData, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: BufferData, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases OpenGL objects for the
    ## specified graphics context. Otherwise, releases OpenGL objects for all
    ## graphics contexts.

proc getNumClients*(this: BufferData): cuint  {.importcpp: "getNumClients".}

proc addClient*(this: var BufferData, ptr Object )  {.importcpp: "addClient".}

proc removeClient*(this: var BufferData, ptr Object )  {.importcpp: "removeClient".}

proc cloneType*(this: VertexBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: VertexBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: VertexBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: VertexBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: VertexBufferObject): cstring  {.importcpp: "className".}

proc addArray*(this: var VertexBufferObject, array: ptr Array ): cuint  {.importcpp: "addArray".}

proc removeArray*(this: var VertexBufferObject, array: ptr Array )  {.importcpp: "removeArray".}

proc setArray*(this: var VertexBufferObject, i: cuint, array: ptr Array )  {.importcpp: "setArray".}

proc getArray*(this: var VertexBufferObject, i: cuint): ptr Array   {.importcpp: "getArray".}

proc getArray*(this: VertexBufferObject, i: cuint): ptr Array   {.importcpp: "getArray".}

proc cloneType*(this: ElementBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ElementBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ElementBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ElementBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: ElementBufferObject): cstring  {.importcpp: "className".}

proc addDrawElements*(this: var ElementBufferObject, PrimitiveSet: ptr Drawelements ): cuint  {.importcpp: "addDrawElements".}

proc removeDrawElements*(this: var ElementBufferObject, PrimitiveSet: ptr Drawelements )  {.importcpp: "removeDrawElements".}

proc setDrawElements*(this: var ElementBufferObject, i: cuint, PrimitiveSet: ptr Drawelements )  {.importcpp: "setDrawElements".}

proc getDrawElements*(this: var ElementBufferObject, i: cuint): ptr Drawelements   {.importcpp: "getDrawElements".}

proc getDrawElements*(this: ElementBufferObject, i: cuint): ptr Drawelements   {.importcpp: "getDrawElements".}

proc cloneType*(this: DrawIndirectBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawIndirectBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawIndirectBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawIndirectBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawIndirectBufferObject): cstring  {.importcpp: "className".}

proc addArray*(this: var DrawIndirectBufferObject, array: ptr Array ): cuint  {.importcpp: "addArray".}

proc removeArray*(this: var DrawIndirectBufferObject, array: ptr Array )  {.importcpp: "removeArray".}

proc setArray*(this: var DrawIndirectBufferObject, i: cuint, array: ptr Array )  {.importcpp: "setArray".}

proc getArray*(this: var DrawIndirectBufferObject, i: cuint): ptr Array   {.importcpp: "getArray".}

proc getArray*(this: DrawIndirectBufferObject, i: cuint): ptr Array   {.importcpp: "getArray".}

proc cloneType*(this: PixelBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PixelBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PixelBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PixelBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: PixelBufferObject): cstring  {.importcpp: "className".}

proc setImage*(this: var PixelBufferObject, image: ptr Image )  {.importcpp: "setImage".}

proc getImage*(this: var PixelBufferObject): ptr Image   {.importcpp: "getImage".}

proc getImage*(this: PixelBufferObject): ptr Image   {.importcpp: "getImage".}

proc isPBOSupported*(this: PixelBufferObject, contextID: cuint): bool  {.importcpp: "isPBOSupported".}

proc cloneType*(this: PixelDataBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: PixelDataBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: PixelDataBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: PixelDataBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: PixelDataBufferObject): cstring  {.importcpp: "className".}

proc setDataSize*(this: var PixelDataBufferObject, size: cuint)  {.importcpp: "setDataSize".}
    ## Set new size of the buffer object. This will reallocate the memory on
    ## the next compile

proc getDataSize*(this: PixelDataBufferObject): cuint  {.importcpp: "getDataSize".}
    ## Get data size of the used buffer

proc compileBuffer*(this: PixelDataBufferObject, state: State)  {.importcpp: "compileBuffer".}
    ## Compile the buffer (reallocate the memory if buffer is dirty)

proc bindBufferInReadMode*(this: var PixelDataBufferObject, state: State)  {.importcpp: "bindBufferInReadMode".}
    ## Bind the buffer in read mode, which means that data can be downloaded
    ## from the buffer (note: GL_PIXEL_UNPACK_BUFFER_ARB)

proc bindBufferInWriteMode*(this: var PixelDataBufferObject, state: State)  {.importcpp: "bindBufferInWriteMode".}
    ## Bind the buffer in write mode, which means following OpenGL
    ## instructions will write data into the buffer (note:
    ## GL_PIXEL_PACK_BUFFER_ARB)

proc unbindBuffer*(this: PixelDataBufferObject, contextID: cuint)  {.importcpp: "unbindBuffer".}
    ## Unbind the buffer

proc resizeGLObjectBuffers*(this: var PixelDataBufferObject, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc getMode*(this: PixelDataBufferObject, contextID: cuint): Mode  {.importcpp: "getMode".}

proc cloneType*(this: UniformBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: UniformBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: UniformBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: UniformBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: UniformBufferObject): cstring  {.importcpp: "className".}

proc cloneType*(this: AtomicCounterBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: AtomicCounterBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: AtomicCounterBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: AtomicCounterBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: AtomicCounterBufferObject): cstring  {.importcpp: "className".}

proc bindBuffer*(this: var GLBufferObject)  {.importcpp: "bindBuffer".}

proc cloneType*(this: ShaderStorageBufferObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ShaderStorageBufferObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ShaderStorageBufferObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ShaderStorageBufferObject): cstring  {.importcpp: "libraryName".}

proc className*(this: ShaderStorageBufferObject): cstring  {.importcpp: "className".}

{.pop.}  # header: "BufferObject"
