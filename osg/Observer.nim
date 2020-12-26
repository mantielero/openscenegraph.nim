import /usr/include/osg/Referenced  # provides: osg::Referenced
type
  Observers* {.header: "Observer", importcpp: "osg::ObserverSet::Observers".} = cint


{.push header: "Observer".}

proc constructObserver*(): Observer {.constructor,importcpp: "osg::Observer::Observer".}

proc constructObserverSet*(observedObject: ptr Referenced ): ObserverSet {.constructor,importcpp: "osg::ObserverSet::ObserverSet(@)".}

proc constructObserverSet*(rhs: Observerset): ObserverSet {.constructor,importcpp: "osg::ObserverSet::ObserverSet(@)".}

proc objectDeleted*(this: var Observer, pointer)  {.importcpp: "objectDeleted".}
    ## objectDeleted is called when the observed object is about to be
    ## deleted. The observer will be automatically removed from the observed
    ## object's observer set so there is no need for the objectDeleted
    ## implementation to call removeObserver() on the observed object.

proc getObserverdObject*(this: var ObserverSet): ptr Referenced   {.importcpp: "getObserverdObject".}

proc getObserverdObject*(this: ObserverSet): ptr Referenced   {.importcpp: "getObserverdObject".}

proc addRefLock*(this: var ObserverSet): ptr Referenced   {.importcpp: "addRefLock".}
    ## "Lock" a Referenced object i.e., protect it from being deleted by
    ## incrementing its reference count.

proc getObserverSetMutex*(this: ObserverSet): ptr Mutex   {.importcpp: "getObserverSetMutex".}

proc addObserver*(this: var ObserverSet, observer: ptr Observer )  {.importcpp: "addObserver".}

proc removeObserver*(this: var ObserverSet, observer: ptr Observer )  {.importcpp: "removeObserver".}

proc signalObjectDeleted*(this: var ObserverSet, `ptr`: pointer)  {.importcpp: "signalObjectDeleted".}

proc getObservers*(this: var ObserverSet): Observers  {.importcpp: "getObservers".}

proc getObservers*(this: ObserverSet): Observers  {.importcpp: "getObservers".}

proc `=`*(this: var ObserverSet, Observerset): Observerset  {.importcpp: "# = #".}

{.pop.}  # header: "Observer"
