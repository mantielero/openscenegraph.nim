import osg_types
  # File: Vec4us  was providing: osg::Vec4us
  # File: BoundingSphere  was providing: osg::BoundingSphered, osg::BoundingSpheref
  # File: Vec3i  was providing: osg::Vec3i
  # File: Vec3s  was providing: osg::Vec3s
  # File: Vec2us  was providing: osg::Vec2us
  # File: Vec2s  was providing: osg::Vec2s
  # File: Vec2b  was providing: osg::Vec2b
  # File: Object  was providing: osg::Object
  # File: Vec3ui  was providing: osg::Vec3ui
  # File: Matrixf  was providing: osg::Matrixf
  # File: Vec2ub  was providing: osg::Vec2ub
  # File: Plane  was providing: osg::Plane
  # File: Vec2ui  was providing: osg::Vec2ui
  # File: Vec3f  was providing: osg::Vec3f
  # File: Vec3us  was providing: osg::Vec3us
  # File: BoundingBox  was providing: osg::BoundingBoxf, osg::BoundingBoxd
  # File: Vec2f  was providing: osg::Vec2f
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrixd  was providing: osg::Matrixd
  # File: Vec3b  was providing: osg::Vec3b
  # File: Vec4b  was providing: osg::Vec4b
  # File: Vec4ui  was providing: osg::Vec4ui
  # File: Vec3ub  was providing: osg::Vec3ub
  # File: Vec4d  was providing: osg::Vec4d
  # File: Vec4s  was providing: osg::Vec4s
  # File: Vec2i  was providing: osg::Vec2i
  # File: Vec3d  was providing: osg::Vec3d
  # File: Vec2d  was providing: osg::Vec2d
  # File: Quat  was providing: osg::Quat
  # File: Vec4ub  was providing: osg::Vec4ub
  # File: Vec4i  was providing: osg::Vec4i
  # File: Vec4f  was providing: osg::Vec4f
type
  GetValueVisitor* {.header: "ValueObject", importcpp: "osg::ValueObject::GetValueVisitor", byref.} = object

  SetValueVisitor* {.header: "ValueObject", importcpp: "osg::ValueObject::SetValueVisitor", byref.} = object

  GetScalarValue* {.header: "ValueObject", importcpp: "osg::GetScalarValue", byref.} = object #of class ValueObject::GetValueVisitor

  SetScalarValue*[T] {.header: "ValueObject", importcpp: "osg::SetScalarValue", byref.} = object #of class ValueObject::SetValueVisitor

  ValueObjectClassNameTrait*[T] {.header: "ValueObject", importcpp: "osg::ValueObjectClassNameTrait", byref.} = object

  StringValueObject* {.header: "ValueObject", importcpp: "osg::StringValueObject".} = TemplateValueObject[string]
  BoolValueObject* {.header: "ValueObject", importcpp: "osg::BoolValueObject".} = TemplateValueObject[bool]
  CharValueObject* {.header: "ValueObject", importcpp: "osg::CharValueObject".} = TemplateValueObject[char]
  UCharValueObject* {.header: "ValueObject", importcpp: "osg::UCharValueObject".} = TemplateValueObject[unsigned char]
  ShortValueObject* {.header: "ValueObject", importcpp: "osg::ShortValueObject".} = TemplateValueObject[short]
  UShortValueObject* {.header: "ValueObject", importcpp: "osg::UShortValueObject".} = TemplateValueObject[unsigned short]
  IntValueObject* {.header: "ValueObject", importcpp: "osg::IntValueObject".} = TemplateValueObject[int]
  UIntValueObject* {.header: "ValueObject", importcpp: "osg::UIntValueObject".} = TemplateValueObject[unsigned int]
  FloatValueObject* {.header: "ValueObject", importcpp: "osg::FloatValueObject".} = TemplateValueObject[float]
  DoubleValueObject* {.header: "ValueObject", importcpp: "osg::DoubleValueObject".} = TemplateValueObject[double]
  Vec2fValueObject* {.header: "ValueObject", importcpp: "osg::Vec2fValueObject".} = TemplateValueObject[Vec2f]
  Vec3fValueObject* {.header: "ValueObject", importcpp: "osg::Vec3fValueObject".} = TemplateValueObject[Vec3f]
  Vec4fValueObject* {.header: "ValueObject", importcpp: "osg::Vec4fValueObject".} = TemplateValueObject[Vec4f]
  Vec2dValueObject* {.header: "ValueObject", importcpp: "osg::Vec2dValueObject".} = TemplateValueObject[Vec2d]
  Vec3dValueObject* {.header: "ValueObject", importcpp: "osg::Vec3dValueObject".} = TemplateValueObject[Vec3d]
  Vec4dValueObject* {.header: "ValueObject", importcpp: "osg::Vec4dValueObject".} = TemplateValueObject[Vec4d]
  QuatValueObject* {.header: "ValueObject", importcpp: "osg::QuatValueObject".} = TemplateValueObject[Quat]
  PlaneValueObject* {.header: "ValueObject", importcpp: "osg::PlaneValueObject".} = TemplateValueObject[Plane]
  MatrixfValueObject* {.header: "ValueObject", importcpp: "osg::MatrixfValueObject".} = TemplateValueObject[Matrixf]
  MatrixdValueObject* {.header: "ValueObject", importcpp: "osg::MatrixdValueObject".} = TemplateValueObject[Matrixd]
  BoundingBoxfValueObject* {.header: "ValueObject", importcpp: "osg::BoundingBoxfValueObject".} = TemplateValueObject[BoundingBoxf]
  BoundingBoxdValueObject* {.header: "ValueObject", importcpp: "osg::BoundingBoxdValueObject".} = TemplateValueObject[BoundingBoxd]
  BoundingSpherefValueObject* {.header: "ValueObject", importcpp: "osg::BoundingSpherefValueObject".} = TemplateValueObject[BoundingSpheref]
  BoundingSpheredValueObject* {.header: "ValueObject", importcpp: "osg::BoundingSpheredValueObject".} = TemplateValueObject[BoundingSphered]


