import StateAttribute
import osg_types
  # File: AttributeDispatchers  was providing: osg::AttributeDispatchers
  # File: GLExtensions  was providing: osg::VertexAttribAlias, osg::GLExtensions
  # File: ShaderComposer  was providing: osg::ShaderComposer
  # File: BufferObject  was providing: osg::GLBufferObject
  # File: StateAttribute  was providing: osg::StateAttribute
  # File: Array  was providing: osg::Array
  # File: Polytope  was providing: osg::Polytope
  # File: Shader  was providing: osg::ShaderDefines
  # File: Viewport  was providing: osg::Viewport
  # File: Timer  was providing: osg::Timer_t
  # File: StateSet  was providing: osg::StateSet
  # File: Matrix  was providing: osg::Matrix, osg::RefMatrix
  # File: GraphicsCostEstimator  was providing: osg::GraphicsCostEstimator
  # File: VertexArrayState  was providing: osg::VertexArrayState
  # File: GraphicsContext  was providing: osg::GraphicsContext
  # File: Uniform  was providing: osg::Uniform
  # File: FrameStamp  was providing: osg::FrameStamp
  # File: DisplaySettings  was providing: osg::DisplaySettings
type
  CheckForGLErrors* {.size:sizeof(cuint),header: "State", importcpp: "osg::State::CheckForGLErrors", pure.} = enum
    NEVER_CHECK_GL_ERRORS = 0,
      ## NEVER_CHECK_GL_ERRORS hints that OpenGL need not be checked for, this
      ## is the fastest option since checking for errors does incur a small
      ## overhead.
    ONCE_PER_FRAME = 1,
      ## ONCE_PER_FRAME means that OpenGL errors will be checked for once per
      ## frame, the overhead is still small, but at least OpenGL errors that
      ## are occurring will be caught, the reporting isn't fine grained enough
      ## for debugging purposes.
    ONCE_PER_ATTRIBUTE = 2
      ## ONCE_PER_ATTRIBUTE means that OpenGL errors will be checked for after
      ## every attribute is applied, allow errors to be directly associated
      ## with particular operations which makes debugging much easier.

  ExtensionMap* {.header: "State", importcpp: "osg::State::ExtensionMap".} = cint
  StateSetStack* {.header: "State", importcpp: "osg::State::StateSetStack".} = cint
  VertexAttribAliasList* {.header: "State", importcpp: "osg::State::VertexAttribAliasList".} = cint
  IndicesGLushort* {.header: "State", importcpp: "osg::State::IndicesGLushort".} = cint
  IndicesGLuint* {.header: "State", importcpp: "osg::State::IndicesGLuint".} = cint
  AttributePair* {.header: "State", importcpp: "osg::State::AttributePair".} = pair[ptr StateAttribute,OverrideValue]
  AttributeVec* {.header: "State", importcpp: "osg::State::AttributeVec".} = cint
  ValueVec* {.header: "State", importcpp: "osg::State::ModeStack::ValueVec".} = cint
  UniformPair* {.header: "State", importcpp: "osg::State::UniformStack::UniformPair".} = pair[ptr Uniform,OverrideValue]
  UniformVec* {.header: "State", importcpp: "osg::State::UniformStack::UniformVec".} = cint
  DefineVec* {.header: "State", importcpp: "osg::State::DefineStack::DefineVec".} = cint
  DefineStackMap* {.header: "State", importcpp: "osg::State::DefineMap::DefineStackMap".} = cint
  ModeMap* {.header: "State", importcpp: "osg::State::ModeMap".} = cint
  TextureModeMapList* {.header: "State", importcpp: "osg::State::TextureModeMapList".} = cint
  AttributeMap* {.header: "State", importcpp: "osg::State::AttributeMap".} = cint
  TextureAttributeMapList* {.header: "State", importcpp: "osg::State::TextureAttributeMapList".} = cint
  UniformMap* {.header: "State", importcpp: "osg::State::UniformMap".} = cint
  MatrixStack* {.header: "State", importcpp: "osg::State::MatrixStack".} = cint
  ActiveTextureProc* {.header: "State", importcpp: "osg::State::ActiveTextureProc".} = proc (texture: GLenum)
  FogCoordPointerProc* {.header: "State", importcpp: "osg::State::FogCoordPointerProc".} = proc (`type`: GLenum, stride: GLsizei, pointer: ptr GLvoid)
  SecondaryColorPointerProc* {.header: "State", importcpp: "osg::State::SecondaryColorPointerProc".} = proc (size: GLint, `type`: GLenum, stride: GLsizei, pointer: ptr GLvoid)
  MultiTexCoord4fProc* {.header: "State", importcpp: "osg::State::MultiTexCoord4fProc".} = proc (target: GLenum, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
  VertexAttrib4fProc* {.header: "State", importcpp: "osg::State::VertexAttrib4fProc".} = proc (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
  VertexAttrib4fvProc* {.header: "State", importcpp: "osg::State::VertexAttrib4fvProc".} = proc (index: GLuint, v: ptr GLfloat)
  VertexAttribPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribPointerProc".} = proc (a00: cuint, a01: GLint, a02: GLenum, normalized: GLboolean, stride: GLsizei, pointer: ptr GLvoid)
  VertexAttribIPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribIPointerProc".} = proc (a00: cuint, a01: GLint, a02: GLenum, stride: GLsizei, pointer: ptr GLvoid)
  VertexAttribLPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribLPointerProc".} = proc (a00: cuint, a01: GLint, a02: GLenum, stride: GLsizei, pointer: ptr GLvoid)
  EnableVertexAttribProc* {.header: "State", importcpp: "osg::State::EnableVertexAttribProc".} = proc (a00: cuint)
  DisableVertexAttribProc* {.header: "State", importcpp: "osg::State::DisableVertexAttribProc".} = proc (a00: cuint)
  BindBufferProc* {.header: "State", importcpp: "osg::State::BindBufferProc".} = proc (target: GLenum, buffer: GLuint)
  DrawArraysInstancedProc* {.header: "State", importcpp: "osg::State::DrawArraysInstancedProc".} = proc (mode: GLenum, first: GLint, count: GLsizei, primcount: GLsizei)
  DrawElementsInstancedProc* {.header: "State", importcpp: "osg::State::DrawElementsInstancedProc".} = proc (mode: GLenum, count: GLsizei, `type`: GLenum, indices: ptr GLvoid, primcount: GLsizei)


{.push header: "State".}

proc constructState*(): State {.constructor,importcpp: "osg::State::State".}

proc constructApplyModeProxy*(state: State, mode: GLenum, value: bool): ApplyModeProxy {.constructor,importcpp: "osg::State::ApplyModeProxy::ApplyModeProxy(@)".}

proc constructApplyTextureModeProxy*(state: State, unit: cuint, mode: GLenum, value: bool): ApplyTextureModeProxy {.constructor,importcpp: "osg::State::ApplyTextureModeProxy::ApplyTextureModeProxy(@)".}

proc constructSetCurrentVertexArrayStateProxy*(state: State, vas: ptr VertexArrayState ): SetCurrentVertexArrayStateProxy {.constructor,importcpp: "osg::State::SetCurrentVertexArrayStateProxy::SetCurrentVertexArrayStateProxy(@)".}

proc constructModeStack*(): ModeStack {.constructor,importcpp: "osg::State::ModeStack::ModeStack".}

proc constructAttributeStack*(): AttributeStack {.constructor,importcpp: "osg::State::AttributeStack::AttributeStack".}

proc constructUniformStack*(): UniformStack {.constructor,importcpp: "osg::State::UniformStack::UniformStack".}

proc constructDefineStack*(): DefineStack {.constructor,importcpp: "osg::State::DefineStack::DefineStack".}

proc constructDefineMap*(): DefineMap {.constructor,importcpp: "osg::State::DefineMap::DefineMap".}

proc setGraphicsContext*(this: var State, context: ptr GraphicsContext )  {.importcpp: "setGraphicsContext".}
    ## Set the graphics context associated with that owns this State object.

proc getGraphicsContext*(this: var State): ptr GraphicsContext   {.importcpp: "getGraphicsContext".}
    ## Get the graphics context associated with that owns this State object.

proc getGraphicsContext*(this: State): ptr GraphicsContext   {.importcpp: "getGraphicsContext".}
    ## Get the const graphics context associated with that owns this State
    ## object.

proc setContextID*(this: var State, contextID: cuint)  {.importcpp: "setContextID".}
    ## Set the current OpenGL context uniqueID. The ContextID is used by
    ## classes like osg::StateAttribute's and osg::Drawable's to help manage
    ## separate OpenGL objects, such as display lists, vertex buffer objects
    ## and texture object for each graphics context. The ContextID simply
    ## acts as an index into arrays that these classes maintain for the
    ## purpose of storing GL object handles.

proc getContextID*(this: State): cuint  {.importcpp: "getContextID".}
    ## Get the current OpenGL context unique ID.

proc setShaderCompositionEnabled*(this: var State, flag: bool)  {.importcpp: "setShaderCompositionEnabled".}

proc getShaderCompositionEnabled*(this: State): bool  {.importcpp: "getShaderCompositionEnabled".}

proc setShaderComposer*(this: var State, sc: ptr ShaderComposer )  {.importcpp: "setShaderComposer".}
    ## deprecated.

proc getShaderComposer*(this: var State): ptr ShaderComposer   {.importcpp: "getShaderComposer".}
    ## deprecated.

proc getShaderComposer*(this: State): ptr ShaderComposer   {.importcpp: "getShaderComposer".}
    ## deprecated.

proc getCurrentShaderCompositionUniformList*(this: var State): UniformList  {.importcpp: "getCurrentShaderCompositionUniformList".}
    ## Get the unform list in which to inject any uniforms that
    ## StateAttribute::apply(State&) methods provide.

proc applyShaderCompositionUniform*(this: var State, uniform: ptr Uniform , value: OverrideValue)  {.importcpp: "applyShaderCompositionUniform".}
    ## Convenience method for StateAttribute::apply(State&) methods to pass
    ## on their uniforms to osg::State so it can apply them at the
    ## appropriate point.

proc pushStateSet*(this: var State, dstate: ptr StateSet )  {.importcpp: "pushStateSet".}
    ## Push stateset onto state stack.

proc popStateSet*(this: var State)  {.importcpp: "popStateSet".}
    ## Pop stateset off state stack.

proc popAllStateSets*(this: var State)  {.importcpp: "popAllStateSets".}
    ## pop all statesets off state stack, ensuring it is empty ready for the
    ## next frame. Note, to return OpenGL to default state, one should do any
    ## state.popAllStatSets(); state.apply().

proc insertStateSet*(this: var State, pos: cuint, dstate: ptr StateSet )  {.importcpp: "insertStateSet".}
    ## Insert stateset onto state stack.

proc removeStateSet*(this: var State, pos: cuint)  {.importcpp: "removeStateSet".}
    ## Pop stateset off state stack.

proc getStateSetStackSize*(this: var State): cuint  {.importcpp: "getStateSetStackSize".}
    ## Get the number of StateSet's on the StateSet stack.

proc popStateSetStackToSize*(this: var State, size: cuint)  {.importcpp: "popStateSetStackToSize".}
    ## Pop StateSet's for the StateSet stack till its size equals the
    ## specified size.

proc getStateSetStack*(this: var State): StateSetStack  {.importcpp: "getStateSetStack".}
    ## Get the StateSet stack.

proc captureCurrentState*(this: State, stateset: StateSet)  {.importcpp: "captureCurrentState".}
    ## Copy the modes and attributes which capture the current state.

proc releaseGLObjects*(this: var State)  {.importcpp: "releaseGLObjects".}
    ## Release all OpenGL objects associated cached by this osg::State
    ## object.

proc reset*(this: var State)  {.importcpp: "reset".}
    ## reset the state object to an empty stack.

proc getCurrentViewport*(this: State): ptr Viewport   {.importcpp: "getCurrentViewport".}

proc setInitialViewMatrix*(this: var State, matrix: ptr RefMatrix )  {.importcpp: "setInitialViewMatrix".}

proc getInitialViewMatrix*(this: State): Matrix  {.importcpp: "getInitialViewMatrix".}

proc getInitialInverseViewMatrix*(this: State): Matrix  {.importcpp: "getInitialInverseViewMatrix".}

proc applyProjectionMatrix*(this: var State, matrix: ptr RefMatrix )  {.importcpp: "applyProjectionMatrix".}

proc getProjectionMatrix*(this: State): Matrix  {.importcpp: "getProjectionMatrix".}

proc applyModelViewMatrix*(this: var State, matrix: ptr RefMatrix )  {.importcpp: "applyModelViewMatrix".}

proc applyModelViewMatrix*(this: var State, a00: Matrix)  {.importcpp: "applyModelViewMatrix".}

proc getModelViewMatrix*(this: State): Matrix  {.importcpp: "getModelViewMatrix".}

proc setUseModelViewAndProjectionUniforms*(this: var State, flag: bool)  {.importcpp: "setUseModelViewAndProjectionUniforms".}

proc getUseModelViewAndProjectionUniforms*(this: State): bool  {.importcpp: "getUseModelViewAndProjectionUniforms".}

proc updateModelViewAndProjectionMatrixUniforms*(this: var State)  {.importcpp: "updateModelViewAndProjectionMatrixUniforms".}

proc applyModelViewAndProjectionUniformsIfRequired*(this: var State)  {.importcpp: "applyModelViewAndProjectionUniformsIfRequired".}

proc getModelViewMatrixUniform*(this: var State): ptr Uniform   {.importcpp: "getModelViewMatrixUniform".}

proc getProjectionMatrixUniform*(this: var State): ptr Uniform   {.importcpp: "getProjectionMatrixUniform".}

proc getModelViewProjectionMatrixUniform*(this: var State): ptr Uniform   {.importcpp: "getModelViewProjectionMatrixUniform".}

proc getNormalMatrixUniform*(this: var State): ptr Uniform   {.importcpp: "getNormalMatrixUniform".}

proc getViewFrustum*(this: State): Polytope  {.importcpp: "getViewFrustum".}

proc setUseVertexAttributeAliasing*(this: var State, flag: bool)  {.importcpp: "setUseVertexAttributeAliasing".}

proc getUseVertexAttributeAliasing*(this: State): bool  {.importcpp: "getUseVertexAttributeAliasing".}

proc resetVertexAttributeAlias*(this: var State, compactAliasing: bool, numTextureUnits: cuint = 8)  {.importcpp: "resetVertexAttributeAlias".}
    ## Reset the vertex attribute aliasing to osg's default. This method
    ## needs to be called before render anything unless you really know what
    ## you're doing !

proc setVertexAlias*(this: var State, alias: VertexAttribAlias)  {.importcpp: "setVertexAlias".}
    ## Set the vertex attribute aliasing for "vertex". This method needs to
    ## be called before render anything unless you really know what you're
    ## doing !

proc getVertexAlias*(this: var State): VertexAttribAlias  {.importcpp: "getVertexAlias".}

proc setNormalAlias*(this: var State, alias: VertexAttribAlias)  {.importcpp: "setNormalAlias".}
    ## Set the vertex attribute aliasing for "normal". This method needs to
    ## be called before render anything unless you really know what you're
    ## doing !

proc getNormalAlias*(this: var State): VertexAttribAlias  {.importcpp: "getNormalAlias".}

proc setColorAlias*(this: var State, alias: VertexAttribAlias)  {.importcpp: "setColorAlias".}
    ## Set the vertex attribute aliasing for "color". This method needs to be
    ## called before render anything unless you really know what you're doing
    ## !

proc getColorAlias*(this: var State): VertexAttribAlias  {.importcpp: "getColorAlias".}

proc setSecondaryColorAlias*(this: var State, alias: VertexAttribAlias)  {.importcpp: "setSecondaryColorAlias".}
    ## Set the vertex attribute aliasing for "secondary color". This method
    ## needs to be called before render anything unless you really know what
    ## you're doing !

proc getSecondaryColorAlias*(this: var State): VertexAttribAlias  {.importcpp: "getSecondaryColorAlias".}

proc setFogCoordAlias*(this: var State, alias: VertexAttribAlias)  {.importcpp: "setFogCoordAlias".}
    ## Set the vertex attribute aliasing for "fog coord". This method needs
    ## to be called before render anything unless you really know what you're
    ## doing !

proc getFogCoordAlias*(this: var State): VertexAttribAlias  {.importcpp: "getFogCoordAlias".}

proc setTexCoordAliasList*(this: var State, aliasList: VertexAttribAliasList)  {.importcpp: "setTexCoordAliasList".}
    ## Set the vertex attribute aliasing list for texture coordinates. This
    ## method needs to be called before render anything unless you really
    ## know what you're doing !

proc getTexCoordAliasList*(this: var State): VertexAttribAliasList  {.importcpp: "getTexCoordAliasList".}

proc setAttributeBindingList*(this: var State, attribBindingList: AttribBindingList)  {.importcpp: "setAttributeBindingList".}
    ## Set the vertex attribute binding list. This method needs to be called
    ## before render anything unless you really know what you're doing !

proc getAttributeBindingList*(this: var State): AttribBindingList  {.importcpp: "getAttributeBindingList".}

proc convertVertexShaderSourceToOsgBuiltIns*(this: State, source: string): bool  {.importcpp: "convertVertexShaderSourceToOsgBuiltIns".}

proc apply*(this: var State, dstate: ptr StateSet )  {.importcpp: "apply".}
    ## Apply stateset.

proc apply*(this: var State)  {.importcpp: "apply".}
    ## Updates the OpenGL state so that it matches the StateSet at the top of
    ## the stack of StateSets maintained internally by a State.

proc applyShaderComposition*(this: var State)  {.importcpp: "applyShaderComposition".}
    ## Apply any shader composed state.

proc glDrawBuffer*(this: var State, buffer: GLenum)  {.importcpp: "glDrawBuffer".}

proc getDrawBuffer*(this: State): GLenum  {.importcpp: "getDrawBuffer".}

proc glReadBuffer*(this: var State, buffer: GLenum)  {.importcpp: "glReadBuffer".}

proc getReadBuffer*(this: State): GLenum  {.importcpp: "getReadBuffer".}

proc setModeValidity*(this: var State, mode: GLMode, valid: bool)  {.importcpp: "setModeValidity".}
    ## Set whether a particular OpenGL mode is valid in the current graphics
    ## context. Use to disable OpenGL modes that are not supported by current
    ## graphics drivers/context.

proc getModeValidity*(this: var State, mode: GLMode): bool  {.importcpp: "getModeValidity".}
    ## Get whether a particular OpenGL mode is valid in the current graphics
    ## context. Use to disable OpenGL modes that are not supported by current
    ## graphics drivers/context.

proc setGlobalDefaultModeValue*(this: var State, mode: GLMode, enabled: bool)  {.importcpp: "setGlobalDefaultModeValue".}

proc getGlobalDefaultModeValue*(this: var State, mode: GLMode): bool  {.importcpp: "getGlobalDefaultModeValue".}

proc getLastAppliedModeValue*(this: var State, mode: GLMode): bool  {.importcpp: "getLastAppliedModeValue".}

proc applyMode*(this: var State, mode: GLMode, enabled: bool): bool  {.importcpp: "applyMode".}
    ## Apply an OpenGL mode if required. This is a wrapper around glEnable()
    ## and glDisable(), that just actually calls these functions if the
    ## enabled flag is different than the current state.

proc setGlobalDefaultTextureModeValue*(this: var State, unit: cuint, mode: GLMode, enabled: bool)  {.importcpp: "setGlobalDefaultTextureModeValue".}

proc getGlobalDefaultTextureModeValue*(this: var State, unit: cuint, mode: GLMode): bool  {.importcpp: "getGlobalDefaultTextureModeValue".}

proc applyTextureMode*(this: var State, unit: cuint, mode: GLMode, enabled: bool): bool  {.importcpp: "applyTextureMode".}

proc getLastAppliedTextureModeValue*(this: var State, unit: cuint, mode: GLMode): bool  {.importcpp: "getLastAppliedTextureModeValue".}

proc setGlobalDefaultAttribute*(this: var State, attribute: ptr StateAttribute )  {.importcpp: "setGlobalDefaultAttribute".}

proc getGlobalDefaultAttribute*(this: var State, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getGlobalDefaultAttribute".}

proc applyAttribute*(this: var State, attribute: ptr StateAttribute ): bool  {.importcpp: "applyAttribute".}
    ## Apply an attribute if required.

proc setGlobalDefaultTextureAttribute*(this: var State, unit: cuint, attribute: ptr StateAttribute )  {.importcpp: "setGlobalDefaultTextureAttribute".}

proc getGlobalDefaultTextureAttribute*(this: var State, unit: cuint, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getGlobalDefaultTextureAttribute".}

proc applyTextureAttribute*(this: var State, unit: cuint, attribute: ptr StateAttribute ): bool  {.importcpp: "applyTextureAttribute".}

proc haveAppliedMode*(this: var State, mode: GLMode, value: GLModeValue)  {.importcpp: "haveAppliedMode".}
    ## Mode has been set externally, update state to reflect this setting.

proc haveAppliedMode*(this: var State, mode: GLMode)  {.importcpp: "haveAppliedMode".}
    ## Mode has been set externally, therefore dirty the associated mode in
    ## osg::State so it is applied on next call to osg::State::apply(..)

proc haveAppliedAttribute*(this: var State, attribute: ptr StateAttribute )  {.importcpp: "haveAppliedAttribute".}
    ## Attribute has been applied externally, update state to reflect this
    ## setting.

proc haveAppliedAttribute*(this: var State, `type`: Type, member: cuint = 0)  {.importcpp: "haveAppliedAttribute".}
    ## Attribute has been applied externally, and therefore this attribute
    ## type has been dirtied and will need to be re-applied on next
    ## osg::State.apply(..). note, if you have an osg::StateAttribute which
    ## you have applied externally then use the have_applied(attribute)
    ## method as this will cause the osg::State to track the current state
    ## more accurately and enable lazy state updating such that only changed
    ## state will be applied.

proc getLastAppliedMode*(this: State, mode: GLMode): bool  {.importcpp: "getLastAppliedMode".}
    ## Get whether the current specified mode is enabled (true) or disabled
    ## (false).

proc getLastAppliedAttribute*(this: State, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getLastAppliedAttribute".}
    ## Get the current specified attribute, return NULL if one has not yet
    ## been applied.

proc haveAppliedTextureMode*(this: var State, unit: cuint, mode: GLMode, value: GLModeValue)  {.importcpp: "haveAppliedTextureMode".}
    ## texture Mode has been set externally, update state to reflect this
    ## setting.

proc haveAppliedTextureMode*(this: var State, unit: cuint, mode: GLMode)  {.importcpp: "haveAppliedTextureMode".}
    ## texture Mode has been set externally, therefore dirty the associated
    ## mode in osg::State so it is applied on next call to
    ## osg::State::apply(..)

proc haveAppliedTextureAttribute*(this: var State, unit: cuint, attribute: ptr StateAttribute )  {.importcpp: "haveAppliedTextureAttribute".}
    ## texture Attribute has been applied externally, update state to reflect
    ## this setting.

proc haveAppliedTextureAttribute*(this: var State, unit: cuint, `type`: Type, member: cuint = 0)  {.importcpp: "haveAppliedTextureAttribute".}
    ## texture Attribute has been applied externally, and therefore this
    ## attribute type has been dirtied and will need to be re-applied on next
    ## osg::State.apply(..). note, if you have an osg::StateAttribute which
    ## you have applied externally then use the have_applied(attribute)
    ## method as this will the osg::State to track the current state more
    ## accurately and enable lazy state updating such that only changed state
    ## will be applied.

proc getLastAppliedTextureMode*(this: State, unit: cuint, mode: GLMode): bool  {.importcpp: "getLastAppliedTextureMode".}
    ## Get whether the current specified texture mode is enabled (true) or
    ## disabled (false).

proc getLastAppliedTextureAttribute*(this: State, unit: cuint, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getLastAppliedTextureAttribute".}
    ## Get the current specified texture attribute, return NULL if one has
    ## not yet been applied.

proc dirtyAllModes*(this: var State)  {.importcpp: "dirtyAllModes".}
    ## Dirty the modes previously applied in osg::State.

proc dirtyAllAttributes*(this: var State)  {.importcpp: "dirtyAllAttributes".}
    ## Dirty the modes attributes previously applied in osg::State.

proc setCurrentVertexArrayState*(this: var State, vas: ptr VertexArrayState )  {.importcpp: "setCurrentVertexArrayState".}
    ## Set the CurrentVetexArrayState object that take which vertex arrays
    ## are bound.

proc getCurrentVertexArrayState*(this: State): ptr VertexArrayState   {.importcpp: "getCurrentVertexArrayState".}
    ## Get the CurrentVetexArrayState object that take which vertex arrays
    ## are bound.

proc setCurrentToGlobalVertexArrayState*(this: var State)  {.importcpp: "setCurrentToGlobalVertexArrayState".}
    ## Set the getCurrentVertexArrayState to the GlobalVertexArrayState.

proc resetCurrentVertexArrayStateOnMatch*(this: var State, vas: ptr VertexArrayState )  {.importcpp: "resetCurrentVertexArrayStateOnMatch".}
    ## Reset the CurrentVertexArrayState/VertexArrayObject if it's value
    ## matches the specificied vas - use when deleting a vas.

proc disableAllVertexArrays*(this: var State)  {.importcpp: "disableAllVertexArrays".}
    ## disable the vertex, normal, color, tex coords, secondary color, fog
    ## coord and index arrays.

proc lazyDisablingOfVertexAttributes*(this: var State)  {.importcpp: "lazyDisablingOfVertexAttributes".}

proc applyDisablingOfVertexAttributes*(this: var State)  {.importcpp: "applyDisablingOfVertexAttributes".}

proc setCurrentVertexBufferObject*(this: var State, vbo: ptr GLBufferObject )  {.importcpp: "setCurrentVertexBufferObject".}

proc getCurrentVertexBufferObject*(this: var State): ptr GLBufferObject   {.importcpp: "getCurrentVertexBufferObject".}

proc bindVertexBufferObject*(this: var State, vbo: ptr GLBufferObject )  {.importcpp: "bindVertexBufferObject".}

proc unbindVertexBufferObject*(this: var State)  {.importcpp: "unbindVertexBufferObject".}

proc setCurrentElementBufferObject*(this: var State, ebo: ptr GLBufferObject )  {.importcpp: "setCurrentElementBufferObject".}

proc getCurrentElementBufferObject*(this: var State): ptr GLBufferObject   {.importcpp: "getCurrentElementBufferObject".}

proc bindElementBufferObject*(this: var State, ebo: ptr GLBufferObject )  {.importcpp: "bindElementBufferObject".}

proc unbindElementBufferObject*(this: var State)  {.importcpp: "unbindElementBufferObject".}

proc setCurrentPixelBufferObject*(this: var State, pbo: ptr GLBufferObject )  {.importcpp: "setCurrentPixelBufferObject".}

proc getCurrentPixelBufferObject*(this: State): ptr GLBufferObject   {.importcpp: "getCurrentPixelBufferObject".}

proc bindPixelBufferObject*(this: var State, pbo: ptr GLBufferObject )  {.importcpp: "bindPixelBufferObject".}

proc unbindPixelBufferObject*(this: var State)  {.importcpp: "unbindPixelBufferObject".}

proc bindDrawIndirectBufferObject*(this: var State, ibo: ptr GLBufferObject )  {.importcpp: "bindDrawIndirectBufferObject".}

proc unbindDrawIndirectBufferObject*(this: var State)  {.importcpp: "unbindDrawIndirectBufferObject".}

proc setCurrentVertexArrayObject*(this: var State, vao: GLuint)  {.importcpp: "setCurrentVertexArrayObject".}

proc getCurrentVertexArrayObject*(this: State): GLuint  {.importcpp: "getCurrentVertexArrayObject".}

proc bindVertexArrayObject*(this: var State, vas: ptr VertexArrayState )  {.importcpp: "bindVertexArrayObject".}

proc bindVertexArrayObject*(this: var State, vao: GLuint)  {.importcpp: "bindVertexArrayObject".}

proc unbindVertexArrayObject*(this: var State)  {.importcpp: "unbindVertexArrayObject".}

proc drawQuads*(this: var State, first: GLint, count: GLsizei, primCount: GLsizei)  {.importcpp: "drawQuads".}

proc glDrawArraysInstanced*(this: var State, mode: GLenum, first: GLint, count: GLsizei, primcount: GLsizei)  {.importcpp: "glDrawArraysInstanced".}

proc glDrawElementsInstanced*(this: var State, mode: GLenum, count: GLsizei, `type`: GLenum, indices: ptr GLvoid, primcount: GLsizei)  {.importcpp: "glDrawElementsInstanced".}

proc vertex*(this: var State, x: cfloat, y: cfloat, z: cfloat, w: cfloat)  {.importcpp: "Vertex".}

proc color*(this: var State, r: cfloat, g: cfloat, b: cfloat, a: cfloat)  {.importcpp: "Color".}

proc normal*(this: var State, x: cfloat, y: cfloat, z: cfloat)  {.importcpp: "Normal".}

proc texCoord*(this: var State, x: cfloat, y: cfloat, z: cfloat, w: cfloat)  {.importcpp: "TexCoord".}

proc multiTexCoord*(this: var State, unit: cuint, x: cfloat, y: cfloat, z: cfloat, w: cfloat)  {.importcpp: "MultiTexCoord".}

proc verteAttrib*(this: var State, location: cuint, x: cfloat, y: cfloat, z: cfloat, w: cfloat)  {.importcpp: "VerteAttrib".}

proc setInterleavedArrays*(this: var State, format: GLenum, stride: GLsizei, pointer: ptr GLvoid)  {.importcpp: "setInterleavedArrays".}
    ## Wrapper around glInterleavedArrays(..). also resets the internal array
    ## points and modes within osg::State to keep the other vertex array
    ## operations consistent.

proc setVertexPointer*(this: var State, array: ptr Array )  {.importcpp: "setVertexPointer".}
    ## Set the vertex pointer using an osg::Array, and manage any VBO that
    ## are required.

proc setVertexPointer*(this: var State, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setVertexPointer".}

proc disableVertexPointer*(this: var State)  {.importcpp: "disableVertexPointer".}

proc setNormalPointer*(this: var State, array: ptr Array )  {.importcpp: "setNormalPointer".}

proc setNormalPointer*(this: var State, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setNormalPointer".}

proc disableNormalPointer*(this: var State)  {.importcpp: "disableNormalPointer".}

proc setColorPointer*(this: var State, array: ptr Array )  {.importcpp: "setColorPointer".}

proc setColorPointer*(this: var State, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setColorPointer".}

proc disableColorPointer*(this: var State)  {.importcpp: "disableColorPointer".}

proc isSecondaryColorSupported*(this: State): bool  {.importcpp: "isSecondaryColorSupported".}

proc setSecondaryColorPointer*(this: var State, array: ptr Array )  {.importcpp: "setSecondaryColorPointer".}

proc disableSecondaryColorPointer*(this: var State)  {.importcpp: "disableSecondaryColorPointer".}

proc isFogCoordSupported*(this: State): bool  {.importcpp: "isFogCoordSupported".}

proc setFogCoordPointer*(this: var State, array: ptr Array )  {.importcpp: "setFogCoordPointer".}

proc disableFogCoordPointer*(this: var State)  {.importcpp: "disableFogCoordPointer".}

proc setTexCoordPointer*(this: var State, unit: cuint, array: ptr Array )  {.importcpp: "setTexCoordPointer".}

proc setTexCoordPointer*(this: var State, unit: cuint, size: GLint, `type`: GLenum, stride: GLsizei, `ptr`: ptr GLvoid, normalized: GLboolean)  {.importcpp: "setTexCoordPointer".}

proc disableTexCoordPointer*(this: var State, unit: cuint)  {.importcpp: "disableTexCoordPointer".}

proc disableTexCoordPointersAboveAndIncluding*(this: var State, unit: cuint)  {.importcpp: "disableTexCoordPointersAboveAndIncluding".}

proc getMaxTextureCoords*(this: State): GLint  {.importcpp: "getMaxTextureCoords".}
    ## For GL>=2.0 uses GL_MAX_TEXTURE_COORDS, for GL<2 uses
    ## GL_MAX_TEXTURE_UNITS

proc getMaxTextureUnits*(this: State): GLint  {.importcpp: "getMaxTextureUnits".}
    ## For GL>=2.0 uses GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, for GL<2 uses
    ## GL_MAX_TEXTURE_UNITS

proc setActiveTextureUnit*(this: var State, unit: cuint): bool  {.importcpp: "setActiveTextureUnit".}
    ## Set the current texture unit, return true if selected, false if
    ## selection failed such as when multi texturing is not supported. note,
    ## only updates values that change.

proc getActiveTextureUnit*(this: State): cuint  {.importcpp: "getActiveTextureUnit".}
    ## Get the current texture unit.

proc setClientActiveTextureUnit*(this: var State, unit: cuint): bool  {.importcpp: "setClientActiveTextureUnit".}
    ## Set the current tex coord array texture unit, return true if selected,
    ## false if selection failed such as when multi texturing is not
    ## supported. note, only updates values that change.

proc getClientActiveTextureUnit*(this: State): cuint  {.importcpp: "getClientActiveTextureUnit".}
    ## Get the current tex coord array texture unit.

proc setVertexAttribPointer*(this: var State, unit: cuint, array: ptr Array )  {.importcpp: "setVertexAttribPointer".}

proc setVertexAttribLPointer*(this: var State, unit: cuint, array: ptr Array )  {.importcpp: "setVertexAttribLPointer".}

proc setVertexAttribIPointer*(this: var State, unit: cuint, array: ptr Array )  {.importcpp: "setVertexAttribIPointer".}

proc disableVertexAttribPointer*(this: var State, index: cuint)  {.importcpp: "disableVertexAttribPointer".}

proc disableVertexAttribPointersAboveAndIncluding*(this: var State, index: cuint)  {.importcpp: "disableVertexAttribPointersAboveAndIncluding".}

proc dirtyAllVertexArrays*(this: var State)  {.importcpp: "dirtyAllVertexArrays".}
    ## dirty the vertex, normal, color, tex coords, secondary color, fog
    ## coord and index arrays.

proc isVertexBufferObjectSupported*(this: State): bool  {.importcpp: "isVertexBufferObjectSupported".}

proc useVertexBufferObject*(this: State, useVBO: bool): bool  {.importcpp: "useVertexBufferObject".}

proc isVertexArrayObjectSupported*(this: State): bool  {.importcpp: "isVertexArrayObjectSupported".}

proc useVertexArrayObject*(this: State, useVAO: bool): bool  {.importcpp: "useVertexArrayObject".}

proc setLastAppliedProgramObject*(this: var State, program: ptr PerContextProgram )  {.importcpp: "setLastAppliedProgramObject".}

proc getLastAppliedProgramObject*(this: State): ptr PerContextProgram   {.importcpp: "getLastAppliedProgramObject".}

proc getUniformLocation*(this: State, uniformNameID: cuint): GLint  {.importcpp: "getUniformLocation".}

proc getUniformLocation*(this: State, uniformName: string): GLint  {.importcpp: "getUniformLocation".}
    ## Alternative version of getUniformLocation( unsigned int uniformNameID
    ## ) retrofited into OSG for backward compatibility with osgCal, after
    ## uniform ids were refactored from std::strings to GLints in OSG version
    ## 2.9.10.

proc getAttribLocation*(this: State, name: string): GLint  {.importcpp: "getAttribLocation".}

proc getAttributeVec*(this: var State, attribute: ptr StateAttribute ): AttributeVec  {.importcpp: "getAttributeVec".}

proc setFrameStamp*(this: var State, fs: ptr FrameStamp )  {.importcpp: "setFrameStamp".}
    ## Set the frame stamp for the current frame.

proc getFrameStamp*(this: var State): ptr FrameStamp   {.importcpp: "getFrameStamp".}
    ## Get the frame stamp for the current frame.

proc getFrameStamp*(this: State): ptr FrameStamp   {.importcpp: "getFrameStamp".}
    ## Get the const frame stamp for the current frame.

proc setDisplaySettings*(this: var State, vs: ptr DisplaySettings )  {.importcpp: "setDisplaySettings".}
    ## Set the DisplaySettings. Note, nothing is applied, the visual settings
    ## are just used in the State object to pass the current visual settings
    ## to Drawables during rendering.

proc getDisplaySettings*(this: State): ptr DisplaySettings   {.importcpp: "getDisplaySettings".}
    ## Get the const DisplaySettings

proc getActiveDisplaySettings*(this: var State): ptr DisplaySettings   {.importcpp: "getActiveDisplaySettings".}
    ## Get the DisplaySettings that is current active DisplaySettings to be
    ## used by osg::State, - if DisplaySettings is not directly assigned then
    ## fallback to DisplaySettings::instance().

proc getActiveDisplaySettings*(this: State): ptr DisplaySettings   {.importcpp: "getActiveDisplaySettings".}
    ## Get the const DisplaySettings that is current active DisplaySettings
    ## to be used by osg::State, - if DisplaySettings is not directly
    ## assigned then fallback to DisplaySettings::instance().

proc setAbortRenderingPtr*(this: var State, abortPtr: ptr bool)  {.importcpp: "setAbortRenderingPtr".}
    ## Set flag for early termination of the draw traversal.

proc getAbortRendering*(this: State): bool  {.importcpp: "getAbortRendering".}
    ## Get flag for early termination of the draw traversal, if true steps
    ## should be taken to complete rendering early.

proc completed*(this: var DynamicObjectRenderingCompletedCallback, a00: ptr State )  {.importcpp: "completed".}

proc setDynamicObjectRenderingCompletedCallback*(this: var State, cb: ptr DynamicObjectRenderingCompletedCallback )  {.importcpp: "setDynamicObjectRenderingCompletedCallback".}
    ## Set the callback to be called when the dynamic object count hits 0.

proc getDynamicObjectRenderingCompletedCallback*(this: var State): ptr DynamicObjectRenderingCompletedCallback   {.importcpp: "getDynamicObjectRenderingCompletedCallback".}
    ## Get the callback to be called when the dynamic object count hits 0.

proc setDynamicObjectCount*(this: var State, count: cuint, callCallbackOnZero: bool)  {.importcpp: "setDynamicObjectCount".}
    ## Set the number of dynamic objects that will be rendered in this
    ## graphics context this frame.

proc getDynamicObjectCount*(this: State): cuint  {.importcpp: "getDynamicObjectCount".}
    ## Get the number of dynamic objects that will be rendered in this
    ## graphics context this frame.

proc decrementDynamicObjectCount*(this: var State)  {.importcpp: "decrementDynamicObjectCount".}
    ## Decrement the number of dynamic objects left to render this frame, and
    ## once the count goes to zero call the
    ## DynamicObjectRenderingCompletedCallback to inform of completion.

proc setMaxTexturePoolSize*(this: var State, size: cuint)  {.importcpp: "setMaxTexturePoolSize".}

proc getMaxTexturePoolSize*(this: State): cuint  {.importcpp: "getMaxTexturePoolSize".}

proc setMaxBufferObjectPoolSize*(this: var State, size: cuint)  {.importcpp: "setMaxBufferObjectPoolSize".}

proc getMaxBufferObjectPoolSize*(this: State): cuint  {.importcpp: "getMaxBufferObjectPoolSize".}

proc setCheckForGLErrors*(this: var State, check: CheckForGLErrors)  {.importcpp: "setCheckForGLErrors".}
    ## Set whether and how often OpenGL errors should be checked for.

proc getCheckForGLErrors*(this: State): CheckForGLErrors  {.importcpp: "getCheckForGLErrors".}
    ## Get whether and how often OpenGL errors should be checked for.

proc checkGLErrors*(this: State, str1: cstring = 0, str2: cstring = 0): bool  {.importcpp: "checkGLErrors".}

proc checkGLErrors*(this: State, mode: GLMode): bool  {.importcpp: "checkGLErrors".}

proc checkGLErrors*(this: State, attribute: ptr StateAttribute ): bool  {.importcpp: "checkGLErrors".}

proc print*(this: State, fout: ostream)  {.importcpp: "print".}
    ## print out the internal details of osg::State - useful for debugging.

proc initializeExtensionProcs*(this: var State)  {.importcpp: "initializeExtensionProcs".}
    ## Initialize extension used by osg::State.

proc getAttributeDispatchers*(this: var State): AttributeDispatchers  {.importcpp: "getAttributeDispatchers".}
    ## Get the helper class for dispatching osg::Arrays as OpenGL attribute
    ## data.

proc setGraphicsCostEstimator*(this: var State, gce: ptr GraphicsCostEstimator )  {.importcpp: "setGraphicsCostEstimator".}
    ## Set the helper class that provides applications with estimate on how
    ## much different graphics operations will cost.

proc getGraphicsCostEstimator*(this: var State): ptr GraphicsCostEstimator   {.importcpp: "getGraphicsCostEstimator".}
    ## Get the helper class that provides applications with estimate on how
    ## much different graphics operations will cost.

proc getGraphicsCostEstimator*(this: State): ptr GraphicsCostEstimator   {.importcpp: "getGraphicsCostEstimator".}
    ## Get the cont helper class that provides applications with estimate on
    ## how much different graphics operations will cost.

proc getStartTick*(this: State): Timer_t  {.importcpp: "getStartTick".}
    ## Support for synchronizing the system time and the timestamp counter
    ## available with ARB_timer_query. Note that State doesn't update these
    ## values itself.

proc setStartTick*(this: var State, tick: Timer_t)  {.importcpp: "setStartTick".}

proc getGpuTick*(this: State): Timer_t  {.importcpp: "getGpuTick".}

proc getGpuTime*(this: State): cdouble  {.importcpp: "getGpuTime".}

proc getGpuTimestamp*(this: State): GLuint64  {.importcpp: "getGpuTimestamp".}

proc setGpuTimestamp*(this: var State, tick: Timer_t, timestamp: GLuint64)  {.importcpp: "setGpuTimestamp".}

proc getTimestampBits*(this: State): cint  {.importcpp: "getTimestampBits".}

proc setTimestampBits*(this: var State, bits: cint)  {.importcpp: "setTimestampBits".}

proc frameCompleted*(this: var State)  {.importcpp: "frameCompleted".}
    ## called by the GraphicsContext just before
    ## GraphicsContext::swapBuffersImplementation().

proc print*(this: ModeStack, fout: ostream)  {.importcpp: "print".}

proc print*(this: AttributeStack, fout: ostream)  {.importcpp: "print".}

proc print*(this: UniformStack, fout: ostream)  {.importcpp: "print".}

proc print*(this: DefineStack, fout: ostream)  {.importcpp: "print".}

proc updateCurrentDefines*(this: var DefineMap): bool  {.importcpp: "updateCurrentDefines".}

proc getModeMap*(this: State): ModeMap  {.importcpp: "getModeMap".}

proc getAttributeMap*(this: State): AttributeMap  {.importcpp: "getAttributeMap".}

proc getUniformMap*(this: State): UniformMap  {.importcpp: "getUniformMap".}

proc getDefineMap*(this: var State): DefineMap  {.importcpp: "getDefineMap".}

proc getDefineMap*(this: State): DefineMap  {.importcpp: "getDefineMap".}

proc getTextureModeMapList*(this: State): TextureModeMapList  {.importcpp: "getTextureModeMapList".}

proc getTextureAttributeMapList*(this: State): TextureAttributeMapList  {.importcpp: "getTextureAttributeMapList".}

proc getDefineString*(this: var State, shaderDefines: ShaderDefines): string  {.importcpp: "getDefineString".}

proc supportsShaderRequirements*(this: var State, shaderRequirements: ShaderDefines): bool  {.importcpp: "supportsShaderRequirements".}

proc supportsShaderRequirement*(this: var State, shaderRequirement: string): bool  {.importcpp: "supportsShaderRequirement".}

proc setUpVertexAttribAlias*(this: var State, alias: VertexAttribAlias, location: GLuint, glName: string, osgName: string, declaration: string)  {.importcpp: "setUpVertexAttribAlias".}

proc applyMode*(this: var State, mode: GLMode, enabled: bool, ms: ModeStack): bool  {.importcpp: "applyMode".}
    ## Apply an OpenGL mode if required, passing in mode, enable flag and
    ## appropriate mode stack. This is a wrapper around glEnable() and
    ## glDisable(), that just actually calls these functions if the enabled
    ## flag is different than the current state.

proc applyModeOnTexUnit*(this: var State, unit: cuint, mode: GLMode, enabled: bool, ms: ModeStack): bool  {.importcpp: "applyModeOnTexUnit".}

proc applyAttribute*(this: var State, attribute: ptr StateAttribute , `as`: AttributeStack): bool  {.importcpp: "applyAttribute".}
    ## apply an attribute if required, passing in attribute and appropriate
    ## attribute stack

proc applyAttributeOnTexUnit*(this: var State, unit: cuint, attribute: ptr StateAttribute , `as`: AttributeStack): bool  {.importcpp: "applyAttributeOnTexUnit".}

proc applyGlobalDefaultAttribute*(this: var State, `as`: AttributeStack): bool  {.importcpp: "applyGlobalDefaultAttribute".}

proc applyGlobalDefaultAttributeOnTexUnit*(this: var State, unit: cuint, `as`: AttributeStack): bool  {.importcpp: "applyGlobalDefaultAttributeOnTexUnit".}

proc getOrCreateTextureModeMap*(this: var State, unit: cuint): ModeMap  {.importcpp: "getOrCreateTextureModeMap".}

proc getOrCreateTextureAttributeMap*(this: var State, unit: cuint): AttributeMap  {.importcpp: "getOrCreateTextureAttributeMap".}

proc pushModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "pushModeList".}

proc pushAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "pushAttributeList".}

proc pushUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "pushUniformList".}

proc pushDefineList*(this: var State, defineMap: DefineMap, defineList: DefineList)  {.importcpp: "pushDefineList".}

proc popModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "popModeList".}

proc popAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "popAttributeList".}

proc popUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "popUniformList".}

proc popDefineList*(this: var State, uniformMap: DefineMap, defineList: DefineList)  {.importcpp: "popDefineList".}

proc applyModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "applyModeList".}

proc applyAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "applyAttributeList".}

proc applyUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "applyUniformList".}

