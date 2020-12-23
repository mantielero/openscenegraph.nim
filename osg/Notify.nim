

type
  NotifySeverity* {.size:sizeof(cuint),header: "Notify", importcpp: "osg::NotifySeverity".} = enum
    ## Range of notify levels from DEBUG_FP through to FATAL, ALWAYS is
    ## reserved for forcing the absorption of all messages. The keywords are
    ## also used verbatim when specified by the environmental variable
    ## OSGNOTIFYLEVEL or OSG_NOTIFY_LEVEL. See documentation on osg::notify()
    ## for further details.

    ALWAYS = 0,
    FATAL = 1,
    WARN = 2,
    NOTICE = 3,
    INFO = 4,
    DEBUG_INFO = 5,
    DEBUG_FP = 6

{.push header: "Notify".}


# Constructors and methods
proc notify*(this: var NotifyHandler, severity: Notifyseverity, message: cstring)  {.importcpp: "notify".}

proc notify*(this: var StandardNotifyHandler, severity: Notifyseverity, message: cstring)  {.importcpp: "notify".}

{.pop.} # header: "Notify
