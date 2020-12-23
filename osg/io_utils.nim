import stringfwd # Provides string


{.push header: "io_utils".}


# Constructors and methods
proc constructMakeString*(): MakeString {.constructor,importcpp: "MakeString".}

proc operator<<*[T](this: var MakeString, t: T): Makestring  {.importcpp: "operator<<".}

proc `<<`*(this: var MakeString, fun: Ostream &)): Makestring  {.importcpp: "# << #".}

proc clear*(this: var MakeString): Makestring  {.importcpp: "clear".}

proc str*(this: MakeString): String  {.importcpp: "str".}

{.pop.} # header: "io_utils
