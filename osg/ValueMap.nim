import CopyOp
import osg_types
  # File: Object  was providing: osg::Object
  # File: Referenced  was providing: osg::Referenced
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
type
  KeyValueMap* {.header: "ValueMap", importcpp: "osg::ValueMap::KeyValueMap".} = cint


{.push header: "ValueMap".}

proc constructValueMap*(): ValueMap {.constructor,importcpp: "osg::ValueMap::ValueMap".}

proc constructValueMap*(vm: ValueMap, copyop: CopyOp = constructCopyOp(CopyFlags(SHALLOW_COPY))): ValueMap {.constructor,importcpp: "osg::ValueMap::ValueMap(@)".}

proc cloneType*(this: ValueMap): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueMap, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueMap, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueMap): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueMap): cstring  {.importcpp: "className".}

proc setKeyValueMap*(this: var ValueMap, properties: KeyValueMap)  {.importcpp: "setKeyValueMap".}

proc getKeyValueMap*(this: var ValueMap): KeyValueMap  {.importcpp: "getKeyValueMap".}

proc getKeyValueMap*(this: ValueMap): KeyValueMap  {.importcpp: "getKeyValueMap".}

proc setValue*(this: var ValueMap, key: ptr Referenced , `object`: ptr Object ): ptr Object   {.importcpp: "setValue".}

proc getValue*(this: var ValueMap, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

proc getValue*(this: ValueMap, key: ptr Referenced ): ptr Object   {.importcpp: "getValue".}

{.pop.}  # header: "ValueMap"
