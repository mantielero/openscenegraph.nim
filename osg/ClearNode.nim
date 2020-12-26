import Vec4  # provides: osg::Vec4
import Object  # provides: osg::Object
import CopyOp  # provides: osg::CopyOp
import NodeVisitor  # provides: osg::NodeVisitor
{.push header: "ClearNode".}

proc constructClearNode*(): ClearNode {.constructor,importcpp: "osg::ClearNode::ClearNode".}

proc constructClearNode*(cs: Clearnode, copyop: Copyop = SHALLOW_COPY): ClearNode {.constructor,importcpp: "osg::ClearNode::ClearNode(@)".}

proc cloneType*(this: ClearNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ClearNode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ClearNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: ClearNode): cstring  {.importcpp: "className".}

proc libraryName*(this: ClearNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var ClearNode, nv: Nodevisitor)  {.importcpp: "accept".}

proc setRequiresClear*(this: var ClearNode, requiresClear: bool)  {.importcpp: "setRequiresClear".}
    ## Enable/disable clearing via glClear.

proc getRequiresClear*(this: ClearNode): bool  {.importcpp: "getRequiresClear".}
    ## Gets whether clearing is enabled or disabled.

proc setClearColor*(this: var ClearNode, color: Vec4)  {.importcpp: "setClearColor".}
    ## Sets the clear color.

proc getClearColor*(this: ClearNode): Vec4  {.importcpp: "getClearColor".}
    ## Returns the clear color.

proc setClearMask*(this: var ClearNode, mask: GLbitfield)  {.importcpp: "setClearMask".}
    ## Set the clear mask used in glClear(..). Defaults to
    ## GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT.

proc getClearMask*(this: ClearNode): GLbitfield  {.importcpp: "getClearMask".}
    ## Get the clear mask.

{.pop.}  # header: "ClearNode"
