

{.push header: "os_utils".}


# Constructors and methods
proc getEnvVar*[T](this: var osg, name: cstring, value: var T): bool  {.importcpp: "getEnvVar".}

proc getEnvVar*[T1;T2](this: var osg, name: cstring, value1: var T1, value2: var T2): bool  {.importcpp: "getEnvVar".}

proc getEnvVar*[T1;T2;T3](this: var osg, name: cstring, value1: var T1, value2: var T2, value3: var T3): bool  {.importcpp: "getEnvVar".}

proc getEnvVar*[T1;T2;T3;T4](this: var osg, name: cstring, value1: var T1, value2: var T2, value3: var T3, value4: var T4): bool  {.importcpp: "getEnvVar".}

{.pop.} # header: "os_utils