proc applyDefineList*(this: var State, uniformMap: DefineMap, defineList: DefineList)  {.importcpp: "applyDefineList".}

proc applyModeMap*(this: var State, modeMap: ModeMap)  {.importcpp: "applyModeMap".}

proc applyAttributeMap*(this: var State, attributeMap: AttributeMap)  {.importcpp: "applyAttributeMap".}

proc applyUniformMap*(this: var State, uniformMap: UniformMap)  {.importcpp: "applyUniformMap".}

proc applyModeListOnTexUnit*(this: var State, unit: cuint, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "applyModeListOnTexUnit".}

proc applyAttributeListOnTexUnit*(this: var State, unit: cuint, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "applyAttributeListOnTexUnit".}

proc applyModeMapOnTexUnit*(this: var State, unit: cuint, modeMap: ModeMap)  {.importcpp: "applyModeMapOnTexUnit".}

proc applyAttributeMapOnTexUnit*(this: var State, unit: cuint, attributeMap: AttributeMap)  {.importcpp: "applyAttributeMapOnTexUnit".}

proc haveAppliedMode*(this: var State, modeMap: ModeMap, mode: GLMode, value: GLModeValue)  {.importcpp: "haveAppliedMode".}

proc haveAppliedMode*(this: var State, modeMap: ModeMap, mode: GLMode)  {.importcpp: "haveAppliedMode".}

