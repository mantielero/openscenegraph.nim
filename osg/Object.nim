import Referenced # Provides Referenced
import CopyOp # Provides CopyOp
import stringfwd # Provides string
import Camera # Provides Camera
import StateSet # Provides StateSet
import Callback # Provides CallbackObject, Callback
import Drawable # Provides Drawable
import Image # Provides Image
import State # Provides State
import Uniform # Provides Uniform
import NodeVisitor # Provides NodeVisitor
import UserDataContainer # Provides UserDataContainer
import StateAttribute # Provides StateAttribute
import ValueObject # Provides ValueObject
import Node # Provides Node


type
  DataVariance* {.size:sizeof(cuint),header: "Object", importcpp: "osg::Object::DataVariance".} = enum
    DYNAMIC = 0,
    STATIC = 1,
    UNSPECIFIED = 2

{.push header: "Object".}


# Constructors and methods
proc constructObject*(): Object {.constructor,importcpp: "Object".}
    ## Construct an object. Note Object is a pure virtual base class and
    ## therefore cannot be constructed on its own, only derived classes which
    ## override the clone and className methods are concrete classes and can
    ## be constructed.

proc constructObject*(threadSafeRefUnref: bool): Object {.constructor,importcpp: "Object(@)".}

proc constructObject*(Object, copyop: Copyop = SHALLOW_COPY): Object {.constructor,importcpp: "Object(@)".}
    ## Copy constructor, optional CopyOp object can be used to control
    ## shallow vs deep copying of dynamic data.

proc constructDummyObject*(): DummyObject {.constructor,importcpp: "DummyObject".}

proc constructDummyObject*(org: Dummyobject, copyop: Copyop): DummyObject {.constructor,importcpp: "DummyObject(@)".}

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

proc setUserDataContainer*[T](this: var Object, udc: ref_ptr[T])  {.importcpp: "setUserDataContainer".}

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

proc setUserData*[T](this: var Object, ud: ref_ptr[T])  {.importcpp: "setUserData".}

proc getUserData*(this: var Object): ptr Referenced   {.importcpp: "getUserData".}
    ## Get user data.

proc getUserData*(this: Object): ptr Referenced   {.importcpp: "getUserData".}
    ## Get const user data.

proc getUserValue*[T](this: Object, name: String, value: var T): bool  {.importcpp: "getUserValue".}
    ## Convenience method that casts the named UserObject to
    ## osg::TemplateValueObject<T> and gets the value. To use this template
    ## method you need to include the osg/ValueObject header.

proc setUserValue*[T](this: var Object, name: String, value: T)  {.importcpp: "setUserValue".}
    ## Convenience method that creates the osg::TemplateValueObject<T> to
    ## store the specified value and adds it as a named UserObject. To use
    ## this template method you need to include the osg/ValueObject header.

proc resizeGLObjectBuffers*(this: var Object, cuint)  {.importcpp: "resizeGLObjectBuffers".}
    ## Resize any per context GLObject buffers to specified size.

proc releaseGLObjects*(this: Object, ptr State  = 0)  {.importcpp: "releaseGLObjects".}
    ## If State is non-zero, this function releases any associated OpenGL
    ## objects for the specified graphics context. Otherwise, releases OpenGL
    ## objects for all graphics contexts.

proc `=`*(this: var Object, Object): Object  {.importcpp: "# = #".}
    ## disallow any copy operator.

proc clone*[T](this: var osg, t: ptr T, copyop: Copyop): ptr T  {.importcpp: "clone".}

proc clone*[T](this: var osg, t: ptr T, name: String, copyop: Copyop): ptr T  {.importcpp: "clone".}

proc cloneType*[T](this: var osg, t: ptr T): ptr T  {.importcpp: "cloneType".}

proc cloneType*(this: DummyObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DummyObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DummyObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DummyObject): cstring  {.importcpp: "libraryName".}

proc className*(this: DummyObject): cstring  {.importcpp: "className".}

proc resizeGLObjectBuffers*[T](this: var osg, `object`: Ref_ptr[T], maxSize: cuint)  {.importcpp: "resizeGLObjectBuffers".}

proc releaseGLObjects*[T](this: var osg, `object`: Ref_ptr[T], state: ptr State )  {.importcpp: "releaseGLObjects".}

{.pop.} # header: "Object
