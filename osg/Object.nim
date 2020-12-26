import /usr/include/osg/State  # provides: osg::State
import /usr/include/osg/Camera  # provides: osg::Camera
import /usr/include/osg/Referenced  # provides: osg::Referenced
import /usr/include/osg/StateAttribute  # provides: osg::StateAttribute
import /usr/include/osg/ValueObject  # provides: osg::ValueObject
import /usr/include/osg/Node  # provides: osg::Node
import /usr/include/osg/Image  # provides: osg::Image
import /usr/include/osg/Drawable  # provides: osg::Drawable
import /usr/include/osg/Callback  # provides: osg::CallbackObject, osg::Callback
import /usr/include/osg/StateSet  # provides: osg::StateSet
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/UserDataContainer  # provides: osg::UserDataContainer
import /usr/include/osg/Uniform  # provides: osg::Uniform
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
type
  DataVariance* {.size:sizeof(cuint),header: "Object", importcpp: "osg::Object::DataVariance".} = enum
    DYNAMIC = 0,
    STATIC = 1,
    UNSPECIFIED = 2

  DummyObject* {.header: "Object", importcpp: "osg::DummyObject", byref.} = object #of osg::Object
    ## DummyObject that can be used as placeholder but otherwise has no other
    ## functionality.



{.push header: "Object".}

proc constructObject*(): Object {.constructor,importcpp: "osg::Object::Object".}
    ## Construct an object. Note Object is a pure virtual base class and
    ## therefore cannot be constructed on its own, only derived classes which
    ## override the clone and className methods are concrete classes and can
    ## be constructed.

proc constructObject*(threadSafeRefUnref: bool): Object {.constructor,importcpp: "osg::Object::Object(@)".}

proc constructObject*(Object, copyop: Copyop = SHALLOW_COPY): Object {.constructor,importcpp: "osg::Object::Object(@)".}
    ## Copy constructor, optional CopyOp object can be used to control
    ## shallow vs deep copying of dynamic data.

proc constructDummyObject*(): DummyObject {.constructor,importcpp: "osg::DummyObject::DummyObject".}

proc constructDummyObject*(org: Dummyobject, copyop: Copyop): DummyObject {.constructor,importcpp: "osg::DummyObject::DummyObject(@)".}

proc cloneType*(this: Object): ptr Object   {.importcpp: "cloneType".}
    ## Clone the type of an object, with Object* return type. Must be defined
    ## by derived classes.

proc clone*(this: Object, Copyop): ptr Object   {.importcpp: "clone".}
    ## Clone an object, with Object* return type. Must be defined by derived
    ## classes.

proc isSameKindAs*(this: Object, ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Object): cstring  {.importcpp: "libraryName".}
    ## return the name of the object's library. Must be defined by derived
    ## classes. The OpenSceneGraph convention is that the namespace of a
    ## library is the same as the library name.

proc className*(this: Object): cstring  {.importcpp: "className".}
    ## return the name of the object's class type. Must be defined by derived
    ## classes.

proc getCompoundClassName*(this: Object): String  {.importcpp: "getCompoundClassName".}
    ## return the compound class name that combines the library name and
    ## class name.

proc asNode*(this: var Object): ptr Node   {.importcpp: "asNode".}
    ## Convert 'this' into a Node pointer if Object is a Node, otherwise
    ## return 0. Equivalent to dynamic_cast<Node*>(this).

proc asNode*(this: Object): ptr Node   {.importcpp: "asNode".}
    ## convert 'const this' into a const Node pointer if Object is a Node,
    ## otherwise return 0. Equivalent to dynamic_cast<const Node*>(this).

proc asNodeVisitor*(this: var Object): ptr Nodevisitor   {.importcpp: "asNodeVisitor".}
    ## Convert 'this' into a NodeVisitor pointer if Object is a NodeVisitor,
    ## otherwise return 0. Equivalent to dynamic_cast<NodeVisitor*>(this).

