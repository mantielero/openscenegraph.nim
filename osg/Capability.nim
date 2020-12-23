import gl # Provides GLenum
import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "Capability".}


# Constructors and methods
proc constructCapability*(): Capability {.constructor,importcpp: "Capability".}

proc constructCapability*(capability: GLenum): Capability {.constructor,importcpp: "Capability(@)".}

proc constructCapability*(cap: Capability, copyop: Copyop = SHALLOW_COPY): Capability {.constructor,importcpp: "Capability(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructCapabilityi*(): Capabilityi {.constructor,importcpp: "Capabilityi".}

proc constructCapabilityi*(capability: GLenum, buf: cuint): Capabilityi {.constructor,importcpp: "Capabilityi(@)".}

proc constructCapabilityi*(cap: Capabilityi, copyop: Copyop = SHALLOW_COPY): Capabilityi {.constructor,importcpp: "Capabilityi(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructEnablei*(): Enablei {.constructor,importcpp: "Enablei".}

proc constructEnablei*(buf: cuint, capability: GLenum): Enablei {.constructor,importcpp: "Enablei(@)".}

proc constructEnablei*(ei: Enablei, copyop: Copyop = SHALLOW_COPY): Enablei {.constructor,importcpp: "Enablei(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructDisablei*(): Disablei {.constructor,importcpp: "Disablei".}

proc constructDisablei*(buf: cuint, capability: GLenum): Disablei {.constructor,importcpp: "Disablei(@)".}

proc constructDisablei*(ei: Disablei, copyop: Copyop = SHALLOW_COPY): Disablei {.constructor,importcpp: "Disablei(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: Capability): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Capability, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Capability, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Capability): cstring  {.importcpp: "libraryName".}

proc className*(this: Capability): cstring  {.importcpp: "className".}

proc compare*(this: Capability, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getType*(this: Capability): Type  {.importcpp: "getType".}
    ## Return the Type identifier of the attribute's class type.

proc setCapability*(this: var Capability, capability: GLenum)  {.importcpp: "setCapability".}

proc getCapability*(this: Capability): GLenum  {.importcpp: "getCapability".}

proc cloneType*(this: Capabilityi): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Capabilityi, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Capabilityi, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Capabilityi): cstring  {.importcpp: "libraryName".}

proc className*(this: Capabilityi): cstring  {.importcpp: "className".}

proc compare*(this: Capabilityi, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: Capabilityi): cuint  {.importcpp: "getMember".}
    ## Return the member identifier within the attribute's class type. Used
    ## for light number/clip plane number etc.

proc setIndex*(this: var Capabilityi, buf: cuint)  {.importcpp: "setIndex".}
    ## Set the renderbuffer index of the Enablei.

proc getIndex*(this: Capabilityi): cuint  {.importcpp: "getIndex".}
    ## Get the renderbuffer index of the Enablei.

proc cloneType*(this: Enablei): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Enablei, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Enablei, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Enablei): cstring  {.importcpp: "libraryName".}

proc className*(this: Enablei): cstring  {.importcpp: "className".}

proc apply*(this: Enablei, State)  {.importcpp: "apply".}

proc cloneType*(this: Disablei): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Disablei, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Disablei, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Disablei): cstring  {.importcpp: "libraryName".}

proc className*(this: Disablei): cstring  {.importcpp: "className".}

proc apply*(this: Disablei, State)  {.importcpp: "apply".}

{.pop.} # header: "Capability
