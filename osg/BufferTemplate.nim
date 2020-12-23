import gl # Provides GLvoid
import CopyOp # Provides CopyOp
import Object # Provides Object


{.push header: "BufferTemplate".}


# Constructors and methods
proc constructBufferTemplate*[T](): BufferTemplate {.constructor,importcpp: "BufferTemplate<T>".}

proc constructBufferTemplate*[T](bt: BufferTemplate[T], copyop: Copyop = SHALLOW_COPY): BufferTemplate {.constructor,importcpp: "BufferTemplate<T>(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc isSameKindAs*(this: BufferTemplate, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: BufferTemplate): cstring  {.importcpp: "libraryName".}

proc className*(this: BufferTemplate): cstring  {.importcpp: "className".}

proc cloneType*(this: BufferTemplate): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: BufferTemplate, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc getDataPointer*(this: BufferTemplate): ptr GLvoid  {.importcpp: "getDataPointer".}

proc getTotalDataSize*(this: BufferTemplate): cuint  {.importcpp: "getTotalDataSize".}

proc getData*(this: BufferTemplate): T  {.importcpp: "getData".}

proc getData*(this: var BufferTemplate): T  {.importcpp: "getData".}

proc setData*(this: var BufferTemplate, data: T)  {.importcpp: "setData".}

{.pop.} # header: "BufferTemplate
