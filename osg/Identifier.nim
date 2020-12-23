import Referenced # Provides Referenced
import stringfwd # Provides string


{.push header: "Identifier".}


# Constructors and methods
proc constructIdentifier*(name: String, number: cint, f: ptr Referenced , s: ptr Referenced ): Identifier {.constructor,importcpp: "Identifier(@)".}

proc get*(this: var Identifier, name: String, number: cint, first: ptr Referenced  = 0, second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc get*(this: var Identifier, number: cint, first: ptr Referenced  = 0, second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc get*(this: var Identifier, first: ptr Referenced , second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc name*(this: Identifier): String  {.importcpp: "name".}

proc number*(this: Identifier): cint  {.importcpp: "number".}

proc objectDeleted*(this: var Identifier, `ptr`: pointer)  {.importcpp: "objectDeleted".}

{.pop.} # header: "Identifier
