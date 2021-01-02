import osg_types
  # File: Node  was providing: osg::Node, osg::NodePath
type
  RefNodePath* {.header: "ObserverNodePath", importcpp: "osg::RefNodePath".} = cint
  ObsNodePath* {.header: "ObserverNodePath", importcpp: "osg::ObserverNodePath::ObsNodePath".} = cint


{.push header: "ObserverNodePath".}

proc constructObserverNodePath*(): ObserverNodePath {.constructor,importcpp: "osg::ObserverNodePath::ObserverNodePath".}

proc constructObserverNodePath*(rhs: ObserverNodePath): ObserverNodePath {.constructor,importcpp: "osg::ObserverNodePath::ObserverNodePath(@)".}

proc constructObserverNodePath*(nodePath: NodePath): ObserverNodePath {.constructor,importcpp: "osg::ObserverNodePath::ObserverNodePath(@)".}

proc `=`*(this: var ObserverNodePath, rhs: ObserverNodePath): ObserverNodePath  {.importcpp: "# = #".}

proc setNodePathTo*(this: var ObserverNodePath, node: ptr Node )  {.importcpp: "setNodePathTo".}
    ## get the NodePath from the first parental chain back to root, plus the
    ## specified node.

proc setNodePath*(this: var ObserverNodePath, nodePath: RefNodePath)  {.importcpp: "setNodePath".}

proc setNodePath*(this: var ObserverNodePath, nodePath: NodePath)  {.importcpp: "setNodePath".}

proc clearNodePath*(this: var ObserverNodePath)  {.importcpp: "clearNodePath".}

proc getRefNodePath*(this: ObserverNodePath, refNodePath: RefNodePath): bool  {.importcpp: "getRefNodePath".}
    ## Get a thread safe RefNodePath, return true if NodePath is valid.

proc getNodePath*(this: ObserverNodePath, nodePath: NodePath): bool  {.importcpp: "getNodePath".}
    ## Get a lightweight NodePath that isn't thread safe but may be safely
    ## used in single threaded applications, or when its known that the
    ## NodePath won't be invalidated during usage of the NodePath. return
    ## true if NodePath is valid.

proc empty*(this: ObserverNodePath): bool  {.importcpp: "empty".}

proc prefixsetNodePath*(this: var ObserverNodePath, nodePath: NodePath)  {.importcpp: "_setNodePath".}

proc prefixclearNodePath*(this: var ObserverNodePath)  {.importcpp: "_clearNodePath".}

{.pop.}  # header: "ObserverNodePath"
