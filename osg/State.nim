import AttributeDispatchers  # provides: osg::AttributeDispatchers
import GLExtensions  # provides: osg::VertexAttribAlias, osg::GLExtensions
import ShaderComposer  # provides: osg::ShaderComposer
import BufferObject  # provides: osg::GLBufferObject
import StateAttribute  # provides: osg::StateAttribute
import Array  # provides: osg::Array
import Polytope  # provides: osg::Polytope
import Shader  # provides: osg::ShaderDefines
import Viewport  # provides: osg::Viewport
import Timer  # provides: osg::Timer_t
import StateSet  # provides: osg::StateSet
import Matrix  # provides: osg::RefMatrix, osg::Matrix
import GraphicsCostEstimator  # provides: osg::GraphicsCostEstimator
import VertexArrayState  # provides: osg::VertexArrayState
import GraphicsContext  # provides: osg::GraphicsContext
import Uniform  # provides: osg::Uniform
import FrameStamp  # provides: osg::FrameStamp
import DisplaySettings  # provides: osg::DisplaySettings
type
  CheckForGLErrors* {.size:sizeof(cuint),header: "State", importcpp: "osg::State::CheckForGLErrors".} = enum
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
  AttributePair* {.header: "State", importcpp: "osg::State::AttributePair".} = Pair[ptr StateAttribute,Overridevalue]
  AttributeVec* {.header: "State", importcpp: "osg::State::AttributeVec".} = cint
  ValueVec* {.header: "State", importcpp: "osg::State::ModeStack::ValueVec".} = cint
  UniformPair* {.header: "State", importcpp: "osg::State::UniformStack::UniformPair".} = Pair[ptr Uniform,Overridevalue]
  UniformVec* {.header: "State", importcpp: "osg::State::UniformStack::UniformVec".} = cint
  DefineVec* {.header: "State", importcpp: "osg::State::DefineStack::DefineVec".} = cint
  DefineStackMap* {.header: "State", importcpp: "osg::State::DefineMap::DefineStackMap".} = cint
  ModeMap* {.header: "State", importcpp: "osg::State::ModeMap".} = cint
  TextureModeMapList* {.header: "State", importcpp: "osg::State::TextureModeMapList".} = cint
  AttributeMap* {.header: "State", importcpp: "osg::State::AttributeMap".} = cint
  TextureAttributeMapList* {.header: "State", importcpp: "osg::State::TextureAttributeMapList".} = cint
  UniformMap* {.header: "State", importcpp: "osg::State::UniformMap".} = cint
  MatrixStack* {.header: "State", importcpp: "osg::State::MatrixStack".} = cint
  ActiveTextureProc* {.header: "State", importcpp: "osg::State::ActiveTextureProc".} = void (*)(GLenum)
  FogCoordPointerProc* {.header: "State", importcpp: "osg::State::FogCoordPointerProc".} = void (*)(GLenum, GLsizei, const GLvoid *)
  SecondaryColorPointerProc* {.header: "State", importcpp: "osg::State::SecondaryColorPointerProc".} = void (*)(GLint, GLenum, GLsizei, const GLvoid *)
  MultiTexCoord4fProc* {.header: "State", importcpp: "osg::State::MultiTexCoord4fProc".} = void (*)(GLenum, GLfloat, GLfloat, GLfloat, GLfloat)
  VertexAttrib4fProc* {.header: "State", importcpp: "osg::State::VertexAttrib4fProc".} = void (*)(GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
  VertexAttrib4fvProc* {.header: "State", importcpp: "osg::State::VertexAttrib4fvProc".} = void (*)(GLuint, const GLfloat *)
  VertexAttribPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribPointerProc".} = void (*)(unsigned int, GLint, GLenum, GLboolean, GLsizei, const GLvoid *)
  VertexAttribIPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribIPointerProc".} = void (*)(unsigned int, GLint, GLenum, GLsizei, const GLvoid *)
  VertexAttribLPointerProc* {.header: "State", importcpp: "osg::State::VertexAttribLPointerProc".} = void (*)(unsigned int, GLint, GLenum, GLsizei, const GLvoid *)
  EnableVertexAttribProc* {.header: "State", importcpp: "osg::State::EnableVertexAttribProc".} = void (*)(unsigned int)
  DisableVertexAttribProc* {.header: "State", importcpp: "osg::State::DisableVertexAttribProc".} = void (*)(unsigned int)
  BindBufferProc* {.header: "State", importcpp: "osg::State::BindBufferProc".} = void (*)(GLenum, GLuint)
  DrawArraysInstancedProc* {.header: "State", importcpp: "osg::State::DrawArraysInstancedProc".} = void (*)(GLenum, GLint, GLsizei, GLsizei)
  DrawElementsInstancedProc* {.header: "State", importcpp: "osg::State::DrawElementsInstancedProc".} = void (*)(GLenum, GLsizei, GLenum, const GLvoid *, GLsizei)


{.push header: "State".}

proc constructState*(): State {.constructor,importcpp: "osg::State::State".}

proc constructApplyModeProxy*(state: State, mode: GLenum, value: bool): ApplyModeProxy {.constructor,importcpp: "osg::State::ApplyModeProxy::ApplyModeProxy(@)".}

proc constructApplyTextureModeProxy*(state: State, unit: cuint, mode: GLenum, value: bool): ApplyTextureModeProxy {.constructor,importcpp: "osg::State::ApplyTextureModeProxy::ApplyTextureModeProxy(@)".}

proc constructSetCurrentVertexArrayStateProxy*(state: State, vas: ptr Vertexarraystate ): SetCurrentVertexArrayStateProxy {.constructor,importcpp: "osg::State::SetCurrentVertexArrayStateProxy::SetCurrentVertexArrayStateProxy(@)".}

proc constructModeStack*(): ModeStack {.constructor,importcpp: "osg::State::ModeStack::ModeStack".}

proc constructAttributeStack*(): AttributeStack {.constructor,importcpp: "osg::State::AttributeStack::AttributeStack".}

proc constructUniformStack*(): UniformStack {.constructor,importcpp: "osg::State::UniformStack::UniformStack".}

proc constructDefineStack*(): DefineStack {.constructor,importcpp: "osg::State::DefineStack::DefineStack".}

proc constructDefineMap*(): DefineMap {.constructor,importcpp: "osg::State::DefineMap::DefineMap".}

proc setGraphicsContext*(this: var State, context: ptr Graphicscontext )  {.importcpp: "setGraphicsContext".}
    ## Set the graphics context associated with that owns this State object.

proc getGraphicsContext*(this: var State): ptr Graphicscontext   {.importcpp: "getGraphicsContext".}
    ## Get the graphics context associated with that owns this State object.

proc getGraphicsContext*(this: State): ptr Graphicscontext   {.importcpp: "getGraphicsContext".}
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

proc setShaderComposer*(this: var State, sc: ptr Shadercomposer )  {.importcpp: "setShaderComposer".}
    ## deprecated.

proc getShaderComposer*(this: var State): ptr Shadercomposer   {.importcpp: "getShaderComposer".}
    ## deprecated.

proc getShaderComposer*(this: State): ptr Shadercomposer   {.importcpp: "getShaderComposer".}
    ## deprecated.

proc getCurrentShaderCompositionUniformList*(this: var State): Uniformlist  {.importcpp: "getCurrentShaderCompositionUniformList".}
    ## Get the unform list in which to inject any uniforms that
    ## StateAttribute::apply(State&) methods provide.

proc applyShaderCompositionUniform*(this: var State, uniform: ptr Uniform , value: Overridevalue)  {.importcpp: "applyShaderCompositionUniform".}
    ## Convenience method for StateAttribute::apply(State&) methods to pass
    ## on their uniforms to osg::State so it can apply them at the
    ## appropriate point.

proc pushStateSet*(this: var State, dstate: ptr Stateset )  {.importcpp: "pushStateSet".}
    ## Push stateset onto state stack.

proc popStateSet*(this: var State)  {.importcpp: "popStateSet".}
    ## Pop stateset off state stack.

proc popAllStateSets*(this: var State)  {.importcpp: "popAllStateSets".}
    ## pop all statesets off state stack, ensuring it is empty ready for the
    ## next frame. Note, to return OpenGL to default state, one should do any
    ## state.popAllStatSets(); state.apply().

proc insertStateSet*(this: var State, pos: cuint, dstate: ptr Stateset )  {.importcpp: "insertStateSet".}
    ## Insert stateset onto state stack.

proc removeStateSet*(this: var State, pos: cuint)  {.importcpp: "removeStateSet".}
    ## Pop stateset off state stack.

proc getStateSetStackSize*(this: var State): cuint  {.importcpp: "getStateSetStackSize".}
    ## Get the number of StateSet's on the StateSet stack.

proc popStateSetStackToSize*(this: var State, size: cuint)  {.importcpp: "popStateSetStackToSize".}
    ## Pop StateSet's for the StateSet stack till its size equals the
    ## specified size.

proc getStateSetStack*(this: var State): Statesetstack  {.importcpp: "getStateSetStack".}
    ## Get the StateSet stack.

proc captureCurrentState*(this: State, stateset: Stateset)  {.importcpp: "captureCurrentState".}
    ## Copy the modes and attributes which capture the current state.

proc releaseGLObjects*(this: var State)  {.importcpp: "releaseGLObjects".}
    ## Release all OpenGL objects associated cached by this osg::State
    ## object.

proc reset*(this: var State)  {.importcpp: "reset".}
    ## reset the state object to an empty stack.

proc getCurrentViewport*(this: State): ptr Viewport   {.importcpp: "getCurrentViewport".}

proc setInitialViewMatrix*(this: var State, matrix: ptr Refmatrix )  {.importcpp: "setInitialViewMatrix".}

proc getInitialViewMatrix*(this: State): Matrix  {.importcpp: "getInitialViewMatrix".}

proc getInitialInverseViewMatrix*(this: State): Matrix  {.importcpp: "getInitialInverseViewMatrix".}

proc applyProjectionMatrix*(this: var State, matrix: ptr Refmatrix )  {.importcpp: "applyProjectionMatrix".}

proc getProjectionMatrix*(this: State): Matrix  {.importcpp: "getProjectionMatrix".}

proc applyModelViewMatrix*(this: var State, matrix: ptr Refmatrix )  {.importcpp: "applyModelViewMatrix".}

proc applyModelViewMatrix*(this: var State, Matrix)  {.importcpp: "applyModelViewMatrix".}

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

proc setVertexAlias*(this: var State, alias: Vertexattribalias)  {.importcpp: "setVertexAlias".}
    ## Set the vertex attribute aliasing for "vertex". This method needs to
    ## be called before render anything unless you really know what you're
    ## doing !

proc getVertexAlias*(this: var State): Vertexattribalias  {.importcpp: "getVertexAlias".}

proc setNormalAlias*(this: var State, alias: Vertexattribalias)  {.importcpp: "setNormalAlias".}
    ## Set the vertex attribute aliasing for "normal". This method needs to
    ## be called before render anything unless you really know what you're
    ## doing !

proc getNormalAlias*(this: var State): Vertexattribalias  {.importcpp: "getNormalAlias".}

proc setColorAlias*(this: var State, alias: Vertexattribalias)  {.importcpp: "setColorAlias".}
    ## Set the vertex attribute aliasing for "color". This method needs to be
    ## called before render anything unless you really know what you're doing
    ## !

proc getColorAlias*(this: var State): Vertexattribalias  {.importcpp: "getColorAlias".}

proc setSecondaryColorAlias*(this: var State, alias: Vertexattribalias)  {.importcpp: "setSecondaryColorAlias".}
    ## Set the vertex attribute aliasing for "secondary color". This method
    ## needs to be called before render anything unless you really know what
    ## you're doing !

proc getSecondaryColorAlias*(this: var State): Vertexattribalias  {.importcpp: "getSecondaryColorAlias".}

proc setFogCoordAlias*(this: var State, alias: Vertexattribalias)  {.importcpp: "setFogCoordAlias".}
    ## Set the vertex attribute aliasing for "fog coord". This method needs
    ## to be called before render anything unless you really know what you're
    ## doing !

proc getFogCoordAlias*(this: var State): Vertexattribalias  {.importcpp: "getFogCoordAlias".}

proc setTexCoordAliasList*(this: var State, aliasList: Vertexattribaliaslist)  {.importcpp: "setTexCoordAliasList".}
    ## Set the vertex attribute aliasing list for texture coordinates. This
    ## method needs to be called before render anything unless you really
    ## know what you're doing !

proc getTexCoordAliasList*(this: var State): Vertexattribaliaslist  {.importcpp: "getTexCoordAliasList".}

proc setAttributeBindingList*(this: var State, attribBindingList: Attribbindinglist)  {.importcpp: "setAttributeBindingList".}
    ## Set the vertex attribute binding list. This method needs to be called
    ## before render anything unless you really know what you're doing !

proc getAttributeBindingList*(this: var State): Attribbindinglist  {.importcpp: "getAttributeBindingList".}

proc convertVertexShaderSourceToOsgBuiltIns*(this: State, source: String): bool  {.importcpp: "convertVertexShaderSourceToOsgBuiltIns".}

proc apply*(this: var State, dstate: ptr Stateset )  {.importcpp: "apply".}
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

proc setModeValidity*(this: var State, mode: Glmode, valid: bool)  {.importcpp: "setModeValidity".}
    ## Set whether a particular OpenGL mode is valid in the current graphics
    ## context. Use to disable OpenGL modes that are not supported by current
    ## graphics drivers/context.

proc getModeValidity*(this: var State, mode: Glmode): bool  {.importcpp: "getModeValidity".}
    ## Get whether a particular OpenGL mode is valid in the current graphics
    ## context. Use to disable OpenGL modes that are not supported by current
    ## graphics drivers/context.

proc setGlobalDefaultModeValue*(this: var State, mode: Glmode, enabled: bool)  {.importcpp: "setGlobalDefaultModeValue".}

proc getGlobalDefaultModeValue*(this: var State, mode: Glmode): bool  {.importcpp: "getGlobalDefaultModeValue".}

proc getLastAppliedModeValue*(this: var State, mode: Glmode): bool  {.importcpp: "getLastAppliedModeValue".}

proc applyMode*(this: var State, mode: Glmode, enabled: bool): bool  {.importcpp: "applyMode".}
    ## Apply an OpenGL mode if required. This is a wrapper around glEnable()
    ## and glDisable(), that just actually calls these functions if the
    ## enabled flag is different than the current state.

proc setGlobalDefaultTextureModeValue*(this: var State, unit: cuint, mode: Glmode, enabled: bool)  {.importcpp: "setGlobalDefaultTextureModeValue".}

proc getGlobalDefaultTextureModeValue*(this: var State, unit: cuint, mode: Glmode): bool  {.importcpp: "getGlobalDefaultTextureModeValue".}

proc applyTextureMode*(this: var State, unit: cuint, mode: Glmode, enabled: bool): bool  {.importcpp: "applyTextureMode".}

proc getLastAppliedTextureModeValue*(this: var State, unit: cuint, mode: Glmode): bool  {.importcpp: "getLastAppliedTextureModeValue".}

proc setGlobalDefaultAttribute*(this: var State, attribute: ptr Stateattribute )  {.importcpp: "setGlobalDefaultAttribute".}

proc getGlobalDefaultAttribute*(this: var State, `type`: Type, member: cuint = 0): ptr Stateattribute   {.importcpp: "getGlobalDefaultAttribute".}

proc applyAttribute*(this: var State, attribute: ptr Stateattribute ): bool  {.importcpp: "applyAttribute".}
    ## Apply an attribute if required.

proc setGlobalDefaultTextureAttribute*(this: var State, unit: cuint, attribute: ptr Stateattribute )  {.importcpp: "setGlobalDefaultTextureAttribute".}

proc getGlobalDefaultTextureAttribute*(this: var State, unit: cuint, `type`: Type, member: cuint = 0): ptr Stateattribute   {.importcpp: "getGlobalDefaultTextureAttribute".}

proc applyTextureAttribute*(this: var State, unit: cuint, attribute: ptr Stateattribute ): bool  {.importcpp: "applyTextureAttribute".}

proc haveAppliedMode*(this: var State, mode: Glmode, value: Glmodevalue)  {.importcpp: "haveAppliedMode".}
    ## Mode has been set externally, update state to reflect this setting.

proc haveAppliedMode*(this: var State, mode: Glmode)  {.importcpp: "haveAppliedMode".}
    ## Mode has been set externally, therefore dirty the associated mode in
    ## osg::State so it is applied on next call to osg::State::apply(..)

proc haveAppliedAttribute*(this: var State, attribute: ptr Stateattribute )  {.importcpp: "haveAppliedAttribute".}
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

proc getLastAppliedMode*(this: State, mode: Glmode): bool  {.importcpp: "getLastAppliedMode".}
    ## Get whether the current specified mode is enabled (true) or disabled
    ## (false).

proc getLastAppliedAttribute*(this: State, `type`: Type, member: cuint = 0): ptr Stateattribute   {.importcpp: "getLastAppliedAttribute".}
    ## Get the current specified attribute, return NULL if one has not yet
    ## been applied.

proc haveAppliedTextureMode*(this: var State, unit: cuint, mode: Glmode, value: Glmodevalue)  {.importcpp: "haveAppliedTextureMode".}
    ## texture Mode has been set externally, update state to reflect this
    ## setting.

proc haveAppliedTextureMode*(this: var State, unit: cuint, mode: Glmode)  {.importcpp: "haveAppliedTextureMode".}
    ## texture Mode has been set externally, therefore dirty the associated
    ## mode in osg::State so it is applied on next call to
    ## osg::State::apply(..)

proc haveAppliedTextureAttribute*(this: var State, unit: cuint, attribute: ptr Stateattribute )  {.importcpp: "haveAppliedTextureAttribute".}
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

proc getLastAppliedTextureMode*(this: State, unit: cuint, mode: Glmode): bool  {.importcpp: "getLastAppliedTextureMode".}
    ## Get whether the current specified texture mode is enabled (true) or
    ## disabled (false).

proc getLastAppliedTextureAttribute*(this: State, unit: cuint, `type`: Type, member: cuint = 0): ptr Stateattribute   {.importcpp: "getLastAppliedTextureAttribute".}
    ## Get the current specified texture attribute, return NULL if one has
    ## not yet been applied.

proc dirtyAllModes*(this: var State)  {.importcpp: "dirtyAllModes".}
    ## Dirty the modes previously applied in osg::State.

proc dirtyAllAttributes*(this: var State)  {.importcpp: "dirtyAllAttributes".}
    ## Dirty the modes attributes previously applied in osg::State.

proc setCurrentVertexArrayState*(this: var State, vas: ptr Vertexarraystate )  {.importcpp: "setCurrentVertexArrayState".}
    ## Set the CurrentVetexArrayState object that take which vertex arrays
    ## are bound.

proc getCurrentVertexArrayState*(this: State): ptr Vertexarraystate   {.importcpp: "getCurrentVertexArrayState".}
    ## Get the CurrentVetexArrayState object that take which vertex arrays
    ## are bound.

proc setCurrentToGlobalVertexArrayState*(this: var State)  {.importcpp: "setCurrentToGlobalVertexArrayState".}
    ## Set the getCurrentVertexArrayState to the GlobalVertexArrayState.

proc resetCurrentVertexArrayStateOnMatch*(this: var State, vas: ptr Vertexarraystate )  {.importcpp: "resetCurrentVertexArrayStateOnMatch".}
    ## Reset the CurrentVertexArrayState/VertexArrayObject if it's value
    ## matches the specificied vas - use when deleting a vas.

proc disableAllVertexArrays*(this: var State)  {.importcpp: "disableAllVertexArrays".}
    ## disable the vertex, normal, color, tex coords, secondary color, fog
    ## coord and index arrays.

proc lazyDisablingOfVertexAttributes*(this: var State)  {.importcpp: "lazyDisablingOfVertexAttributes".}

proc applyDisablingOfVertexAttributes*(this: var State)  {.importcpp: "applyDisablingOfVertexAttributes".}

proc setCurrentVertexBufferObject*(this: var State, vbo: ptr Glbufferobject )  {.importcpp: "setCurrentVertexBufferObject".}

proc getCurrentVertexBufferObject*(this: var State): ptr Glbufferobject   {.importcpp: "getCurrentVertexBufferObject".}

proc bindVertexBufferObject*(this: var State, vbo: ptr Glbufferobject )  {.importcpp: "bindVertexBufferObject".}

proc unbindVertexBufferObject*(this: var State)  {.importcpp: "unbindVertexBufferObject".}

proc setCurrentElementBufferObject*(this: var State, ebo: ptr Glbufferobject )  {.importcpp: "setCurrentElementBufferObject".}

proc getCurrentElementBufferObject*(this: var State): ptr Glbufferobject   {.importcpp: "getCurrentElementBufferObject".}

proc bindElementBufferObject*(this: var State, ebo: ptr Glbufferobject )  {.importcpp: "bindElementBufferObject".}

proc unbindElementBufferObject*(this: var State)  {.importcpp: "unbindElementBufferObject".}

proc setCurrentPixelBufferObject*(this: var State, pbo: ptr Glbufferobject )  {.importcpp: "setCurrentPixelBufferObject".}

proc getCurrentPixelBufferObject*(this: State): ptr Glbufferobject   {.importcpp: "getCurrentPixelBufferObject".}

proc bindPixelBufferObject*(this: var State, pbo: ptr Glbufferobject )  {.importcpp: "bindPixelBufferObject".}

proc unbindPixelBufferObject*(this: var State)  {.importcpp: "unbindPixelBufferObject".}

proc bindDrawIndirectBufferObject*(this: var State, ibo: ptr Glbufferobject )  {.importcpp: "bindDrawIndirectBufferObject".}

proc unbindDrawIndirectBufferObject*(this: var State)  {.importcpp: "unbindDrawIndirectBufferObject".}

proc setCurrentVertexArrayObject*(this: var State, vao: GLuint)  {.importcpp: "setCurrentVertexArrayObject".}

proc getCurrentVertexArrayObject*(this: State): GLuint  {.importcpp: "getCurrentVertexArrayObject".}

proc bindVertexArrayObject*(this: var State, vas: ptr Vertexarraystate )  {.importcpp: "bindVertexArrayObject".}

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

proc setLastAppliedProgramObject*(this: var State, program: ptr Percontextprogram )  {.importcpp: "setLastAppliedProgramObject".}

proc getLastAppliedProgramObject*(this: State): ptr Percontextprogram   {.importcpp: "getLastAppliedProgramObject".}

proc getUniformLocation*(this: State, uniformNameID: cuint): GLint  {.importcpp: "getUniformLocation".}

proc getUniformLocation*(this: State, uniformName: String): GLint  {.importcpp: "getUniformLocation".}
    ## Alternative version of getUniformLocation( unsigned int uniformNameID
    ## ) retrofited into OSG for backward compatibility with osgCal, after
    ## uniform ids were refactored from std::strings to GLints in OSG version
    ## 2.9.10.

proc getAttribLocation*(this: State, name: String): GLint  {.importcpp: "getAttribLocation".}

proc getAttributeVec*(this: var State, attribute: ptr Stateattribute ): Attributevec  {.importcpp: "getAttributeVec".}

proc setFrameStamp*(this: var State, fs: ptr Framestamp )  {.importcpp: "setFrameStamp".}
    ## Set the frame stamp for the current frame.

proc getFrameStamp*(this: var State): ptr Framestamp   {.importcpp: "getFrameStamp".}
    ## Get the frame stamp for the current frame.

proc getFrameStamp*(this: State): ptr Framestamp   {.importcpp: "getFrameStamp".}
    ## Get the const frame stamp for the current frame.

proc setDisplaySettings*(this: var State, vs: ptr Displaysettings )  {.importcpp: "setDisplaySettings".}
    ## Set the DisplaySettings. Note, nothing is applied, the visual settings
    ## are just used in the State object to pass the current visual settings
    ## to Drawables during rendering.

proc getDisplaySettings*(this: State): ptr Displaysettings   {.importcpp: "getDisplaySettings".}
    ## Get the const DisplaySettings

proc getActiveDisplaySettings*(this: var State): ptr Displaysettings   {.importcpp: "getActiveDisplaySettings".}
    ## Get the DisplaySettings that is current active DisplaySettings to be
    ## used by osg::State, - if DisplaySettings is not directly assigned then
    ## fallback to DisplaySettings::instance().

proc getActiveDisplaySettings*(this: State): ptr Displaysettings   {.importcpp: "getActiveDisplaySettings".}
    ## Get the const DisplaySettings that is current active DisplaySettings
    ## to be used by osg::State, - if DisplaySettings is not directly
    ## assigned then fallback to DisplaySettings::instance().

proc setAbortRenderingPtr*(this: var State, abortPtr: ptr bool)  {.importcpp: "setAbortRenderingPtr".}
    ## Set flag for early termination of the draw traversal.

proc getAbortRendering*(this: State): bool  {.importcpp: "getAbortRendering".}
    ## Get flag for early termination of the draw traversal, if true steps
    ## should be taken to complete rendering early.

proc completed*(this: var DynamicObjectRenderingCompletedCallback, ptr State )  {.importcpp: "completed".}

proc setDynamicObjectRenderingCompletedCallback*(this: var State, cb: ptr Dynamicobjectrenderingcompletedcallback )  {.importcpp: "setDynamicObjectRenderingCompletedCallback".}
    ## Set the callback to be called when the dynamic object count hits 0.

proc getDynamicObjectRenderingCompletedCallback*(this: var State): ptr Dynamicobjectrenderingcompletedcallback   {.importcpp: "getDynamicObjectRenderingCompletedCallback".}
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

proc setCheckForGLErrors*(this: var State, check: Checkforglerrors)  {.importcpp: "setCheckForGLErrors".}
    ## Set whether and how often OpenGL errors should be checked for.

proc getCheckForGLErrors*(this: State): Checkforglerrors  {.importcpp: "getCheckForGLErrors".}
    ## Get whether and how often OpenGL errors should be checked for.

proc checkGLErrors*(this: State, str1: cstring = 0, str2: cstring = 0): bool  {.importcpp: "checkGLErrors".}

proc checkGLErrors*(this: State, mode: Glmode): bool  {.importcpp: "checkGLErrors".}

proc checkGLErrors*(this: State, attribute: ptr Stateattribute ): bool  {.importcpp: "checkGLErrors".}

proc print*(this: State, fout: Ostream)  {.importcpp: "print".}
    ## print out the internal details of osg::State - useful for debugging.

proc initializeExtensionProcs*(this: var State)  {.importcpp: "initializeExtensionProcs".}
    ## Initialize extension used by osg::State.

proc getAttributeDispatchers*(this: var State): Attributedispatchers  {.importcpp: "getAttributeDispatchers".}
    ## Get the helper class for dispatching osg::Arrays as OpenGL attribute
    ## data.

proc setGraphicsCostEstimator*(this: var State, gce: ptr Graphicscostestimator )  {.importcpp: "setGraphicsCostEstimator".}
    ## Set the helper class that provides applications with estimate on how
    ## much different graphics operations will cost.

proc getGraphicsCostEstimator*(this: var State): ptr Graphicscostestimator   {.importcpp: "getGraphicsCostEstimator".}
    ## Get the helper class that provides applications with estimate on how
    ## much different graphics operations will cost.

proc getGraphicsCostEstimator*(this: State): ptr Graphicscostestimator   {.importcpp: "getGraphicsCostEstimator".}
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

proc print*(this: ModeStack, fout: Ostream)  {.importcpp: "print".}

proc print*(this: AttributeStack, fout: Ostream)  {.importcpp: "print".}

proc print*(this: UniformStack, fout: Ostream)  {.importcpp: "print".}

proc print*(this: DefineStack, fout: Ostream)  {.importcpp: "print".}

proc updateCurrentDefines*(this: var DefineMap): bool  {.importcpp: "updateCurrentDefines".}

proc getModeMap*(this: State): Modemap  {.importcpp: "getModeMap".}

proc getAttributeMap*(this: State): Attributemap  {.importcpp: "getAttributeMap".}

proc getUniformMap*(this: State): Uniformmap  {.importcpp: "getUniformMap".}

proc getDefineMap*(this: var State): Definemap  {.importcpp: "getDefineMap".}

proc getDefineMap*(this: State): Definemap  {.importcpp: "getDefineMap".}

proc getTextureModeMapList*(this: State): Texturemodemaplist  {.importcpp: "getTextureModeMapList".}

proc getTextureAttributeMapList*(this: State): Textureattributemaplist  {.importcpp: "getTextureAttributeMapList".}

proc getDefineString*(this: var State, shaderDefines: Shaderdefines): String  {.importcpp: "getDefineString".}

proc supportsShaderRequirements*(this: var State, shaderRequirements: Shaderdefines): bool  {.importcpp: "supportsShaderRequirements".}

proc supportsShaderRequirement*(this: var State, shaderRequirement: String): bool  {.importcpp: "supportsShaderRequirement".}

proc setUpVertexAttribAlias*(this: var State, alias: Vertexattribalias, location: GLuint, glName: String, osgName: String, declaration: String)  {.importcpp: "setUpVertexAttribAlias".}

proc applyMode*(this: var State, mode: Glmode, enabled: bool, ms: Modestack): bool  {.importcpp: "applyMode".}
    ## Apply an OpenGL mode if required, passing in mode, enable flag and
    ## appropriate mode stack. This is a wrapper around glEnable() and
    ## glDisable(), that just actually calls these functions if the enabled
    ## flag is different than the current state.

proc applyModeOnTexUnit*(this: var State, unit: cuint, mode: Glmode, enabled: bool, ms: Modestack): bool  {.importcpp: "applyModeOnTexUnit".}

proc applyAttribute*(this: var State, attribute: ptr Stateattribute , `as`: Attributestack): bool  {.importcpp: "applyAttribute".}
    ## apply an attribute if required, passing in attribute and appropriate
    ## attribute stack

proc applyAttributeOnTexUnit*(this: var State, unit: cuint, attribute: ptr Stateattribute , `as`: Attributestack): bool  {.importcpp: "applyAttributeOnTexUnit".}

proc applyGlobalDefaultAttribute*(this: var State, `as`: Attributestack): bool  {.importcpp: "applyGlobalDefaultAttribute".}

proc applyGlobalDefaultAttributeOnTexUnit*(this: var State, unit: cuint, `as`: Attributestack): bool  {.importcpp: "applyGlobalDefaultAttributeOnTexUnit".}

proc getOrCreateTextureModeMap*(this: var State, unit: cuint): Modemap  {.importcpp: "getOrCreateTextureModeMap".}

proc getOrCreateTextureAttributeMap*(this: var State, unit: cuint): Attributemap  {.importcpp: "getOrCreateTextureAttributeMap".}

proc pushModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "pushModeList".}

