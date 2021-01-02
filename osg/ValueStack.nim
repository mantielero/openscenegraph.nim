import osg_types
  # File: ValueMap  was providing: osg::ValueMap
  # File: Object  was providing: osg::Object
  # File: Referenced  was providing: osg::Referenced
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  Values* {.header: "ValueStack", importcpp: "osg::ValueStack::Values".} = cint
  ValueStackMap* {.header: "ValueStack", importcpp: "osg::ValueStack::ValueStackMap".} = cint


{.push header: "ValueStack".}

proc constructValueStack*(): ValueStack {.constructor,importcpp: "osg::ValueStack::ValueStack".}

proc constructValueStack*(ps: ValueStack, copyop: CopyOp = SHALLOW_COPY): ValueStack {.constructor,importcpp: "osg::ValueStack::ValueStack(@)".}

proc cloneType*(this: ValueStack): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueStack, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueStack, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueStack): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueStack): cstring  {.importcpp: "className".}

proc setValueStackMap*(this: var ValueStack, pm: ValueStackMap)  {.importcpp: "setValueStackMap".}

proc getValueStackMap*(this: var ValueStack): ValueStackMap  {.importcpp: "getValueStackMap".}

proc getValueStackMap*(this: ValueStack): ValueStackMap  {.importcpp: "getValueStackMap".}

proc push*(this: var ValueStack, key: ptr Referenced , value: ptr Object )  {.importcpp: "push".}

proc pop*(this: var ValueStack, key: ptr Referenced )  {.importcpp: "pop".}

proc push*(this: var ValueStack, valueMap: ptr ValueMap )  {.importcpp: "push".}

proc pop*(this: var ValueStack, valueMap: ptr ValueMap )  {.importcpp: "pop".}

proc getValue*(this: var ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValue*(this: ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

{.pop.}  # header: "ValueStack"
