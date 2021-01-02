import osg_types
  # File: TexGen  was providing: osg::TexGen::Coord
{.push header: "buffered_value".}

proc constructbuffered_value*[T](): buffered_value {.constructor,importcpp: "osg::buffered_value::buffered_value<T>".}

proc constructbuffered_value*[T](size: cuint): buffered_value {.constructor,importcpp: "osg::buffered_value::buffered_value<T>(@)".}

proc constructbuffered_object*[T](): buffered_object {.constructor,importcpp: "osg::buffered_object::buffered_object<T>".}

proc constructbuffered_object*[T](size: cuint): buffered_object {.constructor,importcpp: "osg::buffered_object::buffered_object<T>(@)".}

proc `=`*(this: var buffered_value, rhs: buffered_value[T]): buffered_value[T]  {.importcpp: "# = #".}

proc setAllElementsTo*(this: var buffered_value, t: T)  {.importcpp: "setAllElementsTo".}

proc clear*(this: var buffered_value)  {.importcpp: "clear".}

proc empty*(this: buffered_value): bool  {.importcpp: "empty".}

proc size*(this: buffered_value): cuint  {.importcpp: "size".}

proc resize*(this: var buffered_value, newSize: cuint)  {.importcpp: "resize".}

proc `[]`*(this: var buffered_value, pos: cuint): T  {.importcpp: "# [] #".}

proc `[]`*(this: buffered_value, pos: cuint): T  {.importcpp: "# [] #".}

proc `=`*(this: var buffered_object, rhs: buffered_object[T]): buffered_object[T]  {.importcpp: "# = #".}

proc setAllElementsTo*(this: var buffered_object, t: T)  {.importcpp: "setAllElementsTo".}

proc clear*(this: var buffered_object)  {.importcpp: "clear".}

proc empty*(this: buffered_object): bool  {.importcpp: "empty".}

proc size*(this: buffered_object): cuint  {.importcpp: "size".}

proc resize*(this: var buffered_object, newSize: cuint)  {.importcpp: "resize".}

proc `[]`*(this: var buffered_object, pos: cuint): T  {.importcpp: "# [] #".}

proc `[]`*(this: buffered_object, pos: cuint): T  {.importcpp: "# [] #".}

{.pop.}  # header: "buffered_value"
