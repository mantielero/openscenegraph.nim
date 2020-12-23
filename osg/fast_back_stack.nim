

{.push header: "fast_back_stack".}


# Constructors and methods
proc constructfast_back_stack*[T](): fast_back_stack {.constructor,importcpp: "fast_back_stack<T>".}

proc constructfast_back_stack*[T](fbs: fast_back_stack[T]): fast_back_stack {.constructor,importcpp: "fast_back_stack<T>(@)".}

proc constructfast_back_stack*[T](value: T): fast_back_stack {.constructor,importcpp: "fast_back_stack<T>(@)".}

proc `=`*(this: var fast_back_stack, fbs: fast_back_stack[T]): fast_back_stack[T]  {.importcpp: "# = #".}

proc clear*(this: var fast_back_stack)  {.importcpp: "clear".}

proc empty*(this: fast_back_stack): bool  {.importcpp: "empty".}

proc size*(this: fast_back_stack): cuint  {.importcpp: "size".}

proc back*(this: var fast_back_stack): T  {.importcpp: "back".}

proc back*(this: fast_back_stack): T  {.importcpp: "back".}

proc push_back*(this: var fast_back_stack)  {.importcpp: "push_back".}

proc push_back*(this: var fast_back_stack, value: T)  {.importcpp: "push_back".}

proc pop_back*(this: var fast_back_stack)  {.importcpp: "pop_back".}

{.pop.} # header: "fast_back_stack
