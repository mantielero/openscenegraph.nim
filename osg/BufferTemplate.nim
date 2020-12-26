import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  BufferTemplate* {.header: "BufferTemplate", importcpp: "osg::BufferTemplate", byref.} [T] = object #of class osg::BufferData
    ## Template buffer class to be used with a struct as template parameter.
    ## This class is useful to send C++ structures on the GPU (e.g. for
    ## uniform blocks) but be careful to the alignments rules on the GPU side
    ## !



{.push header: "BufferTemplate".}

proc constructBufferTemplate*[T](): BufferTemplate {.constructor,importcpp: "osg::BufferTemplate::BufferTemplate<T>".}

proc constructBufferTemplate*[T](bt: BufferTemplate[T], copyop: Copyop = SHALLOW_COPY): BufferTemplate {.constructor,importcpp: "osg::BufferTemplate::BufferTemplate<T>(@)".}
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

{.pop.}  # header: "BufferTemplate"
