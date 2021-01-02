type
  Type* {.size:sizeof(cuint),header: "ApplicationUsage", importcpp: "osg::ApplicationUsage::Type", pure.} = enum
    NO_HELP = 0,
    COMMAND_LINE_OPTION = 1,
    ENVIRONMENTAL_VARIABLE = 2,
    KEYBOARD_MOUSE_BINDING = 4,
    HELP_ALL = 7

  ApplicationUsageProxy* {.header: "ApplicationUsage", importcpp: "osg::ApplicationUsageProxy", byref.} = object

  UsageMap* {.header: "ApplicationUsage", importcpp: "osg::ApplicationUsage::UsageMap".} = cint


{.push header: "ApplicationUsage".}

proc constructApplicationUsage*(): ApplicationUsage {.constructor,importcpp: "osg::ApplicationUsage::ApplicationUsage".}

proc constructApplicationUsage*(commandLineUsage: string): ApplicationUsage {.constructor,importcpp: "osg::ApplicationUsage::ApplicationUsage(@)".}

proc constructApplicationUsageProxy*(`type`: Type, option: string, explanation: string): ApplicationUsageProxy {.constructor,importcpp: "osg::ApplicationUsageProxy::ApplicationUsageProxy(@)".}
    ## register an explanation of commandline/environmentvariable/keyboard
    ## mouse usage.

proc instance*(this: var ApplicationUsage): ptr ApplicationUsage   {.importcpp: "instance".}

proc setApplicationName*(this: var ApplicationUsage, name: string)  {.importcpp: "setApplicationName".}
    ## The ApplicationName is often displayed when logging errors, and
    ## frequently incorporated into the Description (below).

proc getApplicationName*(this: ApplicationUsage): string  {.importcpp: "getApplicationName".}

proc setDescription*(this: var ApplicationUsage, desc: string)  {.importcpp: "setDescription".}
    ## If non-empty, the Description is typically shown by the Help Handler
    ## as text on the Help display (which also lists keyboard abbreviations.

proc getDescription*(this: ApplicationUsage): string  {.importcpp: "getDescription".}

proc addUsageExplanation*(this: var ApplicationUsage, `type`: Type, option: string, explanation: string)  {.importcpp: "addUsageExplanation".}

proc setCommandLineUsage*(this: var ApplicationUsage, explanation: string)  {.importcpp: "setCommandLineUsage".}

proc getCommandLineUsage*(this: ApplicationUsage): string  {.importcpp: "getCommandLineUsage".}

proc addCommandLineOption*(this: var ApplicationUsage, option: string, explanation: string, defaultValue: string)  {.importcpp: "addCommandLineOption".}

proc setCommandLineOptions*(this: var ApplicationUsage, usageMap: UsageMap)  {.importcpp: "setCommandLineOptions".}

proc getCommandLineOptions*(this: ApplicationUsage): UsageMap  {.importcpp: "getCommandLineOptions".}

proc setCommandLineOptionsDefaults*(this: var ApplicationUsage, usageMap: UsageMap)  {.importcpp: "setCommandLineOptionsDefaults".}

proc getCommandLineOptionsDefaults*(this: ApplicationUsage): UsageMap  {.importcpp: "getCommandLineOptionsDefaults".}

proc addEnvironmentalVariable*(this: var ApplicationUsage, option: string, explanation: string, defaultValue: string)  {.importcpp: "addEnvironmentalVariable".}

proc setEnvironmentalVariables*(this: var ApplicationUsage, usageMap: UsageMap)  {.importcpp: "setEnvironmentalVariables".}

proc getEnvironmentalVariables*(this: ApplicationUsage): UsageMap  {.importcpp: "getEnvironmentalVariables".}

proc setEnvironmentalVariablesDefaults*(this: var ApplicationUsage, usageMap: UsageMap)  {.importcpp: "setEnvironmentalVariablesDefaults".}

proc getEnvironmentalVariablesDefaults*(this: ApplicationUsage): UsageMap  {.importcpp: "getEnvironmentalVariablesDefaults".}

proc addKeyboardMouseBinding*(this: var ApplicationUsage, prefix: string, key: cint, explanation: string)  {.importcpp: "addKeyboardMouseBinding".}

proc addKeyboardMouseBinding*(this: var ApplicationUsage, key: cint, explanation: string)  {.importcpp: "addKeyboardMouseBinding".}

proc addKeyboardMouseBinding*(this: var ApplicationUsage, option: string, explanation: string)  {.importcpp: "addKeyboardMouseBinding".}

proc setKeyboardMouseBindings*(this: var ApplicationUsage, usageMap: UsageMap)  {.importcpp: "setKeyboardMouseBindings".}

proc getKeyboardMouseBindings*(this: ApplicationUsage): UsageMap  {.importcpp: "getKeyboardMouseBindings".}

proc getFormattedString*(this: var ApplicationUsage, str: string, um: UsageMap, widthOfOutput: cuint = 80, showDefaults: bool, ud: UsageMap = ))  {.importcpp: "getFormattedString".}

proc write*(this: var ApplicationUsage, output: ostream, um: UsageMap, widthOfOutput: cuint = 80, showDefaults: bool, ud: UsageMap = ))  {.importcpp: "write".}

proc write*(this: var ApplicationUsage, output: ostream, `type`: cuint, widthOfOutput: cuint = 80, showDefaults: bool)  {.importcpp: "write".}

proc writeEnvironmentSettings*(this: var ApplicationUsage, output: ostream)  {.importcpp: "writeEnvironmentSettings".}

{.pop.}  # header: "ApplicationUsage"
