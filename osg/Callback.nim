import CopyOp # Provides CopyOp
import stringfwd # Provides string
import Object # Provides Object
import Drawable # Provides Drawable
import State # Provides State
import Uniform # Provides Uniform
import NodeVisitor # Provides NodeVisitor
import StateAttribute # Provides StateAttribute
import RenderInfo # Provides RenderInfo
import Node # Provides Node


type
  Parameters* {.header: "Callback", importcpp: "osg::Parameters".} = cint
{.push header: "Callback".}


# Constructors and methods
proc constructCallback*(): Callback {.constructor,importcpp: "Callback".}

proc constructCallback*(cb: Callback, copyop: Copyop): Callback {.constructor,importcpp: "Callback(@)".}

proc constructCallbackObject*(): CallbackObject {.constructor,importcpp: "CallbackObject".}

proc constructCallbackObject*(name: String): CallbackObject {.constructor,importcpp: "CallbackObject(@)".}

proc constructCallbackObject*(co: Callbackobject, copyop: Copyop = SHALLOW_COPY): CallbackObject {.constructor,importcpp: "CallbackObject(@)".}

proc constructNodeCallback*(): NodeCallback {.constructor,importcpp: "NodeCallback".}

proc constructNodeCallback*(nc: Nodecallback, copyop: Copyop): NodeCallback {.constructor,importcpp: "NodeCallback(@)".}

proc constructStateAttributeCallback*(): StateAttributeCallback {.constructor,importcpp: "StateAttributeCallback".}

proc constructStateAttributeCallback*(org: Stateattributecallback, copyop: Copyop): StateAttributeCallback {.constructor,importcpp: "StateAttributeCallback(@)".}

proc constructUniformCallback*(): UniformCallback {.constructor,importcpp: "UniformCallback".}

proc constructUniformCallback*(org: Uniformcallback, copyop: Copyop): UniformCallback {.constructor,importcpp: "UniformCallback(@)".}

proc constructDrawableUpdateCallback*(): DrawableUpdateCallback {.constructor,importcpp: "DrawableUpdateCallback".}

proc constructDrawableUpdateCallback*(org: Drawableupdatecallback, copyop: Copyop): DrawableUpdateCallback {.constructor,importcpp: "DrawableUpdateCallback(@)".}

proc constructDrawableEventCallback*(): DrawableEventCallback {.constructor,importcpp: "DrawableEventCallback".}

proc constructDrawableEventCallback*(org: Drawableeventcallback, copyop: Copyop): DrawableEventCallback {.constructor,importcpp: "DrawableEventCallback(@)".}

proc constructDrawableCullCallback*(): DrawableCullCallback {.constructor,importcpp: "DrawableCullCallback".}

proc constructDrawableCullCallback*(org: Drawablecullcallback, copyop: Copyop): DrawableCullCallback {.constructor,importcpp: "DrawableCullCallback(@)".}

proc cloneType*(this: Callback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Callback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Callback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Callback): cstring  {.importcpp: "libraryName".}

proc className*(this: Callback): cstring  {.importcpp: "className".}

proc asCallback*(this: var Callback): ptr Callback   {.importcpp: "asCallback".}

proc asCallback*(this: Callback): ptr Callback   {.importcpp: "asCallback".}

proc asCallbackObject*(this: var Callback): ptr Callbackobject   {.importcpp: "asCallbackObject".}

proc asCallbackObject*(this: Callback): ptr Callbackobject   {.importcpp: "asCallbackObject".}

