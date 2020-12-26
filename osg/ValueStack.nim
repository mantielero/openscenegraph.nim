import /usr/include/osg/ValueMap  # provides: osg::ValueMap
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Referenced  # provides: osg::Referenced
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
type
  Values* {.header: "ValueStack", importcpp: "osg::ValueStack::Values".} = cint
  ValueStackMap* {.header: "ValueStack", importcpp: "osg::ValueStack::ValueStackMap".} = cint
  UserValueObject* {.header: "ValueStack", importcpp: "osg::ValueStack::getValue::UserValueObject".} = TemplateValueObject[T]


{.push header: "ValueStack".}

proc constructValueStack*(): ValueStack {.constructor,importcpp: "osg::ValueStack::ValueStack".}

proc constructValueStack*(ps: Valuestack, copyop: Copyop = SHALLOW_COPY): ValueStack {.constructor,importcpp: "osg::ValueStack::ValueStack(@)".}

proc cloneType*(this: ValueStack): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueStack, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueStack, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueStack): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueStack): cstring  {.importcpp: "className".}

proc setValueStackMap*(this: var ValueStack, pm: Valuestackmap)  {.importcpp: "setValueStackMap".}

proc getValueStackMap*(this: var ValueStack): Valuestackmap  {.importcpp: "getValueStackMap".}

proc getValueStackMap*(this: ValueStack): Valuestackmap  {.importcpp: "getValueStackMap".}

proc push*(this: var ValueStack, key: ptr Referenced , value: ptr Object )  {.importcpp: "push".}

proc pop*(this: var ValueStack, key: ptr Referenced )  {.importcpp: "pop".}

proc push*(this: var ValueStack, valueMap: ptr Valuemap )  {.importcpp: "push".}

proc pop*(this: var ValueStack, valueMap: ptr Valuemap )  {.importcpp: "pop".}

proc getValue*(this: var ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValue*(this: ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

{.pop.}  # header: "ValueStack"
