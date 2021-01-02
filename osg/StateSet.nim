import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute
  # File: Node  was providing: osg::Node
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Uniform  was providing: osg::Uniform
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  RenderingHint* {.size:sizeof(cuint),header: "StateSet", importcpp: "osg::StateSet::RenderingHint", pure.} = enum
    DEFAULT_BIN = 0,
    OPAQUE_BIN = 1,
    TRANSPARENT_BIN = 2

  RenderBinMode* {.size:sizeof(cuint),header: "StateSet", importcpp: "osg::StateSet::RenderBinMode", pure.} = enum
    INHERIT_RENDERBIN_DETAILS = 0,
    USE_RENDERBIN_DETAILS = 1,
    OVERRIDE_RENDERBIN_DETAILS = 2,
    PROTECTED_RENDERBIN_DETAILS = 4,
    OVERRIDE_PROTECTED_RENDERBIN_DETAILS = 6

  ParentList* {.header: "StateSet", importcpp: "osg::StateSet::ParentList".} = cint
  ModeList* {.header: "StateSet", importcpp: "osg::StateSet::ModeList".} = cint
  RefAttributePair* {.header: "StateSet", importcpp: "osg::StateSet::RefAttributePair".} = pair[ref_ptr<StateAttribute]
  AttributeList* {.header: "StateSet", importcpp: "osg::StateSet::AttributeList".} = cint
  TextureModeList* {.header: "StateSet", importcpp: "osg::StateSet::TextureModeList".} = cint
  TextureAttributeList* {.header: "StateSet", importcpp: "osg::StateSet::TextureAttributeList".} = cint
  RefUniformPair* {.header: "StateSet", importcpp: "osg::StateSet::RefUniformPair".} = pair[ref_ptr<Uniform]
  UniformList* {.header: "StateSet", importcpp: "osg::StateSet::UniformList".} = cint
  DefinePair* {.header: "StateSet", importcpp: "osg::StateSet::DefinePair".} = pair[string,OverrideValue]
  DefineList* {.header: "StateSet", importcpp: "osg::StateSet::DefineList".} = cint


{.push header: "StateSet".}

proc constructStateSet*(): StateSet {.constructor,importcpp: "osg::StateSet::StateSet".}

proc constructStateSet*(a00: StateSet, copyop: CopyOp = SHALLOW_COPY): StateSet {.constructor,importcpp: "osg::StateSet::StateSet(@)".}

proc constructCallback*(): Callback {.constructor,importcpp: "osg::StateSet::Callback::Callback".}

proc constructCallback*(org: Callback, copyop: CopyOp): Callback {.constructor,importcpp: "osg::StateSet::Callback::Callback(@)".}

proc cloneType*(this: StateSet): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: StateSet, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: StateSet, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: StateSet): cstring  {.importcpp: "libraryName".}

proc className*(this: StateSet): cstring  {.importcpp: "className".}

proc compare*(this: StateSet, rhs: StateSet, compareAttributeContents: bool): cint  {.importcpp: "compare".}
    ## return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `<`*(this: StateSet, rhs: StateSet): bool  {.importcpp: "# < #".}

proc `==`*(this: StateSet, rhs: StateSet): bool  {.importcpp: "# == #".}

proc `!=`*(this: StateSet, rhs: StateSet): bool  {.importcpp: "# != #".}

proc asStateSet*(this: var StateSet): ptr StateSet   {.importcpp: "asStateSet".}
    ## Convert 'this' into a StateSet pointer if Object is a StateSet,
    ## otherwise return 0. Equivalent to dynamic_cast<StateSet*>(this).

proc asStateSet*(this: StateSet): ptr StateSet   {.importcpp: "asStateSet".}
    ## convert 'const this' into a const StateSet pointer if Object is a
    ## StateSet, otherwise return 0. Equivalent to dynamic_cast<const
    ## StateSet*>(this).

proc getParents*(this: StateSet): ParentList  {.importcpp: "getParents".}
    ## Get the parent list of this StateSet.

proc getParents*(this: var StateSet): ParentList  {.importcpp: "getParents".}
    ## Get the a copy of parent list of node. A copy is returned to prevent
    ## modification of the parent list.

proc getParent*(this: var StateSet, i: cuint): ptr Node   {.importcpp: "getParent".}

