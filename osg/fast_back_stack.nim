type
  fast_back_stack* {.header: "fast_back_stack", importcpp: "osg::fast_back_stack", byref.} [T] = object
    ## Simple stack implementation that keeps the back() cached locally for
    ## fast access rather than at the back of the vector which is the
    ## traditional stack implementation. A conventional std::vector<> stores
    ## the rest of the stack. Although fast_back_stack contains a stl
    ## container it only implements the back push_back(),pop_back() and
    ## back() methods so is not as general purpose as stl stack
    ## implementation. The focus of the fast_back_stack is purely to maximize
    ## the speed at which the back can be accessed.



{.push header: "fast_back_stack".}

proc constructfast_back_stack*[T](): fast_back_stack {.constructor,importcpp: "osg::fast_back_stack::fast_back_stack<T>".}

proc constructfast_back_stack*[T](fbs: fast_back_stack[T]): fast_back_stack {.constructor,importcpp: "osg::fast_back_stack::fast_back_stack<T>(@)".}

proc constructfast_back_stack*[T](value: T): fast_back_stack {.constructor,importcpp: "osg::fast_back_stack::fast_back_stack<T>(@)".}

proc `=`*(this: var fast_back_stack, fbs: fast_back_stack[T]): fast_back_stack[T]  {.importcpp: "# = #".}

proc clear*(this: var fast_back_stack)  {.importcpp: "clear".}

proc empty*(this: fast_back_stack): bool  {.importcpp: "empty".}

proc size*(this: fast_back_stack): cuint  {.importcpp: "size".}

proc back*(this: var fast_back_stack): T  {.importcpp: "back".}

proc back*(this: fast_back_stack): T  {.importcpp: "back".}

proc push_back*(this: var fast_back_stack)  {.importcpp: "push_back".}

proc push_back*(this: var fast_back_stack, value: T)  {.importcpp: "push_back".}

proc pop_back*(this: var fast_back_stack)  {.importcpp: "pop_back".}

{.pop.}  # header: "fast_back_stack"
