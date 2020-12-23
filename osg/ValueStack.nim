import Referenced # Provides Referenced
import CopyOp # Provides CopyOp
import Object # Provides Object
import ValueMap # Provides ValueMap


type
  # Typedefs
  Values* {.header: "ValueStack", importcpp: "osg::ValueStack::Values".} = cint
  ValueStackMap* {.header: "ValueStack", importcpp: "osg::ValueStack::ValueStackMap".} = cint
  UserValueObject* {.header: "ValueStack", importcpp: "osg::ValueStack::push::UserValueObject".} = TemplateValueObject[T]
  UserValueObject* {.header: "ValueStack", importcpp: "osg::ValueStack::getValue::UserValueObject".} = TemplateValueObject[T]
  UserValueObject* {.header: "ValueStack", importcpp: "osg::ValueStack::getValue::UserValueObject".} = TemplateValueObject[T]
{.push header: "ValueStack".}


# Constructors and methods
proc constructValueStack*(): ValueStack {.constructor,importcpp: "ValueStack".}

proc constructValueStack*(ps: Valuestack, copyop: Copyop = SHALLOW_COPY): ValueStack {.constructor,importcpp: "ValueStack(@)".}

proc cloneType*(this: ValueStack): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueStack, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueStack, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueStack): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueStack): cstring  {.importcpp: "className".}

proc setValueStackMap*(this: var ValueStack, pm: Valuestackmap)  {.importcpp: "setValueStackMap".}

proc getValueStackMap*(this: var ValueStack): Valuestackmap  {.importcpp: "getValueStackMap".}

proc getValueStackMap*(this: ValueStack): Valuestackmap  {.importcpp: "getValueStackMap".}

proc push*(this: var ValueStack, key: ptr Referenced , value: ptr Object )  {.importcpp: "push".}

proc push*[T](this: var ValueStack, key: ptr Referenced , value: T)  {.importcpp: "push".}

proc pop*(this: var ValueStack, key: ptr Referenced )  {.importcpp: "pop".}

proc push*(this: var ValueStack, valueMap: ptr Valuemap )  {.importcpp: "push".}

proc pop*(this: var ValueStack, valueMap: ptr Valuemap )  {.importcpp: "pop".}

proc getValue*(this: var ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValue*(this: ValueStack, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValueOfType*[T](this: var ValueStack, key: ptr Referenced ): ptr T  {.importcpp: "getValueOfType".}

proc getValueOfType*[T](this: ValueStack, key: ptr Referenced ): ptr T  {.importcpp: "getValueOfType".}

proc getValue*[T](this: var ValueStack, key: ptr Referenced , value: var T): bool  {.importcpp: "getValue".}

proc getValue*[T](this: ValueStack, key: ptr Referenced , value: var T): bool  {.importcpp: "getValue".}

{.pop.} # header: "ValueStack
