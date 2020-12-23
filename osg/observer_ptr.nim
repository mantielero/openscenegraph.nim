

type
  Element_type* {.header: "observer_ptr", importcpp: "osg::observer_ptr::element_type".} = T
{.push header: "observer_ptr".}


# Constructors and methods
proc constructobserver_ptr*[T](): observer_ptr {.constructor,importcpp: "observer_ptr<T>".}

proc constructobserver_ptr*[T](rp: ref_ptr[T]): observer_ptr {.constructor,importcpp: "observer_ptr<T>(@)".}
    ## Create a observer_ptr from a ref_ptr.

proc constructobserver_ptr*[T](rp: ptr T): observer_ptr {.constructor,importcpp: "observer_ptr<T>(@)".}
    ## Create a observer_ptr from a raw pointer. For compatibility; the
    ## result might not be lockable.

proc constructobserver_ptr*[T](wp: observer_ptr[T]): observer_ptr {.constructor,importcpp: "observer_ptr<T>(@)".}

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

{.pop.} # header: "observer_ptr
