import Vec3 # Provides Vec3
import Matrix # Provides Matrix, RefMatrix
import BoundingSphere # Provides BoundingSphere
import BoundingBox # Provides BoundingBox
import Node # Provides NodePath, Node
import ShadowVolumeOccluder # Provides ShadowVolumeOccluderList
import Viewport # Provides Viewport
import CullingSet # Provides CullingSet


type
  # Typedefs
  OccluderList* {.header: "CullStack", importcpp: "osg::CullStack::OccluderList".} = cint
  CullingStack* {.header: "CullStack", importcpp: "osg::CullStack::CullingStack".} = cint
  MatrixStack* {.header: "CullStack", importcpp: "osg::CullStack::MatrixStack".} = Fast_back_stack[Ref_ptr[Refmatrix]]
  ViewportStack* {.header: "CullStack", importcpp: "osg::CullStack::ViewportStack".} = Fast_back_stack[Ref_ptr[Viewport]]
  EyePointStack* {.header: "CullStack", importcpp: "osg::CullStack::EyePointStack".} = Fast_back_stack[Vec3]
  MatrixList* {.header: "CullStack", importcpp: "osg::CullStack::MatrixList".} = cint
{.push header: "CullStack".}


# Constructors and methods
proc constructCullStack*(): CullStack {.constructor,importcpp: "CullStack".}

proc constructCullStack*(cs: Cullstack): CullStack {.constructor,importcpp: "CullStack(@)".}

proc reset*(this: var CullStack)  {.importcpp: "reset".}

proc pushCullingSet*(this: var CullStack)  {.importcpp: "pushCullingSet".}

proc popCullingSet*(this: var CullStack)  {.importcpp: "popCullingSet".}

proc setOccluderList*(this: var CullStack, svol: Shadowvolumeoccluderlist)  {.importcpp: "setOccluderList".}

proc getOccluderList*(this: var CullStack): Shadowvolumeoccluderlist  {.importcpp: "getOccluderList".}

proc getOccluderList*(this: CullStack): Shadowvolumeoccluderlist  {.importcpp: "getOccluderList".}

proc pushViewport*(this: var CullStack, viewport: ptr Viewport )  {.importcpp: "pushViewport".}

proc popViewport*(this: var CullStack)  {.importcpp: "popViewport".}

proc pushProjectionMatrix*(this: var CullStack, matrix: ptr Refmatrix )  {.importcpp: "pushProjectionMatrix".}

proc popProjectionMatrix*(this: var CullStack)  {.importcpp: "popProjectionMatrix".}

proc pushModelViewMatrix*(this: var CullStack, matrix: ptr Refmatrix , referenceFrame: Referenceframe)  {.importcpp: "pushModelViewMatrix".}

proc popModelViewMatrix*(this: var CullStack)  {.importcpp: "popModelViewMatrix".}

proc getFrustumVolume*(this: var CullStack): cfloat  {.importcpp: "getFrustumVolume".}

proc pixelSize*(this: CullStack, v: Vec3, radius: cfloat): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel size of an object at position v, with specified
    ## radius.

proc pixelSize*(this: CullStack, bs: Boundingsphere): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel size of the bounding sphere.

proc clampedPixelSize*(this: CullStack, v: Vec3, radius: cfloat): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel size of an object at position v, with specified
    ## radius. fabs()ed to always be positive.

proc clampedPixelSize*(this: CullStack, bs: Boundingsphere): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel size of the bounding sphere. fabs()ed to always be
    ## positive.

proc disableAndPushOccludersCurrentMask*(this: var CullStack, nodePath: Nodepath)  {.importcpp: "disableAndPushOccludersCurrentMask".}

proc popOccludersCurrentMask*(this: var CullStack, nodePath: Nodepath)  {.importcpp: "popOccludersCurrentMask".}

proc isCulled*(this: var CullStack, vertices: cint): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, bb: Boundingbox): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, bs: Boundingsphere): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, node: Node): bool  {.importcpp: "isCulled".}

proc pushCurrentMask*(this: var CullStack)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var CullStack)  {.importcpp: "popCurrentMask".}