proc pushAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "pushAttributeList".}

proc pushUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "pushUniformList".}

proc pushDefineList*(this: var State, defineMap: Definemap, defineList: Definelist)  {.importcpp: "pushDefineList".}

proc popModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "popModeList".}

proc popAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "popAttributeList".}

proc popUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "popUniformList".}

proc popDefineList*(this: var State, uniformMap: Definemap, defineList: Definelist)  {.importcpp: "popDefineList".}

proc applyModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "applyModeList".}

proc applyAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "applyAttributeList".}

proc applyUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "applyUniformList".}

proc applyDefineList*(this: var State, uniformMap: Definemap, defineList: Definelist)  {.importcpp: "applyDefineList".}

proc applyModeMap*(this: var State, modeMap: Modemap)  {.importcpp: "applyModeMap".}

proc applyAttributeMap*(this: var State, attributeMap: Attributemap)  {.importcpp: "applyAttributeMap".}

proc applyUniformMap*(this: var State, uniformMap: Uniformmap)  {.importcpp: "applyUniformMap".}

proc applyModeListOnTexUnit*(this: var State, unit: cuint, modeMap: Modemap, modeList: Modelist)  {.importcpp: "applyModeListOnTexUnit".}

proc applyAttributeListOnTexUnit*(this: var State, unit: cuint, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "applyAttributeListOnTexUnit".}

