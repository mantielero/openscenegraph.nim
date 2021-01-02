import osg_types
  # File: ObserverNodePath  was providing: osg::ObserverNodePath
  # File: Node  was providing: osg::Node, osg::NodePath
  # File: NodeVisitor  was providing: osg::NodeVisitor
type
  NodeTrackerCallback* {.header: "NodeTrackerCallback", importcpp: "osg::NodeTrackerCallback", byref.} = object #of class osg::NodeCallback



{.push header: "NodeTrackerCallback".}

proc setTrackNodePath*(this: var NodeTrackerCallback, nodePath: NodePath)  {.importcpp: "setTrackNodePath".}

proc setTrackNodePath*(this: var NodeTrackerCallback, nodePath: ObserverNodePath)  {.importcpp: "setTrackNodePath".}

proc getTrackNodePath*(this: var NodeTrackerCallback): ObserverNodePath  {.importcpp: "getTrackNodePath".}

proc setTrackNode*(this: var NodeTrackerCallback, node: ptr Node )  {.importcpp: "setTrackNode".}

proc getTrackNode*(this: var NodeTrackerCallback): ptr Node   {.importcpp: "getTrackNode".}

proc getTrackNode*(this: NodeTrackerCallback): ptr Node   {.importcpp: "getTrackNode".}

proc `()`*(this: var NodeTrackerCallback, node: ptr Node , nv: ptr NodeVisitor )  {.importcpp: "# () #".}
    ## Implements the callback.

proc update*(this: var NodeTrackerCallback, node: Node)  {.importcpp: "update".}
    ## Update the node to track the nodepath.

{.pop.}  # header: "NodeTrackerCallback"
