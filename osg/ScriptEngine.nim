import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Node  # provides: osg::NodePath, osg::Node
import /usr/include/osg/Callback  # provides: osg::Parameters
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
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

proc constructScript*(language: String, str: String): Script {.constructor,importcpp: "osg::Script::Script(@)".}

proc constructScript*(rhs: Script, copyop: Copyop = SHALLOW_COPY): Script {.constructor,importcpp: "osg::Script::Script(@)".}

proc constructScriptNodeCallback*(script: ptr Script  = 0, entryPoint: String): ScriptNodeCallback {.constructor,importcpp: "osg::ScriptNodeCallback::ScriptNodeCallback(@)".}

proc constructScriptNodeCallback*(rhs: Scriptnodecallback, copyop: Copyop = SHALLOW_COPY): ScriptNodeCallback {.constructor,importcpp: "osg::ScriptNodeCallback::ScriptNodeCallback(@)".}

proc constructScriptEngine*(language: String): ScriptEngine {.constructor,importcpp: "osg::ScriptEngine::ScriptEngine(@)".}

proc cloneType*(this: Script): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Script, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Script, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: Script): cstring  {.importcpp: "libraryName".}

proc className*(this: Script): cstring  {.importcpp: "className".}

proc setLanguage*(this: var Script, language: String)  {.importcpp: "setLanguage".}

proc getLanguage*(this: Script): String  {.importcpp: "getLanguage".}

proc setScript*(this: var Script, str: String)  {.importcpp: "setScript".}

proc getScript*(this: Script): String  {.importcpp: "getScript".}

proc dirty*(this: var Script)  {.importcpp: "dirty".}

proc getModifiedCount*(this: Script): cuint  {.importcpp: "getModifiedCount".}

proc cloneType*(this: ScriptNodeCallback): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ScriptNodeCallback, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ScriptNodeCallback, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ScriptNodeCallback): cstring  {.importcpp: "libraryName".}

proc className*(this: ScriptNodeCallback): cstring  {.importcpp: "className".}

proc setScript*(this: var ScriptNodeCallback, script: ptr Script )  {.importcpp: "setScript".}
    ## Set the script to call.

proc getScript*(this: var ScriptNodeCallback): ptr Script   {.importcpp: "getScript".}
    ## Get the script to call.

proc getScript*(this: ScriptNodeCallback): ptr Script   {.importcpp: "getScript".}
    ## Get the script to call.

proc setEntryPoint*(this: var ScriptNodeCallback, script: String)  {.importcpp: "setEntryPoint".}
    ## Set the entry point to call.

proc getEntryPoint*(this: ScriptNodeCallback): String  {.importcpp: "getEntryPoint".}
    ## Get the script to call.

proc getScriptEngine*(this: var ScriptNodeCallback, nodePath: Nodepath): ptr Scriptengine   {.importcpp: "getScriptEngine".}
    ## find the ScriptEngine from looking at the UserDataContainers of nodes
    ## in scene graph above the ScriptCallback.

proc `()`*(this: var ScriptNodeCallback, node: ptr Node , nv: ptr Nodevisitor )  {.importcpp: "# () #".}
    ## NodeCallback method, calls the Script.

proc getLanguage*(this: ScriptEngine): String  {.importcpp: "getLanguage".}
    ## get the scripting language supported by the ScriptEngine.

proc run*(this: var ScriptEngine, script: ptr Script ): bool  {.importcpp: "run".}
    ## run a Script.

proc run*(this: var ScriptEngine, script: ptr Script , entryPoint: String, inputParameters: Parameters, outputParameters: Parameters): bool  {.importcpp: "run".}
    ## run a Script.

{.pop.}  # header: "ScriptEngine"
