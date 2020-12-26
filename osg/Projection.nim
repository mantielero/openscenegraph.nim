import /usr/include/osg/Object  # provides: osg::Object
import /usr/include/osg/CopyOp  # provides: osg::CopyOp
import /usr/include/osg/Matrix  # provides: osg::Matrix
import /usr/include/osg/NodeVisitor  # provides: osg::NodeVisitor
{.push header: "Projection".}

proc constructProjection*(): Projection {.constructor,importcpp: "osg::Projection::Projection".}

proc constructProjection*(Projection, copyop: Copyop = SHALLOW_COPY): Projection {.constructor,importcpp: "osg::Projection::Projection(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructProjection*(matix: Matrix): Projection {.constructor,importcpp: "osg::Projection::Projection(@)".}

proc cloneType*(this: Projection): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: Projection, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: Projection, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: Projection): cstring  {.importcpp: "className".}

proc libraryName*(this: Projection): cstring  {.importcpp: "libraryName".}

proc accept*(this: var Projection, nv: Nodevisitor)  {.importcpp: "accept".}

proc setMatrix*(this: var Projection, mat: Matrix)  {.importcpp: "setMatrix".}
    ## Set the transform's matrix.

proc getMatrix*(this: Projection): Matrix  {.importcpp: "getMatrix".}
    ## Get the transform's matrix.

proc preMult*(this: var Projection, mat: Matrix)  {.importcpp: "preMult".}
    ## preMult transform.

proc postMult*(this: var Projection, mat: Matrix)  {.importcpp: "postMult".}
    ## postMult transform.

{.pop.}  # header: "Projection"
