import CopyOp # Provides CopyOp
import Object # Provides Object
import Callback # Provides StateAttributeCallback
import gl # Provides GLenum
import Shader # Provides ShaderComponent
import StateSet # Provides StateSet
import Texture # Provides Texture
import State # Provides State


type
  # Enums
  Values* {.size:sizeof(cuint),header: "StateAttribute", importcpp: "osg::StateAttribute::Values".} = enum
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

  Type* {.size:sizeof(cuint),header: "StateAttribute", importcpp: "osg::StateAttribute::Type".} = enum
    ## Values of StateAttribute::Type used to aid identification of different
    ## StateAttribute subclasses. Each subclass defines its own value in the
    ## virtual Type getType() method. When extending the osg's
    ## StateAttribute's simply define your own Type value which is unique,
    ## using the StateAttribute::Type enum as a guide of what values to use.
    ## If your new subclass needs to override a standard StateAttribute then
    ## simply use that type's value.

    TEXTURE = 0,
    POLYGONMODE = 1,
    POLYGONOFFSET = 2,
    MATERIAL = 3,
    ALPHAFUNC = 4,
    ANTIALIAS = 5,
    COLORTABLE = 6,
    CULLFACE = 7,
    FOG = 8,
    FRONTFACE = 9,
    LIGHT = 10,
    POINT = 11,
    LINEWIDTH = 12,
    LINESTIPPLE = 13,
    POLYGONSTIPPLE = 14,
    SHADEMODEL = 15,
    TEXENV = 16,
    TEXENVFILTER = 17,
    TEXGEN = 18,
    TEXMAT = 19,
    LIGHTMODEL = 20,
    BLENDFUNC = 21,
    BLENDEQUATION = 22,
    LOGICOP = 23,
    STENCIL = 24,
    COLORMASK = 25,
    DEPTH = 26,
    VIEWPORT = 27,
    SCISSOR = 28,
    BLENDCOLOR = 29,
    MULTISAMPLE = 30,
    CLIPPLANE = 31,
    COLORMATRIX = 32,
    VERTEXPROGRAM = 33,
    FRAGMENTPROGRAM = 34,
    POINTSPRITE = 35,
    PROGRAM = 36,
    CLAMPCOLOR = 37,
    HINT = 38,
    SAMPLEMASKI = 39,
    PRIMITIVERESTARTINDEX = 40,
    CLIPCONTROL = 41,
    VALIDATOR = 42,
      ## osgFX namespace
    VIEWMATRIXEXTRACTOR = 43,
      ## osgFX namespace
    OSGNV_PARAMETER_BLOCK = 44,
      ## osgNV namespace
    OSGNVEXT_TEXTURE_SHADER = 45,
      ## osgNV namespace
    OSGNVEXT_VERTEX_PROGRAM = 46,
      ## osgNV namespace
    OSGNVEXT_REGISTER_COMBINERS = 47,
      ## osgNV namespace
    OSGNVCG_PROGRAM = 48,
      ## osgNVCg namespace
    OSGNVSLANG_PROGRAM = 49,
      ## osgNVCg namespace
    OSGNVPARSE_PROGRAM_PARSER = 50,
      ## osgNVCg namespace
    UNIFORMBUFFERBINDING = 51,
      ## osgNVCg namespace
    TRANSFORMFEEDBACKBUFFERBINDING = 52,
      ## osgNVCg namespace
    ATOMICCOUNTERBUFFERBINDING = 53,
      ## osgNVCg namespace
    PATCH_PARAMETER = 54,
      ## osgNVCg namespace
    FRAME_BUFFER_OBJECT = 55,
      ## osgNVCg namespace
    VERTEX_ATTRIB_DIVISOR = 56,
      ## osgNVCg namespace
    SHADERSTORAGEBUFFERBINDING = 57,
      ## osgNVCg namespace
    INDIRECTDRAWBUFFERBINDING = 58,
      ## osgNVCg namespace
    VIEWPORTINDEXED = 59,
      ## osgNVCg namespace
    DEPTHRANGEINDEXED = 60,
      ## osgNVCg namespace
    SCISSORINDEXED = 61,
      ## osgNVCg namespace
    BINDIMAGETEXTURE = 62,
      ## osgNVCg namespace
    SAMPLER = 63,
      ## osgNVCg namespace
    CAPABILITY = 100
      ## osgNVCg namespace

  # Typedefs
  GLMode* {.header: "StateAttribute", importcpp: "osg::StateAttribute::GLMode".} = GLenum
  GLModeValue* {.header: "StateAttribute", importcpp: "osg::StateAttribute::GLModeValue".} = cuint
  OverrideValue* {.header: "StateAttribute", importcpp: "osg::StateAttribute::OverrideValue".} = cuint
  TypeMemberPair* {.header: "StateAttribute", importcpp: "osg::StateAttribute::TypeMemberPair".} = Pair[Type,cuint]
  ParentList* {.header: "StateAttribute", importcpp: "osg::StateAttribute::ParentList".} = cint
  Callback* {.header: "StateAttribute", importcpp: "osg::StateAttribute::Callback".} = Stateattributecallback
{.push header: "StateAttribute".}


