import opengl
import CopyOp
import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: Shader  was providing: osg::ShaderComponent
  # File: Callback  was providing: osg::StateAttributeCallback
  # File: StateSet  was providing: osg::StateSet
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Texture  was providing: osg::Texture
type
  Values* {.size:sizeof(cuint),header: "StateAttribute", importcpp: "osg::StateAttribute::Values", pure.} = enum
    ## list values which can be used to set either GLModeValues or
    ## OverrideValues. When using in conjunction with GLModeValues, all
    ## Values have meaning. When using in conjunction with StateAttribute
    ## OverrideValue only OFF,OVERRIDE and INHERIT are meaningful. However,
    ## they are useful when using GLModeValue and OverrideValue in
    ## conjunction with each other as when using
    ## StateSet::setAttributeAndModes(..).

    OFF = 0,
      ## means that associated GLMode and Override is disabled.
    ON = 1,
      ## means that associated GLMode is enabled and Override is disabled.
    OVERRIDE = 2,
      ## Overriding of GLMode's or StateAttributes is enabled, so that state
      ## below it is overridden.
    PROTECTED = 4,
      ## Protecting of GLMode's or StateAttributes is enabled, so that state
      ## from above cannot override this and below state.
    INHERIT = 8
      ## means that GLMode or StateAttribute should be inherited from above.

  GLMode* {.header: "StateAttribute", importcpp: "osg::StateAttribute::GLMode".} = GLenum
  GLModeValue* {.header: "StateAttribute", importcpp: "osg::StateAttribute::GLModeValue".} = cuint
  OverrideValue* {.header: "StateAttribute", importcpp: "osg::StateAttribute::OverrideValue".} = cuint
  TypeMemberPair* {.header: "StateAttribute", importcpp: "osg::StateAttribute::TypeMemberPair".} = pair[Type,cuint]
  ParentList* {.header: "StateAttribute", importcpp: "osg::StateAttribute::ParentList".} = cint
  Callback* {.header: "StateAttribute", importcpp: "osg::StateAttribute::Callback".} = StateAttributeCallback
  ReassignToParents* {.header: "StateAttribute", importcpp: "osg::StateAttribute::ReassignToParents".} = object

{.push header: "StateAttribute".}

proc constructStateAttribute*(): StateAttribute {.constructor,importcpp: "osg::StateAttribute::StateAttribute".}

proc constructStateAttribute*(sa: StateAttribute, copyop: CopyOp = constructCopyOp(CopyFlags(SHALLOW_COPY))): StateAttribute {.constructor,importcpp: "osg::StateAttribute::StateAttribute(@)".}

proc constructReassignToParents*(att: ptr StateAttribute ): ReassignToParents {.constructor,importcpp: "osg::StateAttribute::ReassignToParents::ReassignToParents(@)".}
    ## Constructor caches and then removes attribute for all of it's parents.

proc cloneType*(this: StateAttribute): ptr Object   {.importcpp: "cloneType".}
    ## Clone the type of an attribute, with Object* return type. Must be
    ## defined by derived classes.

proc clone*(this: StateAttribute, a00: CopyOp): ptr Object   {.importcpp: "clone".}
    ## Clone an attribute, with Object* return type. Must be defined by
    ## derived classes.

proc isSameKindAs*(this: StateAttribute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}
    ## Return true if this and obj are of the same kind of object.

proc libraryName*(this: StateAttribute): cstring  {.importcpp: "libraryName".}
    ## Return the name of the attribute's library.

proc className*(this: StateAttribute): cstring  {.importcpp: "className".}
    ## Return the name of the attribute's class type.

proc asStateAttribute*(this: var StateAttribute): ptr StateAttribute   {.importcpp: "asStateAttribute".}
    ## Convert 'this' into a StateAttribute pointer if Object is a
    ## StateAttribute, otherwise return 0. Equivalent to
    ## dynamic_cast<StateAttribute*>(this).

proc asStateAttribute*(this: StateAttribute): ptr StateAttribute   {.importcpp: "asStateAttribute".}
    ## convert 'const this' into a const StateAttribute pointer if Object is
    ## a StateAttribute, otherwise return 0. Equivalent to dynamic_cast<const
    ## StateAttribute*>(this).

proc asTexture*(this: var StateAttribute): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc asTexture*(this: StateAttribute): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc getType*(this: StateAttribute): StateAttributeType  {.importcpp: "getType".}
    ## Return the Type identifier of the attribute's class type.