proc asNodeCallback*(this: var Callback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: Callback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc asStateAttributeCallback*(this: var Callback): ptr Stateattributecallback   {.importcpp: "asStateAttributeCallback".}

proc asStateAttributeCallback*(this: Callback): ptr Stateattributecallback   {.importcpp: "asStateAttributeCallback".}

proc asUniformCallback*(this: var Callback): ptr Uniformcallback   {.importcpp: "asUniformCallback".}

proc asUniformCallback*(this: Callback): ptr Uniformcallback   {.importcpp: "asUniformCallback".}

proc asDrawableUpdateCallback*(this: var Callback): ptr Drawableupdatecallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableUpdateCallback*(this: Callback): ptr Drawableupdatecallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableEventCallback*(this: var Callback): ptr Drawableeventcallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableEventCallback*(this: Callback): ptr Drawableeventcallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableCullCallback*(this: var Callback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: Callback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

proc asEventHandler*(this: var Callback): ptr Eventhandler   {.importcpp: "asEventHandler".}

proc asEventHandler*(this: Callback): ptr Eventhandler   {.importcpp: "asEventHandler".}

proc run*(this: var Callback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## Invoke the callback, first parameter is the Object that the callback
    ## is attached to, the second parameter, the data, is typically the
    ## NodeVisitor that is invoking the callback. The run(..) method may be
    ## overridden by users directly, or if the user is using one of the old
    ## style callbacks such as NodeCallback or Drawable::UpdateCallback then
    ## you can just override the appropriate callback method on those
    ## callback subclasses. If you are implementing your own callback then
    ## one should call traverse() to make sure nested callbacks and visitor
    ## traversal() is completed.

proc traverse*(this: var Callback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "traverse".}
    ## traverse the nested callbacks or call NodeVisitor::traverse() if the
    ## object is Node, and data is NodeVisitor.

proc setNestedCallback*(this: var Callback, cb: ptr Callback )  {.importcpp: "setNestedCallback".}

proc getNestedCallback*(this: var Callback): ptr Callback   {.importcpp: "getNestedCallback".}

proc getNestedCallback*(this: Callback): ptr Callback   {.importcpp: "getNestedCallback".}

proc addNestedCallback*(this: var Callback, nc: ptr Callback )  {.importcpp: "addNestedCallback".}

proc removeNestedCallback*(this: var Callback, nc: ptr Callback )  {.importcpp: "removeNestedCallback".}

proc cloneType*(this: CallbackObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CallbackObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CallbackObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CallbackObject): cstring  {.importcpp: "libraryName".}

proc className*(this: CallbackObject): cstring  {.importcpp: "className".}

proc asCallbackObject*(this: var CallbackObject): ptr Callbackobject   {.importcpp: "asCallbackObject".}

proc asCallbackObject*(this: CallbackObject): ptr Callbackobject   {.importcpp: "asCallbackObject".}

proc run*(this: var CallbackObject, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## CallbackObject::run(..) method.

proc run*(this: CallbackObject, `object`: ptr Object ): bool  {.importcpp: "run".}

proc run*(this: CallbackObject, `object`: ptr Object , inputParameters: Parameters, outputParameters: Parameters): bool  {.importcpp: "run".}

proc cloneType*(this: NodeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: NodeCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: NodeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: NodeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: NodeCallback): cstring  {.importcpp: "className".}

proc asNodeCallback*(this: var NodeCallback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: NodeCallback): ptr Nodecallback   {.importcpp: "asNodeCallback".}

proc run*(this: var NodeCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## NodeCallback overrides the Callback::run() method to adapt it the old
    ## style NodeCallback::operator()(Node* node, NodeVisitor* nv) method.

proc `()`*(this: var NodeCallback, node: ptr Node , nv: ptr Nodevisitor )  {.importcpp: "# () #".}
    ## Callback method called by the NodeVisitor when visiting a node.

proc cloneType*(this: StateAttributeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: StateAttributeCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: StateAttributeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: StateAttributeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: StateAttributeCallback): cstring  {.importcpp: "className".}

proc asStateAttributeCallback*(this: var StateAttributeCallback): ptr Stateattributecallback   {.importcpp: "asStateAttributeCallback".}

proc asStateAttributeCallback*(this: StateAttributeCallback): ptr Stateattributecallback   {.importcpp: "asStateAttributeCallback".}

proc run*(this: var StateAttributeCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc `()`*(this: var StateAttributeCallback, ptr Stateattribute , ptr Nodevisitor )  {.importcpp: "# () #".}
    ## do customized update code.

proc cloneType*(this: UniformCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: UniformCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: UniformCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: UniformCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: UniformCallback): cstring  {.importcpp: "className".}

proc asUniformCallback*(this: var UniformCallback): ptr Uniformcallback   {.importcpp: "asUniformCallback".}

proc asUniformCallback*(this: UniformCallback): ptr Uniformcallback   {.importcpp: "asUniformCallback".}

proc run*(this: var UniformCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## UniformCallback::run(..) method.

proc `()`*(this: var UniformCallback, ptr Uniform , ptr Nodevisitor )  {.importcpp: "# () #".}
    ## do customized update code.

proc cloneType*(this: DrawableUpdateCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableUpdateCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableUpdateCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableUpdateCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableUpdateCallback): cstring  {.importcpp: "className".}

proc asDrawableUpdateCallback*(this: var DrawableUpdateCallback): ptr Drawableupdatecallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableUpdateCallback*(this: DrawableUpdateCallback): ptr Drawableupdatecallback   {.importcpp: "asDrawableUpdateCallback".}

proc run*(this: var DrawableUpdateCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc update*(this: var DrawableUpdateCallback, ptr Nodevisitor , ptr Drawable )  {.importcpp: "update".}
    ## do customized update code.

proc cloneType*(this: DrawableEventCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableEventCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableEventCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableEventCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableEventCallback): cstring  {.importcpp: "className".}

proc asDrawableEventCallback*(this: var DrawableEventCallback): ptr Drawableeventcallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableEventCallback*(this: DrawableEventCallback): ptr Drawableeventcallback   {.importcpp: "asDrawableEventCallback".}

proc run*(this: var DrawableEventCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc event*(this: var DrawableEventCallback, ptr Nodevisitor , ptr Drawable )  {.importcpp: "event".}
    ## do customized Event code.

proc cloneType*(this: DrawableCullCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableCullCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableCullCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableCullCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableCullCallback): cstring  {.importcpp: "className".}

proc asDrawableCullCallback*(this: var DrawableCullCallback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: DrawableCullCallback): ptr Drawablecullcallback   {.importcpp: "asDrawableCullCallback".}

proc cull*(this: DrawableCullCallback, ptr Nodevisitor , ptr Drawable , ptr State ): bool  {.importcpp: "cull".}
    ## deprecated.

proc cull*(this: DrawableCullCallback, nv: ptr Nodevisitor , drawable: ptr Drawable , renderInfo: ptr Renderinfo ): bool  {.importcpp: "cull".}
    ## do customized cull code, return true if drawable should be culled.

{.pop.} # header: "Callback