# Constructors and methods
proc constructStateAttribute*(): StateAttribute {.constructor,importcpp: "StateAttribute".}

proc constructStateAttribute*(sa: Stateattribute, copyop: Copyop = SHALLOW_COPY): StateAttribute {.constructor,importcpp: "StateAttribute(@)".}

proc constructReassignToParents*(att: ptr Stateattribute ): ReassignToParents {.constructor,importcpp: "ReassignToParents(@)".}
    ## Constructor caches and then removes attribute for all of it's parents.

proc cloneType*(this: StateAttribute): ptr Object   {.importcpp: "cloneType".}
    ## Clone the type of an attribute, with Object* return type. Must be
    ## defined by derived classes.

proc clone*(this: StateAttribute, Copyop): ptr Object   {.importcpp: "clone".}
    ## Clone an attribute, with Object* return type. Must be defined by
    ## derived classes.

proc isSameKindAs*(this: StateAttribute, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}
    ## Return true if this and obj are of the same kind of object.

proc libraryName*(this: StateAttribute): cstring  {.importcpp: "libraryName".}
    ## Return the name of the attribute's library.

proc className*(this: StateAttribute): cstring  {.importcpp: "className".}
    ## Return the name of the attribute's class type.

proc asStateAttribute*(this: var StateAttribute): ptr Stateattribute   {.importcpp: "asStateAttribute".}
    ## Convert 'this' into a StateAttribute pointer if Object is a
    ## StateAttribute, otherwise return 0. Equivalent to
    ## dynamic_cast<StateAttribute*>(this).

proc asStateAttribute*(this: StateAttribute): ptr Stateattribute   {.importcpp: "asStateAttribute".}
    ## convert 'const this' into a const StateAttribute pointer if Object is
    ## a StateAttribute, otherwise return 0. Equivalent to dynamic_cast<const
    ## StateAttribute*>(this).

proc asTexture*(this: var StateAttribute): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc asTexture*(this: StateAttribute): ptr Texture   {.importcpp: "asTexture".}
    ## Fast alternative to dynamic_cast<> for determining if state attribute
    ## is a Texture.

proc getType*(this: StateAttribute): Type  {.importcpp: "getType".}
    ## Return the Type identifier of the attribute's class type.

proc getMember*(this: StateAttribute): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc getTypeMemberPair*(this: StateAttribute): Typememberpair  {.importcpp: "getTypeMemberPair".}
    ## Return the TypeMemberPair that uniquely identifies this type member.

proc isTextureAttribute*(this: StateAttribute): bool  {.importcpp: "isTextureAttribute".}
    ## Return true if StateAttribute is a type which controls texturing and
    ## needs to be issued w.r.t to specific texture unit.