proc getMember*(this: StateAttribute): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc getTypeMemberPair*(this: StateAttribute): TypeMemberPair  {.importcpp: "getTypeMemberPair".}
    ## Return the TypeMemberPair that uniquely identifies this type member.

proc isTextureAttribute*(this: StateAttribute): bool  {.importcpp: "isTextureAttribute".}
    ## Return true if StateAttribute is a type which controls texturing and
    ## needs to be issued w.r.t to specific texture unit.

proc compare*(this: StateAttribute, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `<`*(this: StateAttribute, rhs: StateAttribute): bool  {.importcpp: "# < #".}

proc `==`*(this: StateAttribute, rhs: StateAttribute): bool  {.importcpp: "# == #".}

proc `!=`*(this: StateAttribute, rhs: StateAttribute): bool  {.importcpp: "# != #".}

proc getParents*(this: StateAttribute): ParentList  {.importcpp: "getParents".}
    ## Get the parent list of this StateAttribute.

proc getParent*(this: var StateAttribute, i: cuint): ptr StateSet   {.importcpp: "getParent".}

proc getParent*(this: StateAttribute, i: cuint): ptr StateSet   {.importcpp: "getParent".}
    ## Get a single const parent of this StateAttribute.

proc getNumParents*(this: StateAttribute): cuint  {.importcpp: "getNumParents".}
    ## Get the number of parents of this StateAttribute.

proc setShaderComponent*(this: var StateAttribute, sc: ptr ShaderComponent )  {.importcpp: "setShaderComponent".}

proc getShaderComponent*(this: var StateAttribute): ptr ShaderComponent   {.importcpp: "getShaderComponent".}

proc getShaderComponent*(this: StateAttribute): ptr ShaderComponent   {.importcpp: "getShaderComponent".}

proc usesMode*(this: var ModeUsage, mode: GLMode)  {.importcpp: "usesMode".}

proc usesTextureMode*(this: var ModeUsage, mode: GLMode)  {.importcpp: "usesTextureMode".}

proc getModeUsage*(this: StateAttribute, a00: ModeUsage): bool  {.importcpp: "getModeUsage".}
    ## Return the modes associated with this StateAttribute.

proc checkValidityOfAssociatedModes*(this: StateAttribute, a00: State): bool  {.importcpp: "checkValidityOfAssociatedModes".}
    ## Check the modes associated with this StateAttribute are supported by
    ## current OpenGL drivers, and if not set the associated mode in
    ## osg::State to be black listed/invalid. Return true if all associated
    ## modes are valid.

proc setUpdateCallback*(this: var StateAttribute, uc: ptr StateAttributeCallback )  {.importcpp: "setUpdateCallback".}
    ## Set the UpdateCallback which allows users to attach customize the
    ## updating of an object during the update traversal.

proc getUpdateCallback*(this: var StateAttribute): ptr StateAttributeCallback   {.importcpp: "getUpdateCallback".}
    ## Get the non const UpdateCallback.

proc getUpdateCallback*(this: StateAttribute): ptr StateAttributeCallback   {.importcpp: "getUpdateCallback".}
    ## Get the const UpdateCallback.

proc setEventCallback*(this: var StateAttribute, ec: ptr StateAttributeCallback )  {.importcpp: "setEventCallback".}
    ## Set the EventCallback which allows users to attach customize the
    ## updating of an object during the Event traversal.

proc getEventCallback*(this: var StateAttribute): ptr StateAttributeCallback   {.importcpp: "getEventCallback".}
    ## Get the non const EventCallback.

proc getEventCallback*(this: StateAttribute): ptr StateAttributeCallback   {.importcpp: "getEventCallback".}
    ## Get the const EventCallback.

proc apply*(this: StateAttribute, a00: State)  {.importcpp: "apply".}
    ## apply the OpenGL state attributes. The render info for the current
    ## OpenGL context is passed in to allow the StateAttribute to obtain
    ## details on the the current context and state.

proc compileGLObjects*(this: StateAttribute, a00: State)  {.importcpp: "compileGLObjects".}
    ## Default to nothing to compile - all state is applied immediately.

proc resizeGLObjectBuffers*(this: var StateAttribute, a00: cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: StateAttribute, a00: ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## Release OpenGL objects in specified graphics context if State object
    ## is passed, otherwise release OpenGL objects for all graphics context
    ## if State object pointer NULL.

proc addParent*(this: var StateAttribute, `object`: ptr StateSet )  {.importcpp: "addParent".}

proc removeParent*(this: var StateAttribute, `object`: ptr StateSet )  {.importcpp: "removeParent".}

{.pop.}  # header: "StateAttribute"
