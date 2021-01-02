import osg_types
  # File: TexGen  was providing: osg::TexGen::Coord
type
  observer_ptr*[T] {.header: "observer_ptr", importcpp: "osg::observer_ptr", byref.} = object
    ## Smart pointer for observed objects, that automatically set pointers to
    ## them to null when they are deleted. To use the observer_ptr<> robustly
    ## in multi-threaded applications it is recommend to access the pointer
    ## via the lock() method that passes back a ref_ptr<> that safely takes a
    ## reference to the object to prevent deletion during usage of the
    ## object. In certain conditions it may be safe to use the pointer
    ## directly without using lock(), which will confer a performance
    ## advantage, the conditions are: 1) The data structure is only
    ## accessed/deleted in single threaded/serial way. 2) The data strucutre
    ## is guaranteed by high level management of data strucutures and threads
    ## which avoid possible situations where the observer_ptr<>'s object may
    ## be deleted by one thread whilst being accessed by another. If you are
    ## in any doubt about whether it is safe to access the object safe then
    ## use the ref_ptr<> observer_ptr<>.lock() combination.

  Element_type* {.header: "observer_ptr", importcpp: "osg::observer_ptr::element_type".} = T


{.push header: "observer_ptr".}

proc constructobserver_ptr*[T](): observer_ptr {.constructor,importcpp: "osg::observer_ptr::observer_ptr<T>".}

proc constructobserver_ptr*[T](rp: ref_ptr[T]): observer_ptr {.constructor,importcpp: "osg::observer_ptr::observer_ptr<T>(@)".}
    ## Create a observer_ptr from a ref_ptr.

proc constructobserver_ptr*[T](rp: ptr T): observer_ptr {.constructor,importcpp: "osg::observer_ptr::observer_ptr<T>(@)".}
    ## Create a observer_ptr from a raw pointer. For compatibility; the
    ## result might not be lockable.

proc constructobserver_ptr*[T](wp: observer_ptr[T]): observer_ptr {.constructor,importcpp: "osg::observer_ptr::observer_ptr<T>(@)".}

proc `=`*(this: var observer_ptr, wp: observer_ptr[T]): observer_ptr[T]  {.importcpp: "# = #".}

proc `=`*(this: var observer_ptr, rp: ref_ptr[T]): observer_ptr[T]  {.importcpp: "# = #".}

proc `=`*(this: var observer_ptr, rp: ptr T): observer_ptr[T]  {.importcpp: "# = #".}

proc lock*(this: observer_ptr, rptr: var ref_ptr[T]): bool  {.importcpp: "lock".}
    ## Assign the observer_ptr to a ref_ptr. The ref_ptr will be valid if the
    ## referenced object hasn't been deleted and has a ref count > 0.

proc `==`*(this: observer_ptr, wp: observer_ptr[T]): bool  {.importcpp: "# == #".}
    ## Comparison operators. These continue to work even after the observed
    ## object has been deleted.

proc `!=`*(this: observer_ptr, wp: observer_ptr[T]): bool  {.importcpp: "# != #".}

proc `<`*(this: observer_ptr, wp: observer_ptr[T]): bool  {.importcpp: "# < #".}

proc `>`*(this: observer_ptr, wp: observer_ptr[T]): bool  {.importcpp: "# > #".}

proc `==`*(this: observer_ptr, `ptr`: ptr T): bool  {.importcpp: "# == #".}

proc `!=`*(this: observer_ptr, `ptr`: ptr T): bool  {.importcpp: "# != #".}

proc `<`*(this: observer_ptr, `ptr`: ptr T): bool  {.importcpp: "# < #".}

proc `>`*(this: observer_ptr, `ptr`: ptr T): bool  {.importcpp: "# > #".}

proc `*`*(this: observer_ptr): T  {.importcpp: "# * #".}

proc `->`*(this: observer_ptr): ptr T  {.importcpp: "# -> #".}

proc get*(this: observer_ptr): ptr T  {.importcpp: "get".}

proc `!`*(this: observer_ptr): bool  {.importcpp: "# ! #".}

proc valid*(this: observer_ptr): bool  {.importcpp: "valid".}

{.pop.}  # header: "observer_ptr"