proc compare*(this: StateAttribute, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc `<`*(this: StateAttribute, rhs: Stateattribute): bool  {.importcpp: "# < #".}

proc `==`*(this: StateAttribute, rhs: Stateattribute): bool  {.importcpp: "# == #".}

proc `!=`*(this: StateAttribute, rhs: Stateattribute): bool  {.importcpp: "# != #".}

proc getParents*(this: StateAttribute): Parentlist  {.importcpp: "getParents".}
    ## Get the parent list of this StateAttribute.

proc getParent*(this: var StateAttribute, i: cuint): ptr Stateset   {.importcpp: "getParent".}

proc getParent*(this: StateAttribute, i: cuint): ptr Stateset   {.importcpp: "getParent".}
    ## Get a single const parent of this StateAttribute.

proc getNumParents*(this: StateAttribute): cuint  {.importcpp: "getNumParents".}
    ## Get the number of parents of this StateAttribute.

proc setShaderComponent*(this: var StateAttribute, sc: ptr Shadercomponent )  {.importcpp: "setShaderComponent".}

proc getShaderComponent*(this: var StateAttribute): ptr Shadercomponent   {.importcpp: "getShaderComponent".}

proc getShaderComponent*(this: StateAttribute): ptr Shadercomponent   {.importcpp: "getShaderComponent".}

proc usesMode*(this: var ModeUsage, mode: Glmode)  {.importcpp: "usesMode".}

proc usesTextureMode*(this: var ModeUsage, mode: Glmode)  {.importcpp: "usesTextureMode".}

proc getModeUsage*(this: StateAttribute, Modeusage): bool  {.importcpp: "getModeUsage".}
    ## Return the modes associated with this StateAttribute.

proc checkValidityOfAssociatedModes*(this: StateAttribute, State): bool  {.importcpp: "checkValidityOfAssociatedModes".}
    ## Check the modes associated with this StateAttribute are supported by
    ## current OpenGL drivers, and if not set the associated mode in
    ## osg::State to be black listed/invalid. Return true if all associated
    ## modes are valid.

proc setUpdateCallback*(this: var StateAttribute, uc: ptr Stateattributecallback )  {.importcpp: "setUpdateCallback".}
    ## Set the UpdateCallback which allows users to attach customize the
    ## updating of an object during the update traversal.

proc getUpdateCallback*(this: var StateAttribute): ptr Stateattributecallback   {.importcpp: "getUpdateCallback".}
    ## Get the non const UpdateCallback.

proc getUpdateCallback*(this: StateAttribute): ptr Stateattributecallback   {.importcpp: "getUpdateCallback".}
    ## Get the const UpdateCallback.

proc setEventCallback*(this: var StateAttribute, ec: ptr Stateattributecallback )  {.importcpp: "setEventCallback".}
    ## Set the EventCallback which allows users to attach customize the
    ## updating of an object during the Event traversal.

proc getEventCallback*(this: var StateAttribute): ptr Stateattributecallback   {.importcpp: "getEventCallback".}
    ## Get the non const EventCallback.

proc getEventCallback*(this: StateAttribute): ptr Stateattributecallback   {.importcpp: "getEventCallback".}
    ## Get the const EventCallback.

proc apply*(this: StateAttribute, State)  {.importcpp: "apply".}
    ## apply the OpenGL state attributes. The render info for the current
    ## OpenGL context is passed in to allow the StateAttribute to obtain
    ## details on the the current context and state.

proc compileGLObjects*(this: StateAttribute, State)  {.importcpp: "compileGLObjects".}
    ## Default to nothing to compile - all state is applied immediately.

proc resizeGLObjectBuffers*(this: var StateAttribute, cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: StateAttribute, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## Release OpenGL objects in specified graphics context if State object
    ## is passed, otherwise release OpenGL objects for all graphics context
    ## if State object pointer NULL.

proc addParent*(this: var StateAttribute, `object`: ptr Stateset )  {.importcpp: "addParent".}

proc removeParent*(this: var StateAttribute, `object`: ptr Stateset )  {.importcpp: "removeParent".}

{.pop.} # header: "StateAttribute
