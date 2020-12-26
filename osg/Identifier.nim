import Referenced  # provides: osg::Referenced
type
  Identifier* {.header: "Identifier", importcpp: "osg::Identifier", byref.} = object #of osg::Referenced
    ## Unique Identifier class to help with efficiently comparing road
    ## classification or region via pointers.



{.push header: "Identifier".}

proc constructIdentifier*(name: String, number: cint, f: ptr Referenced , s: ptr Referenced ): Identifier {.constructor,importcpp: "osg::Identifier::Identifier(@)".}

proc get*(this: var Identifier, name: String, number: cint, first: ptr Referenced  = 0, second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc get*(this: var Identifier, number: cint, first: ptr Referenced  = 0, second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc get*(this: var Identifier, first: ptr Referenced , second: ptr Referenced  = 0): ptr Identifier   {.importcpp: "get".}

proc name*(this: Identifier): String  {.importcpp: "name".}

proc number*(this: Identifier): cint  {.importcpp: "number".}

proc objectDeleted*(this: var Identifier, `ptr`: pointer)  {.importcpp: "objectDeleted".}

{.pop.}  # header: "Identifier"
