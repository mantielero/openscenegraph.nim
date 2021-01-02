import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute
  # File: Node  was providing: osg::Node
  # File: Drawable  was providing: osg::Drawable
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Uniform  was providing: osg::Uniform
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "Callback".}

proc constructCallback*(): Callback {.constructor,importcpp: "osg::Callback::Callback".}

proc constructCallback*(cb: Callback, copyop: CopyOp): Callback {.constructor,importcpp: "osg::Callback::Callback(@)".}

proc constructCallbackObject*(): CallbackObject {.constructor,importcpp: "osg::CallbackObject::CallbackObject".}

proc constructCallbackObject*(name: string): CallbackObject {.constructor,importcpp: "osg::CallbackObject::CallbackObject(@)".}

proc constructCallbackObject*(co: CallbackObject, copyop: CopyOp = SHALLOW_COPY): CallbackObject {.constructor,importcpp: "osg::CallbackObject::CallbackObject(@)".}

proc constructNodeCallback*(): NodeCallback {.constructor,importcpp: "osg::NodeCallback::NodeCallback".}

proc constructNodeCallback*(nc: NodeCallback, copyop: CopyOp): NodeCallback {.constructor,importcpp: "osg::NodeCallback::NodeCallback(@)".}

proc constructStateAttributeCallback*(): StateAttributeCallback {.constructor,importcpp: "osg::StateAttributeCallback::StateAttributeCallback".}

proc constructStateAttributeCallback*(org: StateAttributeCallback, copyop: CopyOp): StateAttributeCallback {.constructor,importcpp: "osg::StateAttributeCallback::StateAttributeCallback(@)".}

proc constructUniformCallback*(): UniformCallback {.constructor,importcpp: "osg::UniformCallback::UniformCallback".}

proc constructUniformCallback*(org: UniformCallback, copyop: CopyOp): UniformCallback {.constructor,importcpp: "osg::UniformCallback::UniformCallback(@)".}

proc constructDrawableUpdateCallback*(): DrawableUpdateCallback {.constructor,importcpp: "osg::DrawableUpdateCallback::DrawableUpdateCallback".}

proc constructDrawableUpdateCallback*(org: DrawableUpdateCallback, copyop: CopyOp): DrawableUpdateCallback {.constructor,importcpp: "osg::DrawableUpdateCallback::DrawableUpdateCallback(@)".}

proc constructDrawableEventCallback*(): DrawableEventCallback {.constructor,importcpp: "osg::DrawableEventCallback::DrawableEventCallback".}

proc constructDrawableEventCallback*(org: DrawableEventCallback, copyop: CopyOp): DrawableEventCallback {.constructor,importcpp: "osg::DrawableEventCallback::DrawableEventCallback(@)".}

proc constructDrawableCullCallback*(): DrawableCullCallback {.constructor,importcpp: "osg::DrawableCullCallback::DrawableCullCallback".}

proc constructDrawableCullCallback*(org: DrawableCullCallback, copyop: CopyOp): DrawableCullCallback {.constructor,importcpp: "osg::DrawableCullCallback::DrawableCullCallback(@)".}

proc cloneType*(this: Callback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Callback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Callback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Callback): cstring  {.importcpp: "libraryName".}

proc className*(this: Callback): cstring  {.importcpp: "className".}

proc asCallback*(this: var Callback): ptr Callback   {.importcpp: "asCallback".}

proc asCallback*(this: Callback): ptr Callback   {.importcpp: "asCallback".}

proc asCallbackObject*(this: var Callback): ptr CallbackObject   {.importcpp: "asCallbackObject".}

proc asCallbackObject*(this: Callback): ptr CallbackObject   {.importcpp: "asCallbackObject".}

