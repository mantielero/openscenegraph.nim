import osg_types
  # File: Object  was providing: osg::Object
  # File: CopyOp  was providing: osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
  # File: NodeVisitor  was providing: osg::NodeVisitor
{.push header: "Projection".}

proc constructProjection*(): Projection {.constructor,importcpp: "osg::Projection::Projection".}

proc constructProjection*(a00: Projection, copyop: CopyOp = SHALLOW_COPY): Projection {.constructor,importcpp: "osg::Projection::Projection(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructProjection*(matix: Matrix): Projection {.constructor,importcpp: "osg::Projection::Projection(@)".}

proc cloneType*(this: Projection): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Projection, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Projection, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Projection): cstring  {.importcpp: "className".}

proc libraryName*(this: Projection): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Projection, nv: NodeVisitor)  {.importcpp: "accept".}

proc setMatrix*(this: var Projection, mat: Matrix)  {.importcpp: "setMatrix".}
    ## Set the transform's matrix.

proc getMatrix*(this: Projection): Matrix  {.importcpp: "getMatrix".}
    ## Get the transform's matrix.

proc preMult*(this: var Projection, mat: Matrix)  {.importcpp: "preMult".}
    ## preMult transform.

proc postMult*(this: var Projection, mat: Matrix)  {.importcpp: "postMult".}
    ## postMult transform.

{.pop.}  # header: "Projection"