proc applyModeMapOnTexUnit*(this: var State, unit: cuint, modeMap: Modemap)  {.importcpp: "applyModeMapOnTexUnit".}

proc applyAttributeMapOnTexUnit*(this: var State, unit: cuint, attributeMap: Attributemap)  {.importcpp: "applyAttributeMapOnTexUnit".}

proc haveAppliedMode*(this: var State, modeMap: Modemap, mode: Glmode, value: Glmodevalue)  {.importcpp: "haveAppliedMode".}

proc haveAppliedMode*(this: var State, modeMap: Modemap, mode: Glmode)  {.importcpp: "haveAppliedMode".}

proc haveAppliedAttribute*(this: var State, attributeMap: Attributemap, attribute: ptr Stateattribute )  {.importcpp: "haveAppliedAttribute".}

proc haveAppliedAttribute*(this: var State, attributeMap: Attributemap, `type`: Type, member: cuint)  {.importcpp: "haveAppliedAttribute".}

proc getLastAppliedMode*(this: State, modeMap: Modemap, mode: Glmode): bool  {.importcpp: "getLastAppliedMode".}

proc getLastAppliedAttribute*(this: State, attributeMap: Attributemap, `type`: Type, member: cuint): ptr Stateattribute   {.importcpp: "getLastAppliedAttribute".}