proc getClipSpaceCullingStack*(this: var CullStack): Cullingstack  {.importcpp: "getClipSpaceCullingStack".}

proc getProjectionCullingStack*(this: var CullStack): Cullingstack  {.importcpp: "getProjectionCullingStack".}

proc getModelViewCullingStack*(this: var CullStack): Cullingstack  {.importcpp: "getModelViewCullingStack".}

proc getCurrentCullingSet*(this: var CullStack): Cullingset  {.importcpp: "getCurrentCullingSet".}

proc getCurrentCullingSet*(this: CullStack): Cullingset  {.importcpp: "getCurrentCullingSet".}

proc getViewport*(this: var CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getViewport*(this: CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getModelViewMatrix*(this: var CullStack): ptr Refmatrix   {.importcpp: "getModelViewMatrix".}

proc getModelViewMatrix*(this: CullStack): ptr Refmatrix   {.importcpp: "getModelViewMatrix".}

proc getProjectionMatrix*(this: var CullStack): ptr Refmatrix   {.importcpp: "getProjectionMatrix".}

proc getProjectionMatrix*(this: CullStack): ptr Refmatrix   {.importcpp: "getProjectionMatrix".}

proc getWindowMatrix*(this: CullStack): Matrix  {.importcpp: "getWindowMatrix".}

proc getMVPW*(this: var CullStack): ptr Refmatrix   {.importcpp: "getMVPW".}

proc getReferenceViewPoint*(this: CullStack): Vec3  {.importcpp: "getReferenceViewPoint".}

proc pushReferenceViewPoint*(this: var CullStack, viewPoint: Vec3)  {.importcpp: "pushReferenceViewPoint".}

proc popReferenceViewPoint*(this: var CullStack)  {.importcpp: "popReferenceViewPoint".}

proc getEyeLocal*(this: CullStack): Vec3  {.importcpp: "getEyeLocal".}

proc getViewPointLocal*(this: CullStack): Vec3  {.importcpp: "getViewPointLocal".}

proc getUpLocal*(this: CullStack): Vec3  {.importcpp: "getUpLocal".}

proc getLookVectorLocal*(this: CullStack): Vec3  {.importcpp: "getLookVectorLocal".}

proc getProjectionStack*(this: var CullStack): Matrixstack  {.importcpp: "getProjectionStack".}

proc getProjectionStack*(this: CullStack): Matrixstack  {.importcpp: "getProjectionStack".}

proc getModelViewStack*(this: var CullStack): Matrixstack  {.importcpp: "getModelViewStack".}

proc getModelViewStack*(this: CullStack): Matrixstack  {.importcpp: "getModelViewStack".}

proc getMVPWStack*(this: var CullStack): Matrixstack  {.importcpp: "getMVPWStack".}

proc getMVPWStack*(this: CullStack): Matrixstack  {.importcpp: "getMVPWStack".}

proc computeFrustumVolume*(this: var CullStack)  {.importcpp: "computeFrustumVolume".}

proc createOrReuseMatrix*(this: var CullStack, value: Matrix): ptr Refmatrix   {.importcpp: "createOrReuseMatrix".}

proc getViewport*(this: var CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getViewport*(this: CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getModelViewMatrix*(this: var CullStack): ptr Refmatrix   {.importcpp: "getModelViewMatrix".}

proc getModelViewMatrix*(this: CullStack): ptr Refmatrix   {.importcpp: "getModelViewMatrix".}

proc getProjectionMatrix*(this: var CullStack): ptr Refmatrix   {.importcpp: "getProjectionMatrix".}

proc getProjectionMatrix*(this: CullStack): ptr Refmatrix   {.importcpp: "getProjectionMatrix".}

proc getWindowMatrix*(this: CullStack): Matrix  {.importcpp: "getWindowMatrix".}

proc getMVPW*(this: var CullStack): ptr Refmatrix   {.importcpp: "getMVPW".}

proc createOrReuseMatrix*(this: var CullStack, value: Matrix): ptr Refmatrix   {.importcpp: "createOrReuseMatrix".}

{.pop.} # header: "CullStack
