import osg_types
  # File: Object  was providing: osg::Object
  # File: Referenced  was providing: osg::Referenced
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  DefaultUserDataContainer* {.header: "UserDataContainer", importcpp: "osg::DefaultUserDataContainer", byref.} = object #of osg::UserDataContainer
    ## Internal structure for storing all user data.

  DescriptionList* {.header: "UserDataContainer", importcpp: "osg::UserDataContainer::DescriptionList".} = cint
  ObjectList* {.header: "UserDataContainer", importcpp: "osg::DefaultUserDataContainer::ObjectList".} = cint


{.push header: "UserDataContainer".}

proc constructUserDataContainer*(): UserDataContainer {.constructor,importcpp: "osg::UserDataContainer::UserDataContainer".}

proc constructUserDataContainer*(udc: UserDataContainer, copyop: CopyOp = SHALLOW_COPY): UserDataContainer {.constructor,importcpp: "osg::UserDataContainer::UserDataContainer(@)".}

proc constructDefaultUserDataContainer*(): DefaultUserDataContainer {.constructor,importcpp: "osg::DefaultUserDataContainer::DefaultUserDataContainer".}

proc constructDefaultUserDataContainer*(udc: DefaultUserDataContainer, copyop: CopyOp = SHALLOW_COPY): DefaultUserDataContainer {.constructor,importcpp: "osg::DefaultUserDataContainer::DefaultUserDataContainer(@)".}

proc isSameKindAs*(this: UserDataContainer, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: UserDataContainer): cstring  {.importcpp: "libraryName".}
    ## return the name of the object's library. Must be defined by derived
    ## classes. The OpenSceneGraph convention is that the namespace of a
    ## library is the same as the library name.

proc className*(this: UserDataContainer): cstring  {.importcpp: "className".}
    ## return the name of the object's class type. Must be defined by derived
    ## classes.

proc asUserDataContainer*(this: var UserDataContainer): ptr UserDataContainer   {.importcpp: "asUserDataContainer".}
    ## Convert 'this' into a UserDataContainer pointer if Object is a
    ## UserDataContainer, otherwise return 0. Equivalent to
    ## dynamic_cast<UserDataContainer*>(this).

proc asUserDataContainer*(this: UserDataContainer): ptr UserDataContainer   {.importcpp: "asUserDataContainer".}
    ## convert 'const this' into a const UserDataContainer pointer if Object
    ## is a UserDataContainer, otherwise return 0. Equivalent to
    ## dynamic_cast<const UserDataContainer*>(this).

proc setUserData*(this: var UserDataContainer, obj: ptr Referenced )  {.importcpp: "setUserData".}
    ## Set user data, data must be subclassed from Referenced to allow
    ## automatic memory handling. If your own data isn't directly subclassed
    ## from Referenced then create an adapter object which points to your own
    ## object and handles the memory addressing.

proc getUserData*(this: var UserDataContainer): ptr Referenced   {.importcpp: "getUserData".}
    ## Get user data.

proc getUserData*(this: UserDataContainer): ptr Referenced   {.importcpp: "getUserData".}
    ## Get const user data.

proc addUserObject*(this: var UserDataContainer, obj: ptr Object ): cuint  {.importcpp: "addUserObject".}
    ## Add user data object. Returns the index position of object added.

proc setUserObject*(this: var UserDataContainer, i: cuint, obj: ptr Object )  {.importcpp: "setUserObject".}
    ## Add element to list of user data objects.

proc removeUserObject*(this: var UserDataContainer, i: cuint)  {.importcpp: "removeUserObject".}
    ## Remove element from the list of user data objects.

proc getUserObject*(this: var UserDataContainer, i: cuint): ptr Object   {.importcpp: "getUserObject".}
    ## Get user data object as specified index position.

proc getUserObject*(this: UserDataContainer, i: cuint): ptr Object   {.importcpp: "getUserObject".}
    ## Get const user data object as specified index position.

proc getNumUserObjects*(this: UserDataContainer): cuint  {.importcpp: "getNumUserObjects".}
    ## Get number of user objects assigned to this object.

proc getUserObjectIndex*(this: UserDataContainer, obj: ptr Object , startPos: cuint = 0): cuint  {.importcpp: "getUserObjectIndex".}
    ## Get the index position of specified user data object.