proc getParent*(this: StateSet, i: cuint): ptr Node   {.importcpp: "getParent".}
    ## Get a single const parent of this StateSet.

proc getNumParents*(this: StateSet): cuint  {.importcpp: "getNumParents".}
    ## Get the number of parents of this StateSet.

proc computeDataVariance*(this: var StateSet)  {.importcpp: "computeDataVariance".}
    ## Compute the DataVariance based on an assessment of callback etc.

proc setGlobalDefaults*(this: var StateSet)  {.importcpp: "setGlobalDefaults".}
    ## Set all the modes to on or off so that it defines a complete state,
    ## typically used for a default global state.

proc clear*(this: var StateSet)  {.importcpp: "clear".}
    ## Clear the StateSet of all modes and attributes.

proc merge*(this: var StateSet, rhs: StateSet)  {.importcpp: "merge".}
    ## Merge this StateSet with the StateSet passed as parameter. Every mode
    ## and attribute in this StateSet that is marked with
    ## StateAttribute::OVERRIDE is replaced with the equivalent mode or
    ## attribute from rhs.

proc setMode*(this: var StateSet, mode: GLMode, value: GLModeValue)  {.importcpp: "setMode".}
    ## Set this StateSet to contain the specified GLMode with a given value.

proc removeMode*(this: var StateSet, mode: GLMode)  {.importcpp: "removeMode".}
    ## Remove mode from this StateSet.

proc getMode*(this: StateSet, mode: GLMode): GLModeValue  {.importcpp: "getMode".}
    ## Get the value for a given GLMode.

proc setModeList*(this: var StateSet, ml: ModeList)  {.importcpp: "setModeList".}
    ## Set the list of all GLModes contained in this StateSet.

proc getModeList*(this: var StateSet): ModeList  {.importcpp: "getModeList".}
    ## Return the list of all GLModes contained in this StateSet.

proc getModeList*(this: StateSet): ModeList  {.importcpp: "getModeList".}
    ## Return the const list of all GLModes contained in this const StateSet.

proc setAttribute*(this: var StateSet, attribute: ptr StateAttribute , value: OverrideValue)  {.importcpp: "setAttribute".}
    ## Set this StateSet to contain specified attribute and override flag.

proc setAttributeAndModes*(this: var StateSet, attribute: ptr StateAttribute , value: GLModeValue)  {.importcpp: "setAttributeAndModes".}
    ## Set this StateSet to contain specified attribute and set the
    ## associated GLMode's to specified value.

proc removeAttribute*(this: var StateSet, `type`: Type, member: cuint = 0)  {.importcpp: "removeAttribute".}
    ## remove attribute of specified type from StateSet.

proc removeAttribute*(this: var StateSet, attribute: ptr StateAttribute )  {.importcpp: "removeAttribute".}
    ## remove attribute from StateSet.

