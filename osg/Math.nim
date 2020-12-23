

{.push header: "Math".}


# Constructors and methods
proc default_value*[T](this: var osg): T  {.importcpp: "default_value".}

proc absolute*[T](this: var osg, v: T): T  {.importcpp: "absolute".}

proc minimum*[T](this: var osg, lhs: T, rhs: T): T  {.importcpp: "minimum".}
    ## return the minimum of two values, equivalent to std::min. std::min not
    ## used because of STL implementation under IRIX not containing std::min.

proc maximum*[T](this: var osg, lhs: T, rhs: T): T  {.importcpp: "maximum".}
    ## return the maximum of two values, equivalent to std::max. std::max not
    ## used because of STL implementation under IRIX not containing std::max.

proc clampTo*[T](this: var osg, v: T, minimum: T, maximum: T): T  {.importcpp: "clampTo".}

proc clampAbove*[T](this: var osg, v: T, minimum: T): T  {.importcpp: "clampAbove".}

proc clampBelow*[T](this: var osg, v: T, maximum: T): T  {.importcpp: "clampBelow".}

proc clampBetween*[T](this: var osg, v: T, minimum: T, maximum: T): T  {.importcpp: "clampBetween".}

proc sign*[T](this: var osg, v: T): T  {.importcpp: "sign".}

proc signOrZero*[T](this: var osg, v: T): T  {.importcpp: "signOrZero".}

proc square*[T](this: var osg, v: T): T  {.importcpp: "square".}

proc signedSquare*[T](this: var osg, v: T): T  {.importcpp: "signedSquare".}

proc inRadians*[T](this: var osg, angle: T): T  {.importcpp: "inRadians".}

proc computeVolume*[T](this: var osg, a: T, b: T, c: T, d: T): cfloat  {.importcpp: "computeVolume".}
    ## compute the volume of a tetrahedron.

proc computeVolume*[T](this: var osg, f1: T, f2: T, f3: T, b1: T, b2: T, b3: T): cfloat  {.importcpp: "computeVolume".}
    ## compute the volume of a prism.

{.pop.} # header: "Math