proc haveAppliedAttribute*(this: var State, attributeMap: AttributeMap, attribute: ptr StateAttribute )  {.importcpp: "haveAppliedAttribute".}

proc haveAppliedAttribute*(this: var State, attributeMap: AttributeMap, `type`: Type, member: cuint)  {.importcpp: "haveAppliedAttribute".}

proc getLastAppliedMode*(this: State, modeMap: ModeMap, mode: GLMode): bool  {.importcpp: "getLastAppliedMode".}

proc getLastAppliedAttribute*(this: State, attributeMap: AttributeMap, `type`: Type, member: cuint): ptr StateAttribute   {.importcpp: "getLastAppliedAttribute".}

proc loadModelViewMatrix*(this: var State)  {.importcpp: "loadModelViewMatrix".}

proc pushModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "pushModeList".}

proc pushAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "pushAttributeList".}

proc pushUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "pushUniformList".}

proc pushDefineList*(this: var State, defineMap: DefineMap, defineList: DefineList)  {.importcpp: "pushDefineList".}

proc popModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "popModeList".}

proc popAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "popAttributeList".}

proc popUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "popUniformList".}

proc popDefineList*(this: var State, defineMap: DefineMap, defineList: DefineList)  {.importcpp: "popDefineList".}

proc applyModeList*(this: var State, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "applyModeList".}