proc asNodeVisitor*(this: Object): ptr Nodevisitor   {.importcpp: "asNodeVisitor".}
    ## convert 'const this' into a const NodeVisitor pointer if Object is a
    ## NodeVisitor, otherwise return 0. Equivalent to dynamic_cast<const
    ## NodeVisitor*>(this).

proc asStateSet*(this: var Object): ptr Stateset   {.importcpp: "asStateSet".}
    ## Convert 'this' into a StateSet pointer if Object is a StateSet,
    ## otherwise return 0. Equivalent to dynamic_cast<StateSet*>(this).

proc asStateSet*(this: Object): ptr Stateset   {.importcpp: "asStateSet".}
    ## convert 'const this' into a const StateSet pointer if Object is a
    ## StateSet, otherwise return 0. Equivalent to dynamic_cast<const
    ## StateSet*>(this).

proc asStateAttribute*(this: var Object): ptr Stateattribute   {.importcpp: "asStateAttribute".}
    ## Convert 'this' into a StateAttribute pointer if Object is a
    ## StateAttribute, otherwise return 0. Equivalent to
    ## dynamic_cast<StateAttribute*>(this).

proc asStateAttribute*(this: Object): ptr Stateattribute   {.importcpp: "asStateAttribute".}
    ## convert 'const this' into a const StateAttribute pointer if Object is
    ## a StateAttribute, otherwise return 0. Equivalent to dynamic_cast<const
    ## StateAttribute*>(this).

proc asUniform*(this: var Object): ptr Uniform   {.importcpp: "asUniform".}
    ## Convert 'this' into a Uniform pointer if Object is a Uniform,
    ## otherwise return 0. Equivalent to dynamic_cast<Uniform*>(this).

proc asUniform*(this: Object): ptr Uniform   {.importcpp: "asUniform".}
    ## convert 'const this' into a const Uniform pointer if Object is a
    ## Uniform, otherwise return 0. Equivalent to dynamic_cast<const
    ## Uniform*>(this).

proc asCamera*(this: var Object): ptr Camera   {.importcpp: "asCamera".}
    ## Convert 'this' into a Camera pointer if Node is a Camera, otherwise
    ## return 0. Equivalent to dynamic_cast<Camera*>(this).

proc asCamera*(this: Object): ptr Camera   {.importcpp: "asCamera".}
    ## convert 'const this' into a const Camera pointer if Node is a Camera,
    ## otherwise return 0. Equivalent to dynamic_cast<const Camera*>(this).

proc asDrawable*(this: var Object): ptr Drawable   {.importcpp: "asDrawable".}
    ## Convert 'this' into a Drawable pointer if Object is a Drawable,
    ## otherwise return 0. Equivalent to dynamic_cast<Drawable*>(this).

proc asDrawable*(this: Object): ptr Drawable   {.importcpp: "asDrawable".}
    ## convert 'const this' into a const Drawable pointer if Object is a
    ## Drawable, otherwise return 0. Equivalent to dynamic_cast<const
    ## Drawable*>(this).

proc asCallback*(this: var Object): ptr Callback   {.importcpp: "asCallback".}
    ## Convert 'this' into a Callback pointer if Object is a Callback,
    ## otherwise return 0. Equivalent to dynamic_cast<Callback*>(this).

proc asCallback*(this: Object): ptr Callback   {.importcpp: "asCallback".}
    ## convert 'const this' into a const Callback pointer if Object is a
    ## Callback, otherwise return 0. Equivalent to dynamic_cast<const
    ## Callback*>(this).

proc asCallbackObject*(this: var Object): ptr Callbackobject   {.importcpp: "asCallbackObject".}
    ## Convert 'this' into a CallbackObject pointer if Object is a
    ## CallbackObject, otherwise return 0. Equivalent to
    ## dynamic_cast<CallbackObject*>(this).

proc asCallbackObject*(this: Object): ptr Callbackobject   {.importcpp: "asCallbackObject".}
    ## convert 'const this' into a const CallbackObject pointer if Object is
    ## a CallbackObject, otherwise return 0. Equivalent to dynamic_cast<const
    ## CallbackObject*>(this).

