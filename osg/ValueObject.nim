import /usr/include/osg/Vec4us  # provides: osg::Vec4us
import /usr/include/osg/BoundingSphere  # provides: osg::BoundingSphered, osg::BoundingSpheref
import /usr/include/osg/Vec3i  # provides: osg::Vec3i
import /usr/include/osg/Vec3s  # provides: osg::Vec3s
import /usr/include/osg/Vec2us  # provides: osg::Vec2us
import /usr/include/osg/Vec2s  # provides: osg::Vec2s
import /usr/include/osg/Vec2b  # provides: osg::Vec2b
import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/Vec3ui  # provides: osg::Vec3ui
import /usr/include/osg/Matrixf  # provides: osg::Matrixf
import /usr/include/osg/Vec2ub  # provides: osg::Vec2ub
import /usr/include/osg/Plane  # provides: osg::Plane
import /usr/include/osg/Vec2ui  # provides: osg::Vec2ui
import /usr/include/osg/Vec3f  # provides: osg::Vec3f
import /usr/include/osg/Vec3us  # provides: osg::Vec3us
import /usr/include/osg/BoundingBox  # provides: osg::BoundingBoxf, osg::BoundingBoxd
import /usr/include/osg/Vec2f  # provides: osg::Vec2f
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/Matrixd  # provides: osg::Matrixd
import /usr/include/osg/Vec3b  # provides: osg::Vec3b
import /usr/include/osg/Vec4b  # provides: osg::Vec4b
import /usr/include/osg/Vec4ui  # provides: osg::Vec4ui
import /usr/include/osg/Vec3ub  # provides: osg::Vec3ub
import /usr/include/osg/Vec4d  # provides: osg::Vec4d
import /usr/include/osg/Vec4s  # provides: osg::Vec4s
import /usr/include/osg/Vec2i  # provides: osg::Vec2i
import /usr/include/osg/Vec3d  # provides: osg::Vec3d
import /usr/include/osg/Vec2d  # provides: osg::Vec2d
import /usr/include/osg/Quat  # provides: osg::Quat
import /usr/include/osg/Vec4ub  # provides: osg::Vec4ub
import /usr/include/osg/Vec4i  # provides: osg::Vec4i
import /usr/include/osg/Vec4f  # provides: osg::Vec4f
type
  StringValueObject* {.header: "ValueObject", importcpp: "osg::StringValueObject".} = Templatevalueobject[String]
  BoolValueObject* {.header: "ValueObject", importcpp: "osg::BoolValueObject".} = TemplateValueObject[bool]
  CharValueObject* {.header: "ValueObject", importcpp: "osg::CharValueObject".} = TemplateValueObject[char]
  UCharValueObject* {.header: "ValueObject", importcpp: "osg::UCharValueObject".} = TemplateValueObject[unsigned char]
  ShortValueObject* {.header: "ValueObject", importcpp: "osg::ShortValueObject".} = TemplateValueObject[short]
  UShortValueObject* {.header: "ValueObject", importcpp: "osg::UShortValueObject".} = TemplateValueObject[unsigned short]
  IntValueObject* {.header: "ValueObject", importcpp: "osg::IntValueObject".} = TemplateValueObject[int]
  UIntValueObject* {.header: "ValueObject", importcpp: "osg::UIntValueObject".} = TemplateValueObject[unsigned int]
  FloatValueObject* {.header: "ValueObject", importcpp: "osg::FloatValueObject".} = TemplateValueObject[float]
  DoubleValueObject* {.header: "ValueObject", importcpp: "osg::DoubleValueObject".} = TemplateValueObject[double]
  Vec2fValueObject* {.header: "ValueObject", importcpp: "osg::Vec2fValueObject".} = Templatevalueobject[Vec2f]
  Vec3fValueObject* {.header: "ValueObject", importcpp: "osg::Vec3fValueObject".} = Templatevalueobject[Vec3f]
  Vec4fValueObject* {.header: "ValueObject", importcpp: "osg::Vec4fValueObject".} = Templatevalueobject[Vec4f]
  Vec2dValueObject* {.header: "ValueObject", importcpp: "osg::Vec2dValueObject".} = Templatevalueobject[Vec2d]
  Vec3dValueObject* {.header: "ValueObject", importcpp: "osg::Vec3dValueObject".} = Templatevalueobject[Vec3d]
  Vec4dValueObject* {.header: "ValueObject", importcpp: "osg::Vec4dValueObject".} = Templatevalueobject[Vec4d]
  QuatValueObject* {.header: "ValueObject", importcpp: "osg::QuatValueObject".} = Templatevalueobject[Quat]
  PlaneValueObject* {.header: "ValueObject", importcpp: "osg::PlaneValueObject".} = Templatevalueobject[Plane]
  MatrixfValueObject* {.header: "ValueObject", importcpp: "osg::MatrixfValueObject".} = Templatevalueobject[Matrixf]
  MatrixdValueObject* {.header: "ValueObject", importcpp: "osg::MatrixdValueObject".} = Templatevalueobject[Matrixd]
  BoundingBoxfValueObject* {.header: "ValueObject", importcpp: "osg::BoundingBoxfValueObject".} = Templatevalueobject[Boundingboxf]
  BoundingBoxdValueObject* {.header: "ValueObject", importcpp: "osg::BoundingBoxdValueObject".} = Templatevalueobject[Boundingboxd]
  BoundingSpherefValueObject* {.header: "ValueObject", importcpp: "osg::BoundingSpherefValueObject".} = Templatevalueobject[Boundingspheref]
  BoundingSpheredValueObject* {.header: "ValueObject", importcpp: "osg::BoundingSpheredValueObject".} = Templatevalueobject[Boundingsphered]
  UserValueObject* {.header: "ValueObject", importcpp: "osg::Object::setUserValue::UserValueObject".} = TemplateValueObject[T]
  GetValueVisitor* {.header: "ValueObject", importcpp: "osg::ValueObject::GetValueVisitor", byref.} = object

  SetValueVisitor* {.header: "ValueObject", importcpp: "osg::ValueObject::SetValueVisitor", byref.} = object

  GetScalarValue* {.header: "ValueObject", importcpp: "osg::GetScalarValue", byref.} = object #of class ValueObject::GetValueVisitor

  SetScalarValue* {.header: "ValueObject", importcpp: "osg::SetScalarValue", byref.} [T] = object #of class ValueObject::SetValueVisitor

  ValueObjectClassNameTrait* {.header: "ValueObject", importcpp: "osg::ValueObjectClassNameTrait", byref.} [T] = object

  TemplateValueObject* {.header: "ValueObject", importcpp: "osg::TemplateValueObject", byref.} [T] = object #of class osg::ValueObject



