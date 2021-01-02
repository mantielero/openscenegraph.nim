import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute, osg::StateAttribute::Type
  # File: CopyOp  was providing: osg::CopyOp
type
  Capability* {.header: "Capability", importcpp: "osg::Capability", byref.} = object #of osg::StateAttribute

  Capabilityi* {.header: "Capability", importcpp: "osg::Capabilityi", byref.} = object #of osg::Capability
    ## Encapsulates glEnablei/glDisablei

  Enablei* {.header: "Capability", importcpp: "osg::Enablei", byref.} = object #of class osg::Capabilityi

  Disablei* {.header: "Capability", importcpp: "osg::Disablei", byref.} = object #of class osg::Capabilityi



{.push header: "Capability".}

proc constructCapability*(): Capability {.constructor,importcpp: "osg::Capability::Capability".}

proc constructCapability*(capability: GLenum): Capability {.constructor,importcpp: "osg::Capability::Capability(@)".}

proc constructCapability*(cap: Capability, copyop: CopyOp = SHALLOW_COPY): Capability {.constructor,importcpp: "osg::Capability::Capability(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructCapabilityi*(): Capabilityi {.constructor,importcpp: "osg::Capabilityi::Capabilityi".}

proc constructCapabilityi*(capability: GLenum, buf: cuint): Capabilityi {.constructor,importcpp: "osg::Capabilityi::Capabilityi(@)".}

proc constructCapabilityi*(cap: Capabilityi, copyop: CopyOp = SHALLOW_COPY): Capabilityi {.constructor,importcpp: "osg::Capabilityi::Capabilityi(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructEnablei*(): Enablei {.constructor,importcpp: "osg::Enablei::Enablei".}

proc constructEnablei*(buf: cuint, capability: GLenum): Enablei {.constructor,importcpp: "osg::Enablei::Enablei(@)".}

proc constructEnablei*(ei: Enablei, copyop: CopyOp = SHALLOW_COPY): Enablei {.constructor,importcpp: "osg::Enablei::Enablei(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructDisablei*(): Disablei {.constructor,importcpp: "osg::Disablei::Disablei".}

proc constructDisablei*(buf: cuint, capability: GLenum): Disablei {.constructor,importcpp: "osg::Disablei::Disablei(@)".}

proc constructDisablei*(ei: Disablei, copyop: CopyOp = SHALLOW_COPY): Disablei {.constructor,importcpp: "osg::Disablei::Disablei(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Capability): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Capability, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Capability, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Capability): cstring  {.importcpp: "libraryName".}

proc className*(this: Capability): cstring  {.importcpp: "className".}

proc compare*(this: Capability, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getType*(this: Capability): Type  {.importcpp: "getType".}
    ## Return the Type identifier of the attribute's class type.

proc setCapability*(this: var Capability, capability: GLenum)  {.importcpp: "setCapability".}

proc getCapability*(this: Capability): GLenum  {.importcpp: "getCapability".}

proc cloneType*(this: Capabilityi): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Capabilityi, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Capabilityi, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Capabilityi): cstring  {.importcpp: "libraryName".}

proc className*(this: Capabilityi): cstring  {.importcpp: "className".}

proc compare*(this: Capabilityi, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: Capabilityi): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc setIndex*(this: var Capabilityi, buf: cuint)  {.importcpp: "setIndex".}
    ## Set the renderbuffer index of the Enablei.

proc getIndex*(this: Capabilityi): cuint  {.importcpp: "getIndex".}
    ## Get the renderbuffer index of the Enablei.

proc cloneType*(this: Enablei): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Enablei, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Enablei, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Enablei): cstring  {.importcpp: "libraryName".}

proc className*(this: Enablei): cstring  {.importcpp: "className".}

proc apply*(this: Enablei, a00: State)  {.importcpp: "apply".}

proc cloneType*(this: Disablei): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Disablei, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Disablei, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Disablei): cstring  {.importcpp: "libraryName".}

proc className*(this: Disablei): cstring  {.importcpp: "className".}

proc apply*(this: Disablei, a00: State)  {.importcpp: "apply".}

{.pop.}  # header: "Capability"
