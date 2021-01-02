type
  MixinVector*[ValueT] {.header: "MixinVector", importcpp: "osg::MixinVector", byref.} = object
    ## MixinVector is a base class that allows inheritance to be used to
    ## easily emulate derivation from std::vector but without introducing
    ## undefined behaviour through violation of virtual destructor rules.

  Vector_type* {.header: "MixinVector", importcpp: "osg::MixinVector::vector_type".} = cint
  Allocator_type* {.header: "MixinVector", importcpp: "osg::MixinVector::allocator_type".} = cint
  Value_type* {.header: "MixinVector", importcpp: "osg::MixinVector::value_type".} = cint
  Prefixpointer* {.header: "MixinVector", importcpp: "osg::MixinVector::const_pointer".} = cint
  Pointer* {.header: "MixinVector", importcpp: "osg::MixinVector::pointer".} = cint
  Prefixreference* {.header: "MixinVector", importcpp: "osg::MixinVector::const_reference".} = cint
  Reference* {.header: "MixinVector", importcpp: "osg::MixinVector::reference".} = cint
  Prefixiterator* {.header: "MixinVector", importcpp: "osg::MixinVector::const_iterator".} = cint
  `iterator`* {.header: "MixinVector", importcpp: "osg::MixinVector::iterator".} = cint
  Prefixreverse_iterator* {.header: "MixinVector", importcpp: "osg::MixinVector::const_reverse_iterator".} = cint
  Reverse_iterator* {.header: "MixinVector", importcpp: "osg::MixinVector::reverse_iterator".} = cint
  Size_type* {.header: "MixinVector", importcpp: "osg::MixinVector::size_type".} = cint
  Difference_type* {.header: "MixinVector", importcpp: "osg::MixinVector::difference_type".} = cint


{.push header: "MixinVector".}

proc constructMixinVector*[ValueT](): MixinVector {.constructor,importcpp: "osg::MixinVector::MixinVector<ValueT>".}

proc constructMixinVector*[ValueT](initial_size: size_type, fill_value: value_type = )): MixinVector {.constructor,importcpp: "osg::MixinVector::MixinVector<ValueT>(@)".}

proc constructMixinVector*[ValueT](other: vector_type): MixinVector {.constructor,importcpp: "osg::MixinVector::MixinVector<ValueT>(@)".}

proc constructMixinVector*[ValueT](other: MixinVector[ValueT]): MixinVector {.constructor,importcpp: "osg::MixinVector::MixinVector<ValueT>(@)".}

proc `=`*(this: var MixinVector, other: vector_type): MixinVector[ValueT]  {.importcpp: "# = #".}

proc `=`*(this: var MixinVector, other: MixinVector[ValueT]): MixinVector[ValueT]  {.importcpp: "# = #".}

proc clear*(this: var MixinVector)  {.importcpp: "clear".}

proc resize*(this: var MixinVector, new_size: size_type, fill_value: value_type = ))  {.importcpp: "resize".}

proc reserve*(this: var MixinVector, new_capacity: size_type)  {.importcpp: "reserve".}

proc swap*(this: var MixinVector, other: vector_type)  {.importcpp: "swap".}

proc swap*(this: var MixinVector, other: var MixinVector[ValueT])  {.importcpp: "swap".}

proc empty*(this: MixinVector): bool  {.importcpp: "empty".}

proc size*(this: MixinVector): size_type  {.importcpp: "size".}

proc capacity*(this: MixinVector): size_type  {.importcpp: "capacity".}

proc max_size*(this: MixinVector): size_type  {.importcpp: "max_size".}

proc get_allocator*(this: MixinVector): allocator_type  {.importcpp: "get_allocator".}

proc begin*(this: MixinVector): const_iterator  {.importcpp: "begin".}

proc begin*(this: var MixinVector): iterator  {.importcpp: "begin".}

proc `end`*(this: MixinVector): const_iterator  {.importcpp: "end".}

proc `end`*(this: var MixinVector): iterator  {.importcpp: "end".}

proc rbegin*(this: MixinVector): const_reverse_iterator  {.importcpp: "rbegin".}

proc rbegin*(this: var MixinVector): reverse_iterator  {.importcpp: "rbegin".}

proc rend*(this: MixinVector): const_reverse_iterator  {.importcpp: "rend".}

proc rend*(this: var MixinVector): reverse_iterator  {.importcpp: "rend".}

proc `[]`*(this: MixinVector, index: size_type): const_reference  {.importcpp: "# [] #".}

proc `[]`*(this: var MixinVector, index: size_type): reference  {.importcpp: "# [] #".}

proc at*(this: MixinVector, index: size_type): const_reference  {.importcpp: "at".}

proc at*(this: var MixinVector, index: size_type): reference  {.importcpp: "at".}

proc assign*(this: var MixinVector, count: size_type, value: value_type)  {.importcpp: "assign".}

proc push_back*(this: var MixinVector, value: value_type)  {.importcpp: "push_back".}

proc pop_back*(this: var MixinVector)  {.importcpp: "pop_back".}

proc erase*(this: var MixinVector, where: iterator): iterator  {.importcpp: "erase".}

proc erase*(this: var MixinVector, first: iterator, last: iterator): iterator  {.importcpp: "erase".}

proc insert*(this: var MixinVector, where: iterator, value: value_type): iterator  {.importcpp: "insert".}

proc insert*(this: var MixinVector, where: iterator, count: size_type, value: value_type)  {.importcpp: "insert".}

proc back*(this: MixinVector): const_reference  {.importcpp: "back".}

proc back*(this: var MixinVector): reference  {.importcpp: "back".}

proc front*(this: MixinVector): const_reference  {.importcpp: "front".}

proc front*(this: var MixinVector): reference  {.importcpp: "front".}

proc asVector*(this: var MixinVector): vector_type  {.importcpp: "asVector".}

proc asVector*(this: MixinVector): vector_type  {.importcpp: "asVector".}

{.pop.}  # header: "MixinVector"
