type
  NotifySeverity* {.size:sizeof(cuint),header: "Notify", importcpp: "osg::NotifySeverity".} = enum
    ## Range of notify levels from DEBUG_FP through to FATAL, ALWAYS is
    ## reserved for forcing the absorption of all messages. The keywords are
    ## also used verbatim when specified by the environmental variable
    ## OSGNOTIFYLEVEL or OSG_NOTIFY_LEVEL. See documentation on osg::notify()
    ## for further details.

    ntfysvrtyALWAYS = 0,
    ntfysvrtyFATAL = 1,
    ntfysvrtyWARN = 2,
    ntfysvrtyNOTICE = 3,
    ntfysvrtyINFO = 4,
    ntfysvrtyDEBUG_INFO = 5,
    ntfysvrtyDEBUG_FP = 6

  NotifyHandler* {.header: "Notify", importcpp: "osg::NotifyHandler", byref.} = object #of osg::Referenced
    ## Handler processing output of notification stream. It acts as a sink to
    ## notification messages. It is called when notification stream needs to
    ## be synchronized (i.e. after osg::notify() << std::endl).
    ## StandardNotifyHandler is used by default, it writes notifications to
    ## stderr (severity <= WARN) or stdout (severity > WARN). Notifications
    ## can be redirected to other sinks such as GUI widgets or windows
    ## debugger (WinDebugNotifyHandler) with custom handlers. Use
    ## setNotifyHandler to set custom handler. Note that osg notification API
    ## is not thread safe although notification handler is called from many
    ## threads. When incorporating handlers into GUI widgets you must take
    ## care of thread safety on your own.

  StandardNotifyHandler* {.header: "Notify", importcpp: "osg::StandardNotifyHandler", byref.} = object #of class osg::NotifyHandler
    ## Redirects notification stream to stderr (severity <= WARN) or stdout
    ## (severity > WARN). The fputs() function is used to write messages to
    ## standard files. Note that std::out and std::cerr streams are not used.



{.push header: "Notify".}

proc notify*(this: var NotifyHandler, severity: Notifyseverity, message: cstring)  {.importcpp: "notify".}

proc notify*(this: var StandardNotifyHandler, severity: Notifyseverity, message: cstring)  {.importcpp: "notify".}

{.pop.}  # header: "Notify"
