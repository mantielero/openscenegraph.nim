import osg_types
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "MatrixTransform".}

proc constructMatrixTransform*(): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform".}

proc constructMatrixTransform*(a00: MatrixTransform, copyop: CopyOp = SHALLOW_COPY): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructMatrixTransform*(matix: Matrix): MatrixTransform {.constructor,importcpp: "osg::MatrixTransform::MatrixTransform(@)".}

proc cloneType*(this: MatrixTransform): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: MatrixTransform, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: MatrixTransform, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: MatrixTransform): cstring  {.importcpp: "className".}

proc libraryName*(this: MatrixTransform): cstring  {.importcpp: "libraryName".}

proc accept*(this: var MatrixTransform, nv: NodeVisitor)  {.importcpp: "accept".}

proc asMatrixTransform*(this: var MatrixTransform): ptr MatrixTransform   {.importcpp: "asMatrixTransform".}

proc asMatrixTransform*(this: MatrixTransform): ptr MatrixTransform   {.importcpp: "asMatrixTransform".}

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

proc computeLocalToWorldMatrix*(this: MatrixTransform, matrix: Matrix, a01: ptr NodeVisitor ): bool  {.importcpp: "computeLocalToWorldMatrix".}

proc computeWorldToLocalMatrix*(this: MatrixTransform, matrix: Matrix, a01: ptr NodeVisitor ): bool  {.importcpp: "computeWorldToLocalMatrix".}

{.pop.}  # header: "MatrixTransform"