proc loadModelViewMatrix*(this: var State)  {.importcpp: "loadModelViewMatrix".}

proc pushModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "pushModeList".}

proc pushAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "pushAttributeList".}

proc pushUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "pushUniformList".}

proc pushDefineList*(this: var State, defineMap: Definemap, defineList: Definelist)  {.importcpp: "pushDefineList".}

proc popModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "popModeList".}

proc popAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "popAttributeList".}

proc popUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "popUniformList".}

proc popDefineList*(this: var State, defineMap: Definemap, defineList: Definelist)  {.importcpp: "popDefineList".}

proc applyModeList*(this: var State, modeMap: Modemap, modeList: Modelist)  {.importcpp: "applyModeList".}

proc applyModeListOnTexUnit*(this: var State, unit: cuint, modeMap: Modemap, modeList: Modelist)  {.importcpp: "applyModeListOnTexUnit".}

proc applyAttributeList*(this: var State, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "applyAttributeList".}

proc applyAttributeListOnTexUnit*(this: var State, unit: cuint, attributeMap: Attributemap, attributeList: Attributelist)  {.importcpp: "applyAttributeListOnTexUnit".}

proc applyUniformList*(this: var State, uniformMap: Uniformmap, uniformList: Uniformlist)  {.importcpp: "applyUniformList".}