proc applyModeListOnTexUnit*(this: var State, unit: cuint, modeMap: ModeMap, modeList: ModeList)  {.importcpp: "applyModeListOnTexUnit".}

proc applyAttributeList*(this: var State, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "applyAttributeList".}

proc applyAttributeListOnTexUnit*(this: var State, unit: cuint, attributeMap: AttributeMap, attributeList: AttributeList)  {.importcpp: "applyAttributeListOnTexUnit".}

proc applyUniformList*(this: var State, uniformMap: UniformMap, uniformList: UniformList)  {.importcpp: "applyUniformList".}

proc applyDefineList*(this: var State, defineMap: DefineMap, defineList: DefineList)  {.importcpp: "applyDefineList".}

proc applyModeMap*(this: var State, modeMap: ModeMap)  {.importcpp: "applyModeMap".}

proc applyModeMapOnTexUnit*(this: var State, unit: cuint, modeMap: ModeMap)  {.importcpp: "applyModeMapOnTexUnit".}

proc applyAttributeMap*(this: var State, attributeMap: AttributeMap)  {.importcpp: "applyAttributeMap".}

proc applyAttributeMapOnTexUnit*(this: var State, unit: cuint, attributeMap: AttributeMap)  {.importcpp: "applyAttributeMapOnTexUnit".}

proc applyUniformMap*(this: var State, uniformMap: UniformMap)  {.importcpp: "applyUniformMap".}

proc setActiveTextureUnit*(this: var State, unit: cuint): bool  {.importcpp: "setActiveTextureUnit".}
    ## Set the current texture unit, return true if selected, false if
    ## selection failed such as when multi texturing is not supported. note,
    ## only updates values that change.

proc get*(this: var State): ptr GLExtensions   {.importcpp: "get".}

proc get*(this: State): ptr GLExtensions   {.importcpp: "get".}

proc set*(this: var State, `ptr`: ptr GLExtensions )  {.importcpp: "set".}

{.pop.}  # header: "State"
