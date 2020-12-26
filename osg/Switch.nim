import /usr/include/osg/BoundingSphere  # provides: osg::BoundingSphere
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Node  # provides: osg::Node
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
type
  ValueList* {.header: "Switch", importcpp: "osg::Switch::ValueList".} = cint


{.push header: "Switch".}

proc constructSwitch*(): Switch {.constructor,importcpp: "osg::Switch::Switch".}

proc constructSwitch*(Switch, copyop: Copyop = SHALLOW_COPY): Switch {.constructor,importcpp: "osg::Switch::Switch(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc asSwitch*(this: var Switch): ptr Switch   {.importcpp: "asSwitch".}

proc asSwitch*(this: Switch): ptr Switch   {.importcpp: "asSwitch".}

proc cloneType*(this: Switch): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Switch, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Switch, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Switch): cstring  {.importcpp: "className".}

proc libraryName*(this: Switch): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Switch, nv: Nodevisitor)  {.importcpp: "accept".}

proc traverse*(this: var Switch, nv: Nodevisitor)  {.importcpp: "traverse".}

proc setNewChildDefaultValue*(this: var Switch, value: bool)  {.importcpp: "setNewChildDefaultValue".}

proc getNewChildDefaultValue*(this: Switch): bool  {.importcpp: "getNewChildDefaultValue".}

proc addChild*(this: var Switch, child: ptr Node ): bool  {.importcpp: "addChild".}

proc addChild*(this: var Switch, child: ptr Node , value: bool): bool  {.importcpp: "addChild".}

proc insertChild*(this: var Switch, index: cuint, child: ptr Node ): bool  {.importcpp: "insertChild".}

proc insertChild*(this: var Switch, index: cuint, child: ptr Node , value: bool): bool  {.importcpp: "insertChild".}

proc removeChildren*(this: var Switch, pos: cuint, numChildrenToRemove: cuint): bool  {.importcpp: "removeChildren".}

proc setValue*(this: var Switch, pos: cuint, value: bool)  {.importcpp: "setValue".}

proc getValue*(this: Switch, pos: cuint): bool  {.importcpp: "getValue".}

proc setChildValue*(this: var Switch, child: ptr Node , value: bool)  {.importcpp: "setChildValue".}

proc getChildValue*(this: Switch, child: ptr Node ): bool  {.importcpp: "getChildValue".}

proc setAllChildrenOff*(this: var Switch): bool  {.importcpp: "setAllChildrenOff".}
    ## Set all the children off (false), and set the new default child value
    ## to off (false).

proc setAllChildrenOn*(this: var Switch): bool  {.importcpp: "setAllChildrenOn".}
    ## Set all the children on (true), and set the new default child value to
    ## on (true).

proc setSingleChildOn*(this: var Switch, pos: cuint): bool  {.importcpp: "setSingleChildOn".}
    ## Set a single child on, switch off all other children.

proc setValueList*(this: var Switch, values: Valuelist)  {.importcpp: "setValueList".}

proc getValueList*(this: Switch): Valuelist  {.importcpp: "getValueList".}

proc computeBound*(this: Switch): Boundingsphere  {.importcpp: "computeBound".}

{.pop.}  # header: "Switch"
