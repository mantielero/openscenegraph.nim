type
  Element_type* {.header: "ref_ptr", importcpp: "osg::ref_ptr::element_type".} = T
  ref_ptr* {.header: "ref_ptr", importcpp: "osg::ref_ptr", byref.} [T] = object
    ## Smart pointer for handling referenced counted objects.



{.push header: "ref_ptr".}

proc constructref_ptr*[T](): ref_ptr {.constructor,importcpp: "osg::ref_ptr::ref_ptr<T>".}

proc constructref_ptr*[T](`ptr`: ptr T): ref_ptr {.constructor,importcpp: "osg::ref_ptr::ref_ptr<T>(@)".}

proc constructref_ptr*[T](rp: ref_ptr[T]): ref_ptr {.constructor,importcpp: "osg::ref_ptr::ref_ptr<T>(@)".}

proc constructref_ptr*[T](optr: var observer_ptr[T]): ref_ptr {.constructor,importcpp: "osg::ref_ptr::ref_ptr<T>(@)".}

proc `=`*(this: var ref_ptr, rp: ref_ptr[T]): ref_ptr[T]  {.importcpp: "# = #".}

proc `=`*(this: var ref_ptr, `ptr`: ptr T): ref_ptr[T]  {.importcpp: "# = #".}

proc `*`*(this: ref_ptr): T  {.importcpp: "# * #".}

proc `->`*(this: ref_ptr): ptr T  {.importcpp: "# -> #".}

proc get*(this: ref_ptr): ptr T  {.importcpp: "get".}

proc `!`*(this: ref_ptr): bool  {.importcpp: "# ! #".}

proc valid*(this: ref_ptr): bool  {.importcpp: "valid".}

proc release*(this: var ref_ptr): ptr T  {.importcpp: "release".}
    ## release the pointer from ownership by this ref_ptr<>, decrementing the
    ## objects refencedCount() via unref_nodelete() to prevent the Object
    ## object from being deleted even if the reference count goes to zero.
    ## Use when using a local ref_ptr<> to an Object that you want to return
    ## from a function/method via a C pointer, whilst preventing the normal
    ## ref_ptr<> destructor from cleaning up the object. When using release()
    ## you are implicitly expecting other code to take over management of the
    ## object, otherwise a memory leak will result.

proc swap*(this: var ref_ptr, rp: var ref_ptr[T])  {.importcpp: "swap".}

{.pop.}  # header: "ref_ptr"