proc asNodeCallback*(this: var Callback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: Callback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc asStateAttributeCallback*(this: var Callback): ptr StateAttributeCallback   {.importcpp: "asStateAttributeCallback".}

proc asStateAttributeCallback*(this: Callback): ptr StateAttributeCallback   {.importcpp: "asStateAttributeCallback".}

proc asUniformCallback*(this: var Callback): ptr UniformCallback   {.importcpp: "asUniformCallback".}

proc asUniformCallback*(this: Callback): ptr UniformCallback   {.importcpp: "asUniformCallback".}

proc asDrawableUpdateCallback*(this: var Callback): ptr DrawableUpdateCallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableUpdateCallback*(this: Callback): ptr DrawableUpdateCallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableEventCallback*(this: var Callback): ptr DrawableEventCallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableEventCallback*(this: Callback): ptr DrawableEventCallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableCullCallback*(this: var Callback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: Callback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc asEventHandler*(this: var Callback): ptr EventHandler   {.importcpp: "asEventHandler".}

proc asEventHandler*(this: Callback): ptr EventHandler   {.importcpp: "asEventHandler".}

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

proc clone*(this: CallbackObject, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CallbackObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: CallbackObject): cstring  {.importcpp: "libraryName".}

proc className*(this: CallbackObject): cstring  {.importcpp: "className".}

proc asCallbackObject*(this: var CallbackObject): ptr CallbackObject   {.importcpp: "asCallbackObject".}

proc asCallbackObject*(this: CallbackObject): ptr CallbackObject   {.importcpp: "asCallbackObject".}

proc run*(this: var CallbackObject, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## CallbackObject::run(..) method.

proc run*(this: CallbackObject, `object`: ptr Object ): bool  {.importcpp: "run".}

proc run*(this: CallbackObject, `object`: ptr Object , inputParameters: Parameters, outputParameters: Parameters): bool  {.importcpp: "run".}

proc cloneType*(this: NodeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: NodeCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: NodeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: NodeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: NodeCallback): cstring  {.importcpp: "className".}

proc asNodeCallback*(this: var NodeCallback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc asNodeCallback*(this: NodeCallback): ptr NodeCallback   {.importcpp: "asNodeCallback".}

proc run*(this: var NodeCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## NodeCallback overrides the Callback::run() method to adapt it the old
    ## style NodeCallback::operator()(Node* node, NodeVisitor* nv) method.

proc `()`*(this: var NodeCallback, node: ptr Node , nv: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## Callback method called by the NodeVisitor when visiting a node.

proc cloneType*(this: StateAttributeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: StateAttributeCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: StateAttributeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: StateAttributeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: StateAttributeCallback): cstring  {.importcpp: "className".}

proc asStateAttributeCallback*(this: var StateAttributeCallback): ptr StateAttributeCallback   {.importcpp: "asStateAttributeCallback".}

proc asStateAttributeCallback*(this: StateAttributeCallback): ptr StateAttributeCallback   {.importcpp: "asStateAttributeCallback".}

proc run*(this: var StateAttributeCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc `()`*(this: var StateAttributeCallback, a00: ptr StateAttribute , a01: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## do customized update code.

proc cloneType*(this: UniformCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: UniformCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: UniformCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: UniformCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: UniformCallback): cstring  {.importcpp: "className".}

proc asUniformCallback*(this: var UniformCallback): ptr UniformCallback   {.importcpp: "asUniformCallback".}

proc asUniformCallback*(this: UniformCallback): ptr UniformCallback   {.importcpp: "asUniformCallback".}

proc run*(this: var UniformCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## UniformCallback::run(..) method.

proc `()`*(this: var UniformCallback, a00: ptr Uniform , a01: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## do customized update code.

proc cloneType*(this: DrawableUpdateCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableUpdateCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableUpdateCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableUpdateCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableUpdateCallback): cstring  {.importcpp: "className".}

proc asDrawableUpdateCallback*(this: var DrawableUpdateCallback): ptr DrawableUpdateCallback   {.importcpp: "asDrawableUpdateCallback".}

proc asDrawableUpdateCallback*(this: DrawableUpdateCallback): ptr DrawableUpdateCallback   {.importcpp: "asDrawableUpdateCallback".}

proc run*(this: var DrawableUpdateCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc update*(this: var DrawableUpdateCallback, a00: ptr NodeVisitor , a01: ptr Drawable )  {.importcpp: "update".}
    ## do customized update code.

proc cloneType*(this: DrawableEventCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableEventCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableEventCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableEventCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableEventCallback): cstring  {.importcpp: "className".}

proc asDrawableEventCallback*(this: var DrawableEventCallback): ptr DrawableEventCallback   {.importcpp: "asDrawableEventCallback".}

proc asDrawableEventCallback*(this: DrawableEventCallback): ptr DrawableEventCallback   {.importcpp: "asDrawableEventCallback".}

proc run*(this: var DrawableEventCallback, `object`: ptr Object , data: ptr Object ): bool  {.importcpp: "run".}
    ## override Callback::run() entry point to adapt to
    ## StateAttributeCallback::run(..) method.

proc event*(this: var DrawableEventCallback, a00: ptr NodeVisitor , a01: ptr Drawable )  {.importcpp: "event".}
    ## do customized Event code.

proc cloneType*(this: DrawableCullCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: DrawableCullCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: DrawableCullCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: DrawableCullCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: DrawableCullCallback): cstring  {.importcpp: "className".}

proc asDrawableCullCallback*(this: var DrawableCullCallback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc asDrawableCullCallback*(this: DrawableCullCallback): ptr DrawableCullCallback   {.importcpp: "asDrawableCullCallback".}

proc cull*(this: DrawableCullCallback, a00: ptr NodeVisitor , a01: ptr Drawable , a02: ptr State ): bool  {.importcpp: "cull".}
    ## deprecated.

proc cull*(this: DrawableCullCallback, nv: ptr NodeVisitor , drawable: ptr Drawable , renderInfo: ptr RenderInfo ): bool  {.importcpp: "cull".}
    ## do customized cull code, return true if drawable should be culled.

{.pop.}  # header: "Callback"
