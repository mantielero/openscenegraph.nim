import ApplicationUsage  # provides: osg::ApplicationUsage
type
  ParameterType* {.size:sizeof(cuint),header: "ArgumentParser", importcpp: "osg::ArgumentParser::Parameter::ParameterType".} = enum
    BOOL_PARAMETER = 0,
    FLOAT_PARAMETER = 1,
    DOUBLE_PARAMETER = 2,
    INT_PARAMETER = 3,
    UNSIGNED_INT_PARAMETER = 4,
    STRING_PARAMETER = 5

  ErrorSeverity* {.size:sizeof(cuint),header: "ArgumentParser", importcpp: "osg::ArgumentParser::ErrorSeverity".} = enum
    BENIGN = 0,
    CRITICAL = 1

  ErrorMessageMap* {.header: "ArgumentParser", importcpp: "osg::ArgumentParser::ErrorMessageMap".} = cint
  Parameter* {.header: "ArgumentParser", importcpp: "osg::ArgumentParser::Parameter", byref.} = object



{.push header: "ArgumentParser".}

proc constructParameter*(value: var bool): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(value: cfloat): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(value: cdouble): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(value: cint): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(value: cuint): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(value: String): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructParameter*(param: Parameter): Parameter {.constructor,importcpp: "osg::ArgumentParser::Parameter::Parameter(@)".}

proc constructArgumentParser*(argc: ptr int, argv: ptr char *): ArgumentParser {.constructor,importcpp: "osg::ArgumentParser::ArgumentParser(@)".}

proc `=`*(this: var Parameter, param: Parameter): Parameter  {.importcpp: "# = #".}

proc valid*(this: Parameter, str: cstring): bool  {.importcpp: "valid".}

proc assign*(this: var Parameter, str: cstring): bool  {.importcpp: "assign".}

proc isOption*(this: var ArgumentParser, str: cstring): bool  {.importcpp: "isOption".}
    ## Return true if the specified string is an option in the form -option
    ## or --option.

proc isString*(this: var ArgumentParser, str: cstring): bool  {.importcpp: "isString".}
    ## Return true if string is non-NULL and not an option in the form
    ## -option or --option.

proc isNumber*(this: var ArgumentParser, str: cstring): bool  {.importcpp: "isNumber".}
    ## Return true if specified parameter is a number.

proc isBool*(this: var ArgumentParser, str: cstring): bool  {.importcpp: "isBool".}
    ## Return true if specified parameter is a bool.

proc setApplicationUsage*(this: var ArgumentParser, usage: ptr Applicationusage )  {.importcpp: "setApplicationUsage".}

proc getApplicationUsage*(this: var ArgumentParser): ptr Applicationusage   {.importcpp: "getApplicationUsage".}

proc getApplicationUsage*(this: ArgumentParser): ptr Applicationusage   {.importcpp: "getApplicationUsage".}

proc argc*(this: var ArgumentParser): cint  {.importcpp: "argc".}
    ## Return the argument count.

proc argv*(this: var ArgumentParser): ptr char *  {.importcpp: "argv".}
    ## Return the argument array.

proc `[]`*(this: var ArgumentParser, pos: cint): cstring  {.importcpp: "# [] #".}
    ## Return the char* argument at the specified position.

proc `[]`*(this: ArgumentParser, pos: cint): cstring  {.importcpp: "# [] #".}
    ## Return the const char* argument at the specified position.

proc getApplicationName*(this: ArgumentParser): String  {.importcpp: "getApplicationName".}
    ## Return the application name, as specified by argv[0]

proc find*(this: ArgumentParser, str: String): cint  {.importcpp: "find".}
    ## Return the position of an occurrence of a string in the argument list.
    ## Return -1 if no string is found.

proc isOption*(this: ArgumentParser, pos: cint): bool  {.importcpp: "isOption".}
    ## Return true if the specified parameter is an option in the form of
    ## -option or --option.

proc isString*(this: ArgumentParser, pos: cint): bool  {.importcpp: "isString".}
    ## Return true if the specified parameter is a string not in the form of
    ## an option.

proc isNumber*(this: ArgumentParser, pos: cint): bool  {.importcpp: "isNumber".}
    ## Return true if the specified parameter is a number.

proc containsOptions*(this: ArgumentParser): bool  {.importcpp: "containsOptions".}

proc remove*(this: var ArgumentParser, pos: cint, num: cint)  {.importcpp: "remove".}
    ## Remove one or more arguments from the argv argument list, and
    ## decrement the argc respectively.

proc match*(this: ArgumentParser, pos: cint, str: String): bool  {.importcpp: "match".}
    ## Return true if the specified argument matches the given string.

proc read*(this: var ArgumentParser, str: String): bool  {.importcpp: "read".}
    ## Search for an occurrence of a string in the argument list. If found,
    ## remove that occurrence and return true. Otherwise, return false.

proc read*(this: var ArgumentParser, str: String, value1: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter, value7: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter, value7: Parameter, value8: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String): bool  {.importcpp: "read".}
    ## If the argument value at the specified position matches the given
    ## string, and subsequent parameters are also matched, then set the
    ## parameter values, remove the arguments from the list, and return true.
    ## Otherwise, return false.

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter, value7: Parameter): bool  {.importcpp: "read".}

proc read*(this: var ArgumentParser, pos: cint, str: String, value1: Parameter, value2: Parameter, value3: Parameter, value4: Parameter, value5: Parameter, value6: Parameter, value7: Parameter, value8: Parameter): bool  {.importcpp: "read".}

proc errors*(this: ArgumentParser, severity: Errorseverity): bool  {.importcpp: "errors".}
    ## Return the error flag, true if an error has occurred when reading
    ## arguments.

proc reportError*(this: var ArgumentParser, message: String, severity: Errorseverity)  {.importcpp: "reportError".}
    ## Report an error message by adding to the ErrorMessageMap.

proc reportRemainingOptionsAsUnrecognized*(this: var ArgumentParser, severity: Errorseverity)  {.importcpp: "reportRemainingOptionsAsUnrecognized".}
    ## For each remaining option, report it as unrecognized.

proc getErrorMessageMap*(this: var ArgumentParser): Errormessagemap  {.importcpp: "getErrorMessageMap".}
    ## Return the error message, if any has occurred.

proc getErrorMessageMap*(this: ArgumentParser): Errormessagemap  {.importcpp: "getErrorMessageMap".}
    ## Return the error message, if any has occurred.

proc writeErrorMessages*(this: var ArgumentParser, output: Ostream, sevrity: Errorseverity)  {.importcpp: "writeErrorMessages".}
    ## Write error messages to the given ostream, if at or above the given
    ## severity.

proc readHelpType*(this: var ArgumentParser): Type  {.importcpp: "readHelpType".}
    ## This convenience method handles help requests on the command line.
    ## Return the type(s) of help requested. The return value of this
    ## function is suitable for passing into getApplicationUsage()->write().
    ## If ApplicationUsage::NO_HELP is returned then no help commandline
    ## option was found on the command line.

{.pop.}  # header: "ArgumentParser"
