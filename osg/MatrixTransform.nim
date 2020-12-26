import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/Matrix  # provides: osg::Matrix
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
{.push header: "MatrixTransform".}

proc constructMatrixTransform*(): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform".}

proc constructMatrixTransform*(Matrixtransform, copyop: Copyop = SHALLOW_COPY): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructMatrixTransform*(matix: Matrix): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform(@)".}

proc cloneType*(this: MatrixTransform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MatrixTransform, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MatrixTransform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MatrixTransform): cstring  {.importcpp: "className".}

proc libraryName*(this: MatrixTransform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var MatrixTransform, nv: Nodevisitor)  {.importcpp: "accept".}

proc asMatrixTransform*(this: var MatrixTransform): ptr Matrixtransform   {.importcpp: "asMatrixTransform".}

proc asMatrixTransform*(this: MatrixTransform): ptr Matrixtransform   {.importcpp: "asMatrixTransform".}

proc setMatrix*(this: var MatrixTransform, mat: Matrix)  {.importcpp: "setMatrix".}
    ## Set the transform's matrix.

proc getMatrix*(this: MatrixTransform): Matrix  {.importcpp: "getMatrix".}
    ## Get the matrix.

proc preMult*(this: var MatrixTransform, mat: Matrix)  {.importcpp: "preMult".}
    ## pre multiply the transform's matrix.

proc postMult*(this: var MatrixTransform, mat: Matrix)  {.importcpp: "postMult".}
    ## post multiply the transform's matrix.

proc getInverseMatrix*(this: MatrixTransform): Matrix  {.importcpp: "getInverseMatrix".}
    ## Get the inverse matrix.

proc computeLocalToWorldMatrix*(this: MatrixTransform, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: MatrixTransform, matrix: Matrix, ptr Nodevisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

{.pop.}  # header: "MatrixTransform"
