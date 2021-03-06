import osg_types
  # File: State  was providing: osg::State
  # File: Object  was providing: osg::Object
  # File: StateAttribute  was providing: osg::StateAttribute::Type, osg::StateAttribute
  # File: CopyOp  was providing: osg::CopyOp::Options, osg::CopyOp
  # File: Matrix  was providing: osg::Matrix
type
  TexMat* {.header: "TexMat", importcpp: "osg::TexMat", byref.} = object #of class osg::StateAttribute
    ## A texture matrix state class that encapsulates OpenGL texture matrix
    ## functionality.



{.push header: "TexMat".}

proc constructTexMat*(): TexMat {.constructor,importcpp: "osg::TexMat::TexMat".}

proc constructTexMat*(matrix: Matrix): TexMat {.constructor,importcpp: "osg::TexMat::TexMat(@)".}

proc constructTexMat*(texmat: TexMat, copyop: CopyOp = SHALLOW_COPY): TexMat {.constructor,importcpp: "osg::TexMat::TexMat(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TexMat): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TexMat, copyop: CopyOp): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TexMat, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TexMat): cstring  {.importcpp: "libraryName".}

proc className*(this: TexMat): cstring  {.importcpp: "className".}

proc getType*(this: TexMat): Type  {.importcpp: "getType".}

proc isTextureAttribute*(this: TexMat): bool  {.importcpp: "isTextureAttribute".}

proc compare*(this: TexMat, sa: StateAttribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc setMatrix*(this: var TexMat, matrix: Matrix)  {.importcpp: "setMatrix".}
    ## Set the texture matrix

proc getMatrix*(this: var TexMat): Matrix  {.importcpp: "getMatrix".}
    ## Get the texture matrix

proc getMatrix*(this: TexMat): Matrix  {.importcpp: "getMatrix".}
    ## Get the const texture matrix

proc setScaleByTextureRectangleSize*(this: var TexMat, flag: bool)  {.importcpp: "setScaleByTextureRectangleSize".}
    ## Switch on/off the post scaling of the TexMat matrix by the size of the
    ## last applied texture rectangle. Use a TexMat alongside a
    ## TextureRectangle with this scaling applied allows one to treat a
    ## TextureRectnagles texture coordinate range as if it were the usual non
    ## dimensional 0.0 to 1.0 range. Note, the TexMat matrix itself is not
    ## modified by the post scaling, its purely an operation passed to OpenGL
    ## to do the post scaling once the the TexMat matrix has been loaded.

proc getScaleByTextureRectangleSize*(this: TexMat): bool  {.importcpp: "getScaleByTextureRectangleSize".}
    ## Get whether the post scaling of the TexMat matrix, by the size of the
    ## last applied texture rectangle, is switched on/off.

proc apply*(this: TexMat, state: State)  {.importcpp: "apply".}
    ## Apply texture matrix to OpenGL state.

{.pop.}  # header: "TexMat"