proc asUserDataContainer*(this: var Object): ptr Userdatacontainer   {.importcpp: "asUserDataContainer".}
    ## Convert 'this' into a UserDataContainer pointer if Object is a
    ## UserDataContainer, otherwise return 0. Equivalent to
    ## dynamic_cast<UserDataContainer*>(this).

proc asUserDataContainer*(this: Object): ptr Userdatacontainer   {.importcpp: "asUserDataContainer".}
    ## convert 'const this' into a const UserDataContainer pointer if Object
    ## is a UserDataContainer, otherwise return 0. Equivalent to
    ## dynamic_cast<const UserDataContainer*>(this).

proc asValueObject*(this: var Object): ptr Valueobject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc asValueObject*(this: Object): ptr Valueobject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc asImage*(this: var Object): ptr Image   {.importcpp: "asImage".}
    ## Convert 'this' into a Image pointer if Object is a Image, otherwise
    ## return 0. Equivalent to dynamic_cast<Image*>(this).

proc asImage*(this: Object): ptr Image   {.importcpp: "asImage".}
    ## Convert 'this' into a Image pointer if Object is a Image, otherwise
    ## return 0. Equivalent to dynamic_cast<Image*>(this).

proc setThreadSafeRefUnref*(this: var Object, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc setName*(this: var Object, name: String)  {.importcpp: "setName".}
    ## Set the name of object using C++ style string.

proc setName*(this: var Object, name: cstring)  {.importcpp: "setName".}
    ## Set the name of object using a C style string.

proc getName*(this: Object): String  {.importcpp: "getName".}
    ## Get the name of object.

proc setDataVariance*(this: var Object, dv: Datavariance)  {.importcpp: "setDataVariance".}
    ## Set the data variance of this object. Can be set to either STATIC for
    ## values that do not change over the lifetime of the object, or DYNAMIC
    ## for values that vary over the lifetime of the object. The DataVariance
    ## value can be used by routines such as optimization codes that wish to
    ## share static data. UNSPECIFIED is used to specify that the
    ## DataVariance hasn't been set yet.

proc getDataVariance*(this: Object): Datavariance  {.importcpp: "getDataVariance".}
    ## Get the data variance of this object.

proc computeDataVariance*(this: var Object)  {.importcpp: "computeDataVariance".}
    ## Compute the DataVariance based on an assessment of callback etc.

proc setUserDataContainer*(this: var Object, udc: ptr Userdatacontainer )  {.importcpp: "setUserDataContainer".}
    ## set the UserDataContainer object.

proc getUserDataContainer*(this: var Object): ptr Userdatacontainer   {.importcpp: "getUserDataContainer".}
    ## get the UserDataContainer attached to this object.

proc getUserDataContainer*(this: Object): ptr Userdatacontainer   {.importcpp: "getUserDataContainer".}
    ## get the const UserDataContainer attached to this object.

proc getOrCreateUserDataContainer*(this: var Object): ptr Userdatacontainer   {.importcpp: "getOrCreateUserDataContainer".}
    ## Convenience method that returns the UserDataContainer, and if one
    ## doesn't already exist creates and assigns a DefaultUserDataContainer
    ## to the Object and then return this new UserDataContainer.

proc setUserData*(this: var Object, obj: ptr Referenced )  {.importcpp: "setUserData".}
    ## Set user data, data must be subclassed from Referenced to allow
    ## automatic memory handling. If your own data isn't directly subclassed
    ## from Referenced then create an adapter object which points to your own
    ## object and handles the memory addressing.

proc getUserData*(this: var Object): ptr Referenced   {.importcpp: "getUserData".}
    ## Get user data.

proc getUserData*(this: Object): ptr Referenced   {.importcpp: "getUserData".}
    ## Get const user data.

proc resizeGLObjectBuffers*(this: var Object, cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Object, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc `=`*(this: var Object, Object): Object  {.importcpp: "# = #".}
    ## disallow any copy operator.

proc cloneType*(this: DummyObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DummyObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DummyObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DummyObject): cstring  {.importcpp: "libraryName".}

proc className*(this: DummyObject): cstring  {.importcpp: "className".}

{.pop.}  # header: "Object"
