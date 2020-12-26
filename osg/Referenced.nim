import /usr/include/osg/DeleteHandler  # provides: osg::DeleteHandler
import /usr/include/osg/Observer  # provides: osg::Observer, osg::ObserverSet
type
  depends_on* {.header: "Referenced", importcpp: "osg::depends_on", byref.} [T] = object
    ## template class to help enforce static initialization order.



{.push header: "Referenced".}

proc constructdepends_on*[T, M](): depends_on {.constructor,importcpp: "osg::depends_on::depends_on<T, M>".}

proc constructReferenced*(): Referenced {.constructor,importcpp: "osg::Referenced::Referenced".}

proc constructReferenced*(threadSafeRefUnref: bool): Referenced {.constructor,importcpp: "osg::Referenced::Referenced(@)".}
    ## Deprecated, Referenced is now always uses thread safe ref/unref, use
    ## default Referenced() constructor instead

proc constructReferenced*(Referenced): Referenced {.constructor,importcpp: "osg::Referenced::Referenced(@)".}

proc `=`*(this: var Referenced, Referenced): Referenced  {.importcpp: "# = #".}

proc setThreadSafeRefUnref*(this: var Referenced, bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Deprecated, Referenced is always theadsafe so there method now has no
    ## effect and does not need to be called.

proc getThreadSafeRefUnref*(this: Referenced): bool  {.importcpp: "getThreadSafeRefUnref".}

proc getRefMutex*(this: Referenced): ptr Mutex   {.importcpp: "getRefMutex".}

proc getGlobalReferencedMutex*(this: var Referenced): ptr Mutex   {.importcpp: "getGlobalReferencedMutex".}
    ## Get the optional global Referenced mutex, this can be shared between
    ## all osg::Referenced.

proc `ref`*(this: Referenced): cint  {.importcpp: "ref".}
    ## Increment the reference count by one, indicating that this object has
    ## another pointer which is referencing it.

proc unref*(this: Referenced): cint  {.importcpp: "unref".}
    ## Decrement the reference count by one, indicating that a pointer to
    ## this object is no longer referencing it. If the reference count goes
    ## to zero, it is assumed that this object is no longer referenced and is
    ## automatically deleted.

proc unref_nodelete*(this: Referenced): cint  {.importcpp: "unref_nodelete".}
    ## Decrement the reference count by one, indicating that a pointer to
    ## this object is no longer referencing it. However, do not delete it,
    ## even if ref count goes to 0. Warning, unref_nodelete() should only be
    ## called if the user knows exactly who will be responsible for, one
    ## should prefer unref() over unref_nodelete() as the latter can lead to
    ## memory leaks.

proc referenceCount*(this: Referenced): cint  {.importcpp: "referenceCount".}
    ## Return the number of pointers currently referencing this object.

proc getObserverSet*(this: Referenced): ptr Observerset   {.importcpp: "getObserverSet".}
    ## Get the ObserverSet if one is attached, otherwise return NULL.

proc getOrCreateObserverSet*(this: Referenced): ptr Observerset   {.importcpp: "getOrCreateObserverSet".}
    ## Get the ObserverSet if one is attached, otherwise create an
    ## ObserverSet, attach it, then return this newly created ObserverSet.

proc addObserver*(this: Referenced, observer: ptr Observer )  {.importcpp: "addObserver".}
    ## Add a Observer that is observing this object, notify the Observer when
    ## this object gets deleted.

proc removeObserver*(this: Referenced, observer: ptr Observer )  {.importcpp: "removeObserver".}
    ## Remove Observer that is observing this object.

proc setDeleteHandler*(this: var Referenced, handler: ptr Deletehandler )  {.importcpp: "setDeleteHandler".}
    ## Set a DeleteHandler to which deletion of all referenced counted
    ## objects will be delegated.

proc getDeleteHandler*(this: var Referenced): ptr Deletehandler   {.importcpp: "getDeleteHandler".}
    ## Get a DeleteHandler.

proc signalObserversAndDelete*(this: Referenced, signalDelete: bool, doDelete: bool)  {.importcpp: "signalObserversAndDelete".}

proc deleteUsingDeleteHandler*(this: Referenced)  {.importcpp: "deleteUsingDeleteHandler".}

proc `ref`*(this: Referenced): cint  {.importcpp: "ref".}
    ## Increment the reference count by one, indicating that this object has
    ## another pointer which is referencing it.

proc unref*(this: Referenced): cint  {.importcpp: "unref".}
    ## Decrement the reference count by one, indicating that a pointer to
    ## this object is no longer referencing it. If the reference count goes
    ## to zero, it is assumed that this object is no longer referenced and is
    ## automatically deleted.

{.pop.}  # header: "Referenced"
