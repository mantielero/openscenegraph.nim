import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/TexGen  # provides: osg::TexGen
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
type
  ReferenceFrame* {.size:sizeof(cuint),header: "TexGenNode", importcpp: "osg::TexGenNode::ReferenceFrame".} = enum
    RELATIVE_RF = 0,
    ABSOLUTE_RF = 1



{.push header: "TexGenNode".}

proc constructTexGenNode*(): TexGenNode {.constructor,importcpp: "osg::TexGenNode::TexGenNode".}

proc constructTexGenNode*(texgen: ptr Texgen ): TexGenNode {.constructor,importcpp: "osg::TexGenNode::TexGenNode(@)".}

proc constructTexGenNode*(tgb: Texgennode, copyop: Copyop = SHALLOW_COPY): TexGenNode {.constructor,importcpp: "osg::TexGenNode::TexGenNode(@)".}

proc cloneType*(this: TexGenNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexGenNode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexGenNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: TexGenNode): cstring  {.importcpp: "className".}

proc libraryName*(this: TexGenNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var TexGenNode, nv: Nodevisitor)  {.importcpp: "accept".}

proc setReferenceFrame*(this: var TexGenNode, rf: Referenceframe)  {.importcpp: "setReferenceFrame".}
    ## Set the TexGenNode's ReferenceFrame, either to be relative to its
    ## parent reference frame.

proc getReferenceFrame*(this: TexGenNode): Referenceframe  {.importcpp: "getReferenceFrame".}
    ## Get the TexGenNode's ReferenceFrame.

proc setTextureUnit*(this: var TexGenNode, textureUnit: cuint)  {.importcpp: "setTextureUnit".}
    ## Set the texture unit that this TexGenNode is associated with.

proc getTextureUnit*(this: TexGenNode): cuint  {.importcpp: "getTextureUnit".}

proc setTexGen*(this: var TexGenNode, texgen: ptr Texgen )  {.importcpp: "setTexGen".}
    ## Set the TexGen.

proc getTexGen*(this: var TexGenNode): ptr Texgen   {.importcpp: "getTexGen".}
    ## Get the TexGen.

proc getTexGen*(this: TexGenNode): ptr Texgen   {.importcpp: "getTexGen".}
    ## Get the const TexGen.

proc setThreadSafeRefUnref*(this: var TexGenNode, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

{.pop.}  # header: "TexGenNode"