{.push header: "ValueObject".}

proc constructValueObject*(): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject".}

proc constructValueObject*(name: string): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject(@)".}

proc constructValueObject*(rhs: ValueObject, copyop: CopyOp = SHALLOW_COPY): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject(@)".}

proc constructGetScalarValue*[T](): GetScalarValue {.constructor,importcpp: "osg::GetScalarValue::GetScalarValue<T>".}

proc constructGetScalarValue*(): GetScalarValue {.constructor,importcpp: "osg::GetScalarValue::GetScalarValue".}

proc constructSetScalarValue*[T](in_value: T): SetScalarValue {.constructor,importcpp: "osg::SetScalarValue::SetScalarValue<T>(@)".}

proc constructTemplateValueObject*[T](): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>".}

proc constructTemplateValueObject*[T](value: T): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc constructTemplateValueObject*[T](name: string, value: T): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc constructTemplateValueObject*[T](rhs: TemplateValueObject[T], copyop: CopyOp = SHALLOW_COPY): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc cloneType*(this: ValueObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueObject, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueObject): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueObject): cstring  {.importcpp: "className".}

proc asValueObject*(this: var ValueObject): ptr ValueObject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc asValueObject*(this: ValueObject): ptr ValueObject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc apply*(this: var GetValueVisitor, a00: bool)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cchar)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cuchar)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cshort)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cushort)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cint)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cuint)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cfloat)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: cdouble)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: string)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec2d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec3d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Vec4d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Quat)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Plane)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Matrixf)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: Matrixd)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: BoundingBoxf)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: BoundingBoxd)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: BoundingSpheref)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, a00: BoundingSphered)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: var bool)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cchar)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cuchar)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cshort)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cushort)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cint)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cuint)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cfloat)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: cdouble)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: string)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec2d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec3d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Vec4d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Quat)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Plane)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Matrixf)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: Matrixd)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: BoundingBoxf)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: BoundingBoxd)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: BoundingSpheref)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, a00: BoundingSphered)  {.importcpp: "apply".}

proc get*(this: ValueObject, a00: GetValueVisitor): bool  {.importcpp: "get".}

proc set*(this: var ValueObject, a00: SetValueVisitor): bool  {.importcpp: "set".}

proc apply*(this: var GetScalarValue, in_value: bool)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cchar)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cuchar)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cshort)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cushort)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cint)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cuint)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cfloat)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cdouble)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: bool)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cchar)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cuchar)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cshort)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cushort)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cint)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cuint)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cfloat)  {.importcpp: "apply".}

proc apply*(this: var GetScalarValue, in_value: cdouble)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: var bool)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cchar)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cuchar)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cshort)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cushort)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cint)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cuint)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cfloat)  {.importcpp: "apply".}

proc apply*(this: var SetScalarValue, in_value: cdouble)  {.importcpp: "apply".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc cloneType*(this: TemplateValueObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TemplateValueObject, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TemplateValueObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TemplateValueObject): cstring  {.importcpp: "libraryName".}

proc className*(this: TemplateValueObject): cstring  {.importcpp: "className".}

proc setValue*(this: var TemplateValueObject, value: T)  {.importcpp: "setValue".}

proc getValue*(this: TemplateValueObject): T  {.importcpp: "getValue".}

proc get*(this: TemplateValueObject, gvv: GetValueVisitor): bool  {.importcpp: "get".}

proc set*(this: var TemplateValueObject, svv: SetValueVisitor): bool  {.importcpp: "set".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

proc className*(this: var ValueObjectClassNameTrait): cstring  {.importcpp: "className".}

{.pop.}  # header: "ValueObject"
