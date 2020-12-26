import Object  # provides: osg::Object
import Referenced  # provides: osg::Referenced
import CopyOp  # provides: osg::CopyOp
type
  KeyValueMap* {.header: "ValueMap", importcpp: "osg::ValueMap::KeyValueMap".} = cint
  UserValueObject* {.header: "ValueMap", importcpp: "osg::ValueMap::getValue::UserValueObject".} = TemplateValueObject[T]


{.push header: "ValueMap".}

proc constructValueMap*(): ValueMap {.constructor,importcpp: "osg::ValueMap::ValueMap".}

proc constructValueMap*(vm: Valuemap, copyop: Copyop = SHALLOW_COPY): ValueMap {.constructor,importcpp: "osg::ValueMap::ValueMap(@)".}

proc cloneType*(this: ValueMap): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueMap, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueMap, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueMap): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueMap): cstring  {.importcpp: "className".}

proc setKeyValueMap*(this: var ValueMap, properties: Keyvaluemap)  {.importcpp: "setKeyValueMap".}

proc getKeyValueMap*(this: var ValueMap): Keyvaluemap  {.importcpp: "getKeyValueMap".}

proc getKeyValueMap*(this: ValueMap): Keyvaluemap  {.importcpp: "getKeyValueMap".}

proc setValue*(this: var ValueMap, key: ptr Referenced , `object`: ptr Object ): ptr Object   {.importcpp: "setValue".}

proc getValue*(this: var ValueMap, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValue*(this: ValueMap, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

{.pop.}  # header: "ValueMap"
