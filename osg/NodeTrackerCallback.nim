import /usr/include/osg/ObserverNodePath  # provides: osg::ObserverNodePath
import /usr/include/osg/Node  # provides: osg::NodePath, osg::Node
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
type
  NodeTrackerCallback* {.header: "NodeTrackerCallback", importcpp: "osg::NodeTrackerCallback", byref.} = object #of class osg::NodeCallback



{.push header: "NodeTrackerCallback".}

proc setTrackNodePath*(this: var NodeTrackerCallback, nodePath: Nodepath)  {.importcpp: "setTrackNodePath".}

proc setTrackNodePath*(this: var NodeTrackerCallback, nodePath: Observernodepath)  {.importcpp: "setTrackNodePath".}

proc getTrackNodePath*(this: var NodeTrackerCallback): Observernodepath  {.importcpp: "getTrackNodePath".}

proc setTrackNode*(this: var NodeTrackerCallback, node: ptr Node )  {.importcpp: "setTrackNode".}

proc getTrackNode*(this: var NodeTrackerCallback): ptr Node   {.importcpp: "getTrackNode".}

proc getTrackNode*(this: NodeTrackerCallback): ptr Node   {.importcpp: "getTrackNode".}

proc `()`*(this: var NodeTrackerCallback, node: ptr Node , nv: ptr Nodevisitor )  {.importcpp: "# () #".}
    ## Implements the callback.

proc update*(this: var NodeTrackerCallback, node: Node)  {.importcpp: "update".}
    ## Update the node to track the nodepath.

{.pop.}  # header: "NodeTrackerCallback"