proc getAttribute*(this: var StateSet, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getAttribute".}
    ## Get specified StateAttribute for specified type. Returns NULL if no
    ## type is contained within StateSet.

proc getAttribute*(this: StateSet, `type`: Type, member: cuint = 0): ptr StateAttribute   {.importcpp: "getAttribute".}
    ## Get specified const StateAttribute for specified type. Returns NULL if
    ## no type is contained within const StateSet.

proc getAttributePair*(this: var StateSet, `type`: Type, member: cuint = 0): ptr RefAttributePair   {.importcpp: "getAttributePair".}
    ## Get specified RefAttributePair for specified type. Returns NULL if no
    ## type is contained within StateSet.

proc getAttributePair*(this: StateSet, `type`: Type, member: cuint = 0): ptr RefAttributePair   {.importcpp: "getAttributePair".}
    ## Get specified RefAttributePair for specified type. Returns NULL if no
    ## type is contained within StateSet.

proc setAttributeList*(this: var StateSet, al: AttributeList)  {.importcpp: "setAttributeList".}
    ## set the list of all StateAttributes contained in this StateSet.

proc getAttributeList*(this: var StateSet): AttributeList  {.importcpp: "getAttributeList".}
    ## return the list of all StateAttributes contained in this StateSet.

proc getAttributeList*(this: StateSet): AttributeList  {.importcpp: "getAttributeList".}
    ## return the const list of all StateAttributes contained in this const
    ## StateSet.

proc setTextureMode*(this: var StateSet, unit: cuint, mode: GLMode, value: GLModeValue)  {.importcpp: "setTextureMode".}
    ## Set this StateSet to contain specified GLMode with a given value.

proc removeTextureMode*(this: var StateSet, unit: cuint, mode: GLMode)  {.importcpp: "removeTextureMode".}
    ## Remove texture mode from StateSet.

proc getTextureMode*(this: StateSet, unit: cuint, mode: GLMode): GLModeValue  {.importcpp: "getTextureMode".}
    ## Get specified GLModeValue for specified GLMode. returns INHERIT if no
    ## GLModeValue is contained within StateSet.

proc setTextureModeList*(this: var StateSet, tml: TextureModeList)  {.importcpp: "setTextureModeList".}
    ## set the list of all Texture related GLModes contained in this
    ## StateSet.

proc getTextureModeList*(this: var StateSet): TextureModeList  {.importcpp: "getTextureModeList".}
    ## return the list of all Texture related GLModes contained in this
    ## StateSet.

proc getTextureModeList*(this: StateSet): TextureModeList  {.importcpp: "getTextureModeList".}
    ## return the const list of all Texture related GLModes contained in this
    ## const StateSet.

proc getNumTextureModeLists*(this: StateSet): cuint  {.importcpp: "getNumTextureModeLists".}
    ## Return the number texture units active in the TextureModeList.

proc setTextureAttribute*(this: var StateSet, unit: cuint, attribute: ptr StateAttribute , value: OverrideValue)  {.importcpp: "setTextureAttribute".}
    ## Set this StateSet to contain specified attribute and override flag.

proc setTextureAttributeAndModes*(this: var StateSet, unit: cuint, attribute: ptr StateAttribute , value: GLModeValue)  {.importcpp: "setTextureAttributeAndModes".}
    ## Set this StateSet to contain specified attribute and set the
    ## associated GLMode's to specified value.

proc removeTextureAttribute*(this: var StateSet, unit: cuint, `type`: Type)  {.importcpp: "removeTextureAttribute".}
    ## remove texture attribute of specified type from StateSet.

proc removeTextureAttribute*(this: var StateSet, unit: cuint, attribute: ptr StateAttribute )  {.importcpp: "removeTextureAttribute".}
    ## remove texture attribute from StateSet.

proc getTextureAttribute*(this: var StateSet, unit: cuint, `type`: Type): ptr StateAttribute   {.importcpp: "getTextureAttribute".}
    ## Get specified Texture related StateAttribute for specified type.
    ## Returns NULL if no type is contained within StateSet.

proc getTextureAttribute*(this: StateSet, unit: cuint, `type`: Type): ptr StateAttribute   {.importcpp: "getTextureAttribute".}
    ## Get specified Texture related const StateAttribute for specified type.
    ## Returns NULL if no type is contained within const StateSet.

proc getTextureAttributePair*(this: var StateSet, unit: cuint, `type`: Type): ptr RefAttributePair   {.importcpp: "getTextureAttributePair".}
    ## Get specified Texture related RefAttributePair for specified type.
    ## Returns NULL if no type is contained within StateSet.

proc getTextureAttributePair*(this: StateSet, unit: cuint, `type`: Type): ptr RefAttributePair   {.importcpp: "getTextureAttributePair".}
    ## Get specified Texture related RefAttributePair for specified type.
    ## Returns NULL if no type is contained within StateSet.

proc setTextureAttributeList*(this: var StateSet, tal: TextureAttributeList)  {.importcpp: "setTextureAttributeList".}
    ## Set the list of all Texture related StateAttributes contained in this
    ## StateSet.

proc getTextureAttributeList*(this: var StateSet): TextureAttributeList  {.importcpp: "getTextureAttributeList".}
    ## Return the list of all Texture related StateAttributes contained in
    ## this StateSet.

proc getTextureAttributeList*(this: StateSet): TextureAttributeList  {.importcpp: "getTextureAttributeList".}
    ## Return the const list of all Texture related StateAttributes contained
    ## in this const StateSet.

proc getNumTextureAttributeLists*(this: StateSet): cuint  {.importcpp: "getNumTextureAttributeLists".}
    ## Return the number of texture units active in the TextureAttributeList.

proc setAssociatedModes*(this: var StateSet, attribute: ptr StateAttribute , value: GLModeValue)  {.importcpp: "setAssociatedModes".}

proc removeAssociatedModes*(this: var StateSet, attribute: ptr StateAttribute )  {.importcpp: "removeAssociatedModes".}

proc setAssociatedTextureModes*(this: var StateSet, unit: cuint, attribute: ptr StateAttribute , value: GLModeValue)  {.importcpp: "setAssociatedTextureModes".}

proc removeAssociatedTextureModes*(this: var StateSet, unit: cuint, attribute: ptr StateAttribute )  {.importcpp: "removeAssociatedTextureModes".}

proc addUniform*(this: var StateSet, uniform: ptr Uniform , value: OverrideValue)  {.importcpp: "addUniform".}
    ## Set this StateSet to contain specified uniform and override flag.

proc removeUniform*(this: var StateSet, name: string)  {.importcpp: "removeUniform".}
    ## remove uniform of specified name from StateSet.

proc removeUniform*(this: var StateSet, uniform: ptr Uniform )  {.importcpp: "removeUniform".}
    ## remove Uniform from StateSet.

proc getUniform*(this: var StateSet, name: string): ptr Uniform   {.importcpp: "getUniform".}
    ## Get Uniform for specified name. Returns NULL if no matching Uniform is
    ## contained within StateSet.

proc getOrCreateUniform*(this: var StateSet, name: string, `type`: Type, numElements: cuint = 1): ptr Uniform   {.importcpp: "getOrCreateUniform".}
    ## Get Uniform for specified name, if one is not available create it, add
    ## it to this StateSet and return a pointer to it.

proc getUniform*(this: StateSet, name: string): ptr Uniform   {.importcpp: "getUniform".}
    ## Get const Uniform for specified name. Returns NULL if no matching
    ## Uniform is contained within StateSet.

proc getUniformPair*(this: StateSet, name: string): ptr RefUniformPair   {.importcpp: "getUniformPair".}
    ## Get specified RefUniformPair for specified Uniform name. Returns NULL
    ## if no Uniform is contained within StateSet.

proc setUniformList*(this: var StateSet, al: UniformList)  {.importcpp: "setUniformList".}
    ## set the list of all Uniforms contained in this StateSet.

proc getUniformList*(this: var StateSet): UniformList  {.importcpp: "getUniformList".}
    ## return the list of all Uniforms contained in this StateSet.

proc getUniformList*(this: StateSet): UniformList  {.importcpp: "getUniformList".}
    ## return the const list of all Uniforms contained in this const
    ## StateSet.

proc setDefine*(this: var StateSet, defineName: string, value: OverrideValue)  {.importcpp: "setDefine".}
    ## Added define pass on to shaders that use utilize that define, as
    ## specified by the GLSL #pragma import_defines(..) and #pragma
    ## requires(..).

proc setDefine*(this: var StateSet, defineName: string, defineValue: string, value: OverrideValue)  {.importcpp: "setDefine".}
    ## Added define with value to pass on to shaders that use utilize that
    ## define, as specified by the GLSL #pragma import_defines(..) and
    ## #pragma requires(..).

proc getDefinePair*(this: var StateSet, defineName: string): ptr DefinePair   {.importcpp: "getDefinePair".}

proc getDefinePair*(this: StateSet, defineName: string): ptr DefinePair   {.importcpp: "getDefinePair".}

proc removeDefine*(this: var StateSet, defineName: string)  {.importcpp: "removeDefine".}
    ## Remove define

proc setDefineList*(this: var StateSet, dl: DefineList)  {.importcpp: "setDefineList".}
    ## Set the list of defines to pass on to shaders.

proc getDefineList*(this: var StateSet): DefineList  {.importcpp: "getDefineList".}
    ## Get the list of defines to pass on to shaders.

proc getDefineList*(this: StateSet): DefineList  {.importcpp: "getDefineList".}
    ## Get the const list of defines to pass on to shaders.

proc setRenderingHint*(this: var StateSet, hint: cint)  {.importcpp: "setRenderingHint".}
    ## Set the RenderingHint of this StateSet. RenderingHint is used by the
    ## renderer to determine which draw bin to drop associated osg::Drawables
    ## in. Typically, users will set this to either StateSet::OPAQUE_BIN or
    ## StateSet::TRANSPARENT_BIN. Drawables in the opaque bin are sorted by
    ## their StateSet, so that the number of expensive changes in the OpenGL
    ## state is minimized. Drawables in the transparent bin are sorted by
    ## depth, so that objects farther from the viewer are rendered first (and
    ## hence alpha blending works nicely for translucent objects).

proc getRenderingHint*(this: StateSet): cint  {.importcpp: "getRenderingHint".}
    ## Get the RenderingHint of this StateSet.

proc setRenderBinDetails*(this: var StateSet, binNum: cint, binName: string, mode: RenderBinMode)  {.importcpp: "setRenderBinDetails".}
    ## Set the render bin details.

proc setRenderBinToInherit*(this: var StateSet)  {.importcpp: "setRenderBinToInherit".}
    ## Set the render bin details to inherit.

proc useRenderBinDetails*(this: StateSet): bool  {.importcpp: "useRenderBinDetails".}
    ## Get whether the render bin details are set and should be used.

proc setRenderBinMode*(this: var StateSet, mode: RenderBinMode)  {.importcpp: "setRenderBinMode".}
    ## Set the render bin mode.

proc getRenderBinMode*(this: StateSet): RenderBinMode  {.importcpp: "getRenderBinMode".}
    ## Get the render bin mode.

proc setBinNumber*(this: var StateSet, num: cint)  {.importcpp: "setBinNumber".}
    ## Set the render bin number.

proc getBinNumber*(this: StateSet): cint  {.importcpp: "getBinNumber".}
    ## Get the render bin number.

proc setBinName*(this: var StateSet, name: string)  {.importcpp: "setBinName".}
    ## Set the render bin name.

proc getBinName*(this: StateSet): string  {.importcpp: "getBinName".}
    ## Get the render bin name.

proc setNestRenderBins*(this: var StateSet, val: bool)  {.importcpp: "setNestRenderBins".}
    ## By default render bins will be nested within each other dependent upon
    ## where they are set in the scene graph. This can be problematic if a
    ## transparent render bin is attached to an opaque render bin which is
    ## attached to another transparent render bin as these render bins will
    ## be sorted separately, giving the wrong draw ordering for back-to-front
    ## transparency. Therefore, to prevent render bins being nested, call
    ## setNestRenderBins(false).

proc getNestRenderBins*(this: StateSet): bool  {.importcpp: "getNestRenderBins".}
    ## Get whether associated RenderBin should be nested within parents
    ## RenderBin.

proc cloneType*(this: Callback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Callback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Callback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Callback): cstring  {.importcpp: "libraryName".}

proc className*(this: Callback): cstring  {.importcpp: "className".}

proc run*(this: var Callback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc `()`*(this: var Callback, a00: ptr StateSet , a01: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## do customized callback code.

proc setUpdateCallback*(this: var StateSet, ac: ptr Callback )  {.importcpp: "setUpdateCallback".}
    ## Set the Update Callback which allows users to attach customize the
    ## updating of an object during the update traversal.

proc getUpdateCallback*(this: var StateSet): ptr Callback   {.importcpp: "getUpdateCallback".}
    ## Get the non const Update Callback.

proc getUpdateCallback*(this: StateSet): ptr Callback   {.importcpp: "getUpdateCallback".}
    ## Get the const Update Callback.

proc requiresUpdateTraversal*(this: StateSet): bool  {.importcpp: "requiresUpdateTraversal".}
    ## Return whether this StateSet has update callbacks associated with it,
    ## and therefore must be traversed.

proc getNumChildrenRequiringUpdateTraversal*(this: StateSet): cuint  {.importcpp: "getNumChildrenRequiringUpdateTraversal".}
    ## Get the number of Objects of this StateSet which require Update
    ## traversal, since they have an Update Callback attached to them or
    ## their children.

proc runUpdateCallbacks*(this: var StateSet, nv: ptr NodeVisitor )  {.importcpp: "runUpdateCallbacks".}
    ## Run the update callbacks attached directly to this StateSet or to its
    ## children.

proc setEventCallback*(this: var StateSet, ac: ptr Callback )  {.importcpp: "setEventCallback".}
    ## Set the Event Callback which allows users to attach customize the
    ## updating of an object during the event traversal.

proc getEventCallback*(this: var StateSet): ptr Callback   {.importcpp: "getEventCallback".}
    ## Get the non const Event Callback.

proc getEventCallback*(this: StateSet): ptr Callback   {.importcpp: "getEventCallback".}
    ## Get the const Event Callback.

proc requiresEventTraversal*(this: StateSet): bool  {.importcpp: "requiresEventTraversal".}
    ## Return whether this StateSet has event callbacks associated with it,
    ## and therefore must be traversed.

proc getNumChildrenRequiringEventTraversal*(this: StateSet): cuint  {.importcpp: "getNumChildrenRequiringEventTraversal".}
    ## Get the number of Objects of this StateSet which require Event
    ## traversal, since they have an Eevnt Callback attached to them or their
    ## children.

proc runEventCallbacks*(this: var StateSet, nv: ptr NodeVisitor )  {.importcpp: "runEventCallbacks".}
    ## Run the event callbacks attached directly to this StateSet or to its
    ## children.

proc checkValidityOfAssociatedModes*(this: StateSet, state: State): bool  {.importcpp: "checkValidityOfAssociatedModes".}
    ## Check the modes associated with this StateSet are supported by current
    ## OpenGL drivers, and if not set the associated mode in osg::State to be
    ## black listed/invalid. Return true if all associated modes are valid.

proc setThreadSafeRefUnref*(this: var StateSet, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc compileGLObjects*(this: StateSet, state: State)  {.importcpp: "compileGLObjects".}
    ## call compile on all StateAttributes contained within this StateSet.

proc resizeGLObjectBuffers*(this: var StateSet, maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: StateSet, state: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## call release on all StateAttributes contained within this StateSet.

proc `=`*(this: var StateSet, a00: StateSet): StateSet  {.importcpp: "# = #".}

proc addParent*(this: var StateSet, `object`: ptr Node )  {.importcpp: "addParent".}

proc removeParent*(this: var StateSet, `object`: ptr Node )  {.importcpp: "removeParent".}

proc getOrCreateTextureModeList*(this: var StateSet, unit: cuint): ModeList  {.importcpp: "getOrCreateTextureModeList".}

proc getOrCreateTextureAttributeList*(this: var StateSet, unit: cuint): AttributeList  {.importcpp: "getOrCreateTextureAttributeList".}

proc compareModes*(this: var StateSet, lhs: ModeList, rhs: ModeList): cint  {.importcpp: "compareModes".}

proc compareAttributePtrs*(this: var StateSet, lhs: AttributeList, rhs: AttributeList): cint  {.importcpp: "compareAttributePtrs".}

proc compareAttributeContents*(this: var StateSet, lhs: AttributeList, rhs: AttributeList): cint  {.importcpp: "compareAttributeContents".}

proc setMode*(this: var StateSet, modeList: ModeList, mode: GLMode, value: GLModeValue)  {.importcpp: "setMode".}

proc setModeToInherit*(this: var StateSet, modeList: ModeList, mode: GLMode)  {.importcpp: "setModeToInherit".}

proc getMode*(this: StateSet, modeList: ModeList, mode: GLMode): GLModeValue  {.importcpp: "getMode".}

proc setAttribute*(this: var StateSet, attributeList: AttributeList, attribute: ptr StateAttribute , value: OverrideValue)  {.importcpp: "setAttribute".}

proc getAttribute*(this: var StateSet, attributeList: AttributeList, `type`: Type, member: cuint): ptr StateAttribute   {.importcpp: "getAttribute".}

proc getAttribute*(this: StateSet, attributeList: AttributeList, `type`: Type, member: cuint): ptr StateAttribute   {.importcpp: "getAttribute".}

proc getAttributePair*(this: var StateSet, attributeList: AttributeList, `type`: Type, member: cuint): ptr RefAttributePair   {.importcpp: "getAttributePair".}

proc getAttributePair*(this: StateSet, attributeList: AttributeList, `type`: Type, member: cuint): ptr RefAttributePair   {.importcpp: "getAttributePair".}

proc setNumChildrenRequiringUpdateTraversal*(this: var StateSet, num: cuint)  {.importcpp: "setNumChildrenRequiringUpdateTraversal".}

proc setNumChildrenRequiringEventTraversal*(this: var StateSet, num: cuint)  {.importcpp: "setNumChildrenRequiringEventTraversal".}

{.pop.}  # header: "StateSet"
