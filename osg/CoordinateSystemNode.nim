import CopyOp # Provides CopyOp
import stringfwd # Provides string
import Object # Provides Object
import Vec3d # Provides Vec3d
import Matrixd # Provides Matrixd
import NodeVisitor # Provides NodeVisitor


type
  CoordinateFrame* {.header: "CoordinateSystemNode", importcpp: "osg::CoordinateFrame".} = Matrixd
{.push header: "CoordinateSystemNode".}


# Constructors and methods
proc constructEllipsoidModel*(radiusEquator: cdouble, radiusPolar: cdouble): EllipsoidModel {.constructor,importcpp: "EllipsoidModel(@)".}
    ## WGS_84 is a common representation of the earth's spheroid

proc constructEllipsoidModel*(et: Ellipsoidmodel, copyop: Copyop = SHALLOW_COPY): EllipsoidModel {.constructor,importcpp: "EllipsoidModel(@)".}

proc constructCoordinateSystemNode*(): CoordinateSystemNode {.constructor,importcpp: "CoordinateSystemNode".}

proc constructCoordinateSystemNode*(format: String, cs: String): CoordinateSystemNode {.constructor,importcpp: "CoordinateSystemNode(@)".}

proc constructCoordinateSystemNode*(Coordinatesystemnode, copyop: Copyop = SHALLOW_COPY): CoordinateSystemNode {.constructor,importcpp: "CoordinateSystemNode(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: EllipsoidModel): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: EllipsoidModel, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: EllipsoidModel, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: EllipsoidModel): cstring  {.importcpp: "libraryName".}

proc className*(this: EllipsoidModel): cstring  {.importcpp: "className".}

proc setRadiusEquator*(this: var EllipsoidModel, radius: cdouble)  {.importcpp: "setRadiusEquator".}

proc getRadiusEquator*(this: EllipsoidModel): cdouble  {.importcpp: "getRadiusEquator".}

proc setRadiusPolar*(this: var EllipsoidModel, radius: cdouble)  {.importcpp: "setRadiusPolar".}

proc getRadiusPolar*(this: EllipsoidModel): cdouble  {.importcpp: "getRadiusPolar".}

proc convertLatLongHeightToXYZ*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, height: cdouble, X: cdouble, Y: cdouble, Z: cdouble)  {.importcpp: "convertLatLongHeightToXYZ".}
    ## //////////////////////////////////////////////////////////////////////
    ## ///////////////////////////////////////////////////

proc convertXYZToLatLongHeight*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble, latitude: cdouble, longitude: cdouble, height: cdouble)  {.importcpp: "convertXYZToLatLongHeight".}

proc computeLocalToWorldTransformFromLatLongHeight*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, height: cdouble, localToWorld: Matrixd)  {.importcpp: "computeLocalToWorldTransformFromLatLongHeight".}

proc computeLocalToWorldTransformFromXYZ*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble, localToWorld: Matrixd)  {.importcpp: "computeLocalToWorldTransformFromXYZ".}

proc computeCoordinateFrame*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, localToWorld: Matrixd)  {.importcpp: "computeCoordinateFrame".}

proc computeLocalUpVector*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble): Vec3d  {.importcpp: "computeLocalUpVector".}

proc isWGS84*(this: EllipsoidModel): bool  {.importcpp: "isWGS84".}

proc computeCoefficients*(this: var EllipsoidModel)  {.importcpp: "computeCoefficients".}

proc cloneType*(this: CoordinateSystemNode): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: CoordinateSystemNode, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: CoordinateSystemNode, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: CoordinateSystemNode): cstring  {.importcpp: "className".}

proc libraryName*(this: CoordinateSystemNode): cstring  {.importcpp: "libraryName".}

proc accept*(this: var CoordinateSystemNode, nv: Nodevisitor)  {.importcpp: "accept".}

proc set*(this: var CoordinateSystemNode, csn: Coordinatesystemnode)  {.importcpp: "set".}
    ## Set the coordinate system node up by copying the format, coordinate
    ## system string, and ellipsoid model of another coordinate system node.

proc setFormat*(this: var CoordinateSystemNode, format: String)  {.importcpp: "setFormat".}
    ## Set the coordinate system format string. Typical values would be WKT,
    ## PROJ4, USGS etc.

proc getFormat*(this: CoordinateSystemNode): String  {.importcpp: "getFormat".}
    ## Get the coordinate system format string.

proc setCoordinateSystem*(this: var CoordinateSystemNode, cs: String)  {.importcpp: "setCoordinateSystem".}
    ## Set the CoordinateSystem reference string, should be stored in a form
    ## consistent with the Format.

proc getCoordinateSystem*(this: CoordinateSystemNode): String  {.importcpp: "getCoordinateSystem".}
    ## Get the CoordinateSystem reference string.

proc setEllipsoidModel*(this: var CoordinateSystemNode, ellipsode: ptr Ellipsoidmodel )  {.importcpp: "setEllipsoidModel".}
    ## Set EllipsoidModel to describe the model used to map lat, long and
    ## height into geocentric XYZ and back.

proc getEllipsoidModel*(this: var CoordinateSystemNode): ptr Ellipsoidmodel   {.importcpp: "getEllipsoidModel".}
    ## Get the EllipsoidModel.

proc getEllipsoidModel*(this: CoordinateSystemNode): ptr Ellipsoidmodel   {.importcpp: "getEllipsoidModel".}
    ## Get the const EllipsoidModel.

proc computeLocalCoordinateFrame*(this: CoordinateSystemNode, position: Vec3d): Coordinateframe  {.importcpp: "computeLocalCoordinateFrame".}
    ## Compute the local coordinate frame for specified point.

proc computeLocalUpVector*(this: CoordinateSystemNode, position: Vec3d): Vec3d  {.importcpp: "computeLocalUpVector".}
    ## Compute the local up-vector for specified point.

proc convertLatLongHeightToXYZ*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, height: cdouble, X: cdouble, Y: cdouble, Z: cdouble)  {.importcpp: "convertLatLongHeightToXYZ".}
    ## //////////////////////////////////////////////////////////////////////
    ## ///////////////////////////////////////////////////

proc convertXYZToLatLongHeight*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble, latitude: cdouble, longitude: cdouble, height: cdouble)  {.importcpp: "convertXYZToLatLongHeight".}

proc computeLocalToWorldTransformFromLatLongHeight*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, height: cdouble, localToWorld: Matrixd)  {.importcpp: "computeLocalToWorldTransformFromLatLongHeight".}

proc computeLocalToWorldTransformFromXYZ*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble, localToWorld: Matrixd)  {.importcpp: "computeLocalToWorldTransformFromXYZ".}

proc computeCoordinateFrame*(this: EllipsoidModel, latitude: cdouble, longitude: cdouble, localToWorld: Matrixd)  {.importcpp: "computeCoordinateFrame".}

proc computeLocalUpVector*(this: EllipsoidModel, X: cdouble, Y: cdouble, Z: cdouble): Vec3d  {.importcpp: "computeLocalUpVector".}

{.pop.} # header: "CoordinateSystemNode
