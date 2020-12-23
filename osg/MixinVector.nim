

type
  # Typedefs
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


# Constructors and methods
proc constructMixinVector*[ValueT](): MixinVector {.constructor,importcpp: "MixinVector<ValueT>".}

proc constructMixinVector*[ValueT](initial_size: Size_type, fill_value: Value_type = )): MixinVector {.constructor,importcpp: "MixinVector<ValueT>(@)".}

proc constructMixinVector*[ValueT](other: Vector_type): MixinVector {.constructor,importcpp: "MixinVector<ValueT>(@)".}

proc constructMixinVector*[ValueT](other: MixinVector[ValueT]): MixinVector {.constructor,importcpp: "MixinVector<ValueT>(@)".}

proc mixinVector<ValueT>*[InputIterator](this: var MixinVector, first: InputIterator, last: InputIterator)  {.importcpp: "MixinVector<ValueT>".}

proc `=`*(this: var MixinVector, other: Vector_type): MixinVector[ValueT]  {.importcpp: "# = #".}

proc `=`*(this: var MixinVector, other: MixinVector[ValueT]): MixinVector[ValueT]  {.importcpp: "# = #".}

proc clear*(this: var MixinVector)  {.importcpp: "clear".}

proc resize*(this: var MixinVector, new_size: Size_type, fill_value: Value_type = ))  {.importcpp: "resize".}

proc reserve*(this: var MixinVector, new_capacity: Size_type)  {.importcpp: "reserve".}

proc swap*(this: var MixinVector, other: Vector_type)  {.importcpp: "swap".}

proc swap*(this: var MixinVector, other: var MixinVector[ValueT])  {.importcpp: "swap".}

proc empty*(this: MixinVector): bool  {.importcpp: "empty".}

proc size*(this: MixinVector): Size_type  {.importcpp: "size".}

proc capacity*(this: MixinVector): Size_type  {.importcpp: "capacity".}

proc max_size*(this: MixinVector): Size_type  {.importcpp: "max_size".}

proc get_allocator*(this: MixinVector): Allocator_type  {.importcpp: "get_allocator".}

proc begin*(this: MixinVector): Const_iterator  {.importcpp: "begin".}

proc begin*(this: var MixinVector): Iterator  {.importcpp: "begin".}

proc `end`*(this: MixinVector): Const_iterator  {.importcpp: "end".}

proc `end`*(this: var MixinVector): Iterator  {.importcpp: "end".}

proc rbegin*(this: MixinVector): Const_reverse_iterator  {.importcpp: "rbegin".}

proc rbegin*(this: var MixinVector): Reverse_iterator  {.importcpp: "rbegin".}

proc rend*(this: MixinVector): Const_reverse_iterator  {.importcpp: "rend".}

proc rend*(this: var MixinVector): Reverse_iterator  {.importcpp: "rend".}

proc `[]`*(this: MixinVector, index: Size_type): Const_reference  {.importcpp: "# [] #".}

proc `[]`*(this: var MixinVector, index: Size_type): Reference  {.importcpp: "# [] #".}

proc at*(this: MixinVector, index: Size_type): Const_reference  {.importcpp: "at".}

proc at*(this: var MixinVector, index: Size_type): Reference  {.importcpp: "at".}

proc assign*(this: var MixinVector, count: Size_type, value: Value_type)  {.importcpp: "assign".}

proc assign*[Iter](this: var MixinVector, first: Iter, last: Iter)  {.importcpp: "assign".}

proc push_back*(this: var MixinVector, value: Value_type)  {.importcpp: "push_back".}

proc pop_back*(this: var MixinVector)  {.importcpp: "pop_back".}

proc erase*(this: var MixinVector, where: Iterator): Iterator  {.importcpp: "erase".}

proc erase*(this: var MixinVector, first: Iterator, last: Iterator): Iterator  {.importcpp: "erase".}

proc insert*(this: var MixinVector, where: Iterator, value: Value_type): Iterator  {.importcpp: "insert".}

proc insert*[InputIterator](this: var MixinVector, where: Iterator, first: InputIterator, last: InputIterator)  {.importcpp: "insert".}

proc insert*(this: var MixinVector, where: Iterator, count: Size_type, value: Value_type)  {.importcpp: "insert".}

proc back*(this: MixinVector): Const_reference  {.importcpp: "back".}

proc back*(this: var MixinVector): Reference  {.importcpp: "back".}

proc front*(this: MixinVector): Const_reference  {.importcpp: "front".}

proc front*(this: var MixinVector): Reference  {.importcpp: "front".}

proc asVector*(this: var MixinVector): Vector_type  {.importcpp: "asVector".}

proc asVector*(this: MixinVector): Vector_type  {.importcpp: "asVector".}

proc swap*[ValueT](this: var osg, left: var MixinVector[ValueT], right: var MixinVector[ValueT])  {.importcpp: "swap".}

proc swap*[ValueT](this: var osg, left: var MixinVector[ValueT], right: cint)  {.importcpp: "swap".}

proc swap*[ValueT](this: var osg, left: cint, right: var MixinVector[ValueT])  {.importcpp: "swap".}

{.pop.} # header: "MixinVector