proc getUserObjectIndex*(this: UserDataContainer, name: string, startPos: cuint = 0): cuint  {.importcpp: "getUserObjectIndex".}
    ## Get the index position of first user data object that matches
    ## specified name.

proc getUserObject*(this: var UserDataContainer, name: string, startPos: cuint = 0): ptr Object   {.importcpp: "getUserObject".}
    ## Get first user data object with specified name.

proc getUserObject*(this: UserDataContainer, name: string, startPos: cuint = 0): ptr Object   {.importcpp: "getUserObject".}
    ## Get first const user data object with specified name.

proc setDescriptions*(this: var UserDataContainer, descriptions: DescriptionList)  {.importcpp: "setDescriptions".}
    ## Set the list of string descriptions.

proc getDescriptions*(this: var UserDataContainer): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the description list.

proc getDescriptions*(this: UserDataContainer): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the const description list.

proc getNumDescriptions*(this: UserDataContainer): cuint  {.importcpp: "getNumDescriptions".}
    ## Get number of description strings.

proc addDescription*(this: var UserDataContainer, desc: string)  {.importcpp: "addDescription".}
    ## Add a description string.

proc cloneType*(this: DefaultUserDataContainer): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DefaultUserDataContainer, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DefaultUserDataContainer, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DefaultUserDataContainer): cstring  {.importcpp: "libraryName".}

proc className*(this: DefaultUserDataContainer): cstring  {.importcpp: "className".}

proc setThreadSafeRefUnref*(this: var DefaultUserDataContainer, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}

proc setUserData*(this: var DefaultUserDataContainer, obj: ptr Referenced )  {.importcpp: "setUserData".}
    ## Set user data, data must be subclassed from Referenced to allow
    ## automatic memory handling. If your own data isn't directly subclassed
    ## from Referenced then create an adapter object which points to your own
    ## object and handles the memory addressing.

proc getUserData*(this: var DefaultUserDataContainer): ptr Referenced   {.importcpp: "getUserData".}
    ## Get user data.

proc getUserData*(this: DefaultUserDataContainer): ptr Referenced   {.importcpp: "getUserData".}
    ## Get const user data.

proc addUserObject*(this: var DefaultUserDataContainer, obj: ptr Object ): cuint  {.importcpp: "addUserObject".}
    ## Add user data object. Returns the index position of object added.

proc setUserObject*(this: var DefaultUserDataContainer, i: cuint, obj: ptr Object )  {.importcpp: "setUserObject".}
    ## Add element to list of user data objects.

proc removeUserObject*(this: var DefaultUserDataContainer, i: cuint)  {.importcpp: "removeUserObject".}
    ## Remove element from the list of user data objects.

proc getUserObject*(this: var DefaultUserDataContainer, i: cuint): ptr Object   {.importcpp: "getUserObject".}
    ## Get user data object as specified index position.

proc getUserObject*(this: DefaultUserDataContainer, i: cuint): ptr Object   {.importcpp: "getUserObject".}
    ## Get const user data object as specified index position.

proc getNumUserObjects*(this: DefaultUserDataContainer): cuint  {.importcpp: "getNumUserObjects".}
    ## Get number of user objects assigned to this object.

proc getUserObjectIndex*(this: DefaultUserDataContainer, obj: ptr Object , startPos: cuint = 0): cuint  {.importcpp: "getUserObjectIndex".}
    ## Get the index position of specified user data object.

proc getUserObjectIndex*(this: DefaultUserDataContainer, name: string, startPos: cuint = 0): cuint  {.importcpp: "getUserObjectIndex".}
    ## Get the index position of first user data object that matches
    ## specified name.

proc setDescriptions*(this: var DefaultUserDataContainer, descriptions: DescriptionList)  {.importcpp: "setDescriptions".}
    ## Set the list of string descriptions.

proc getDescriptions*(this: var DefaultUserDataContainer): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the description list.

proc getDescriptions*(this: DefaultUserDataContainer): DescriptionList  {.importcpp: "getDescriptions".}
    ## Get the const description list.

proc getNumDescriptions*(this: DefaultUserDataContainer): cuint  {.importcpp: "getNumDescriptions".}
    ## Get number of description strings.

proc addDescription*(this: var DefaultUserDataContainer, desc: string)  {.importcpp: "addDescription".}
    ## Add a description string.

{.pop.}  # header: "UserDataContainer"
