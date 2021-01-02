import osg_types
  # File: Object  was providing: osg::Object
  # File: Node  was providing: osg::Node, osg::NodePath
  # File: Callback  was providing: osg::Parameters
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  Script* {.header: "ScriptEngine", importcpp: "osg::Script", byref.} = object #of osg::Object

  ScriptNodeCallback* {.header: "ScriptEngine", importcpp: "osg::ScriptNodeCallback", byref.} = object #of osg::NodeCallback
    ## NodeCallback for attaching a script to a NodeCallback so that it can
    ## be called as an update or event callback.

  ScriptEngine* {.header: "ScriptEngine", importcpp: "osg::ScriptEngine", byref.} = object #of osg::Object
    ## ScriptEngine base class for integrating different scripting languages.
    ## Concrete ScriptEngine's are provided by osgDB::readFile<ScriptEngine>



{.push header: "ScriptEngine".}

proc constructScript*(): Script {.constructor,importcpp: "osg::Script::Script".}

proc constructScript*(language: string, str: string): Script {.constructor,importcpp: "osg::Script::Script(@)".}

proc constructScript*(rhs: Script, copyop: CopyOp = SHALLOW_COPY): Script {.constructor,importcpp: "osg::Script::Script(@)".}

proc constructScriptNodeCallback*(script: ptr Script  = 0, entryPoint: string): ScriptNodeCallback {.constructor,importcpp: "osg::ScriptNodeCallback::ScriptNodeCallback(@)".}

proc constructScriptNodeCallback*(rhs: ScriptNodeCallback, copyop: CopyOp = SHALLOW_COPY): ScriptNodeCallback {.constructor,importcpp: "osg::ScriptNodeCallback::ScriptNodeCallback(@)".}

proc constructScriptEngine*(language: string): ScriptEngine {.constructor,importcpp: "osg::ScriptEngine::ScriptEngine(@)".}

proc cloneType*(this: Script): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Script, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Script, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Script): cstring  {.importcpp: "libraryName".}

proc className*(this: Script): cstring  {.importcpp: "className".}

proc setLanguage*(this: var Script, language: string)  {.importcpp: "setLanguage".}

proc getLanguage*(this: Script): string  {.importcpp: "getLanguage".}

proc setScript*(this: var Script, str: string)  {.importcpp: "setScript".}

proc getScript*(this: Script): string  {.importcpp: "getScript".}

proc dirty*(this: var Script)  {.importcpp: "dirty".}

proc getModifiedCount*(this: Script): cuint  {.importcpp: "getModifiedCount".}

proc cloneType*(this: ScriptNodeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ScriptNodeCallback, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ScriptNodeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ScriptNodeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ScriptNodeCallback): cstring  {.importcpp: "className".}

proc setScript*(this: var ScriptNodeCallback, script: ptr Script )  {.importcpp: "setScript".}
    ## Set the script to call.

proc getScript*(this: var ScriptNodeCallback): ptr Script   {.importcpp: "getScript".}
    ## Get the script to call.

proc getScript*(this: ScriptNodeCallback): ptr Script   {.importcpp: "getScript".}
    ## Get the script to call.

proc setEntryPoint*(this: var ScriptNodeCallback, script: string)  {.importcpp: "setEntryPoint".}
    ## Set the entry point to call.

proc getEntryPoint*(this: ScriptNodeCallback): string  {.importcpp: "getEntryPoint".}
    ## Get the script to call.

proc getScriptEngine*(this: var ScriptNodeCallback, nodePath: NodePath): ptr ScriptEngine   {.importcpp: "getScriptEngine".}
    ## find the ScriptEngine from looking at the UserDataContainers of nodes
    ## in scene graph above the ScriptCallback.

proc `()`*(this: var ScriptNodeCallback, node: ptr Node , nv: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## NodeCallback method, calls the Script.

proc getLanguage*(this: ScriptEngine): string  {.importcpp: "getLanguage".}
    ## get the scripting language supported by the ScriptEngine.

proc run*(this: var ScriptEngine, script: ptr Script ): bool  {.importcpp: "run".}
    ## run a Script.

proc run*(this: var ScriptEngine, script: ptr Script , entryPoint: string, inputParameters: Parameters, outputParameters: Parameters): bool  {.importcpp: "run".}
    ## run a Script.

{.pop.}  # header: "ScriptEngine"
