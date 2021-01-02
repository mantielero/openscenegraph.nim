type
  MakeString* {.header: "io_utils", importcpp: "osg::MakeString", byref.} = object
    ## Convinience class for building std::string using stringstream. Usage:
    ## MakeString str; std::string s = str<<"Mix strings with numbers "<<0" ;
    ## std::string s2 = str.clear()<<"and other classes such as
    ## ("<<osg::Vec3(0.0,1.0,3.0)<<)" ;



{.push header: "io_utils".}

proc constructMakeString*(): MakeString {.constructor,importcpp: "osg::MakeString::MakeString".}

proc `<<`*(this: var MakeString, fun: ostream &)): MakeString  {.importcpp: "# << #".}

proc clear*(this: var MakeString): MakeString  {.importcpp: "clear".}

proc str*(this: MakeString): string  {.importcpp: "str".}

{.pop.}  # header: "io_utils"