{.push header: "ValueObject".}

proc constructValueObject*(): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject".}

proc constructValueObject*(name: String): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject(@)".}

proc constructValueObject*(rhs: Valueobject, copyop: Copyop = SHALLOW_COPY): ValueObject {.constructor,importcpp: "osg::ValueObject::ValueObject(@)".}

proc constructGetScalarValue*[T](): GetScalarValue {.constructor,importcpp: "osg::GetScalarValue::GetScalarValue<T>".}

proc constructGetScalarValue*(): GetScalarValue {.constructor,importcpp: "osg::GetScalarValue::GetScalarValue".}

proc constructSetScalarValue*[T](in_value: T): SetScalarValue {.constructor,importcpp: "osg::SetScalarValue::SetScalarValue<T>(@)".}

proc constructTemplateValueObject*[T](): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>".}

proc constructTemplateValueObject*[T](value: T): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc constructTemplateValueObject*[T](name: String, value: T): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc constructTemplateValueObject*[T](rhs: TemplateValueObject[T], copyop: Copyop = SHALLOW_COPY): TemplateValueObject {.constructor,importcpp: "osg::TemplateValueObject::TemplateValueObject<T>(@)".}

proc cloneType*(this: ValueObject): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: ValueObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: ValueObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: ValueObject): cstring  {.importcpp: "libraryName".}

proc className*(this: ValueObject): cstring  {.importcpp: "className".}

proc asValueObject*(this: var ValueObject): ptr Valueobject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc asValueObject*(this: ValueObject): ptr Valueobject   {.importcpp: "asValueObject".}
    ## Convert 'this' into a ValueObject pointer if Object is a ValueObject,
    ## otherwise return 0. Equivalent to dynamic_cast<ValueObject*>(this).

proc apply*(this: var GetValueVisitor, bool)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cchar)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cuchar)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cshort)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cushort)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cint)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cuint)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cfloat)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, cdouble)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, String)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4b)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4s)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4us)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4i)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4f)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec2d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec3d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Vec4d)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Quat)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Plane)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Matrixf)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Matrixd)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Boundingboxf)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Boundingboxd)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Boundingspheref)  {.importcpp: "apply".}

proc apply*(this: var GetValueVisitor, Boundingsphered)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, var bool)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cchar)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cuchar)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cshort)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cushort)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cint)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cuint)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cfloat)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, cdouble)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, String)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4b)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4ub)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4s)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4us)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4i)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4ui)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4f)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec2d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec3d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Vec4d)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Quat)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Plane)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Matrixf)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Matrixd)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Boundingboxf)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Boundingboxd)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Boundingspheref)  {.importcpp: "apply".}

proc apply*(this: var SetValueVisitor, Boundingsphered)  {.importcpp: "apply".}

proc get*(this: ValueObject, Getvaluevisitor): bool  {.importcpp: "get".}

proc set*(this: var ValueObject, Setvaluevisitor): bool  {.importcpp: "set".}

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

proc clone*(this: TemplateValueObject, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TemplateValueObject, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TemplateValueObject): cstring  {.importcpp: "libraryName".}

proc className*(this: TemplateValueObject): cstring  {.importcpp: "className".}

proc setValue*(this: var TemplateValueObject, value: T)  {.importcpp: "setValue".}

proc getValue*(this: TemplateValueObject): T  {.importcpp: "getValue".}

proc get*(this: TemplateValueObject, gvv: Getvaluevisitor): bool  {.importcpp: "get".}

proc set*(this: var TemplateValueObject, svv: Setvaluevisitor): bool  {.importcpp: "set".}

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