proc applyDefineList*(this: var State, defineMap: Definemap, defineList: Definelist)  {.importcpp: "applyDefineList".}

proc applyModeMap*(this: var State, modeMap: Modemap)  {.importcpp: "applyModeMap".}

proc applyModeMapOnTexUnit*(this: var State, unit: cuint, modeMap: Modemap)  {.importcpp: "applyModeMapOnTexUnit".}

proc applyAttributeMap*(this: var State, attributeMap: Attributemap)  {.importcpp: "applyAttributeMap".}

proc applyAttributeMapOnTexUnit*(this: var State, unit: cuint, attributeMap: Attributemap)  {.importcpp: "applyAttributeMapOnTexUnit".}

proc applyUniformMap*(this: var State, uniformMap: Uniformmap)  {.importcpp: "applyUniformMap".}

proc setActiveTextureUnit*(this: var State, unit: cuint): bool  {.importcpp: "setActiveTextureUnit".}
    ## Set the current texture unit, return true if selected, false if
    ## selection failed such as when multi texturing is not supported. note,
    ## only updates values that change.

proc get*(this: var State): ptr Glextensions   {.importcpp: "get".}

proc get*(this: State): ptr Glextensions   {.importcpp: "get".}

proc set*(this: var State, `ptr`: ptr Glextensions )  {.importcpp: "set".}

{.pop.}  # header: "State"
