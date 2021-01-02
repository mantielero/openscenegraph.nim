import osg_types
  # File: Vec3  was providing: osg::Vec3
  # File: BoundingSphere  was providing: osg::BoundingSphere
  # File: ShadowVolumeOccluder  was providing: osg::ShadowVolumeOccluderList
  # File: Node  was providing: osg::Node, osg::NodePath
  # File: Viewport  was providing: osg::Viewport
  # File: BoundingBox  was providing: osg::BoundingBox
  # File: Matrix  was providing: osg::RefMatrix, osg::Matrix
  # File: CullingSet  was providing: osg::CullingSet
type
  OccluderList* {.header: "CullStack", importcpp: "osg::CullStack::OccluderList".} = cint
  CullingStack* {.header: "CullStack", importcpp: "osg::CullStack::CullingStack".} = cint
  MatrixStack* {.header: "CullStack", importcpp: "osg::CullStack::MatrixStack".} = fast_back_stack[ref_ptr[RefMatrix]]
  ViewportStack* {.header: "CullStack", importcpp: "osg::CullStack::ViewportStack".} = fast_back_stack[ref_ptr[Viewport]]
  EyePointStack* {.header: "CullStack", importcpp: "osg::CullStack::EyePointStack".} = fast_back_stack[Vec3]
  MatrixList* {.header: "CullStack", importcpp: "osg::CullStack::MatrixList".} = cint


{.push header: "CullStack".}

proc constructCullStack*(): CullStack {.constructor,importcpp: "osg::CullStack::CullStack".}

proc constructCullStack*(cs: CullStack): CullStack {.constructor,importcpp: "osg::CullStack::CullStack(@)".}

proc reset*(this: var CullStack)  {.importcpp: "reset".}

proc pushCullingSet*(this: var CullStack)  {.importcpp: "pushCullingSet".}

proc popCullingSet*(this: var CullStack)  {.importcpp: "popCullingSet".}

proc setOccluderList*(this: var CullStack, svol: ShadowVolumeOccluderList)  {.importcpp: "setOccluderList".}

proc getOccluderList*(this: var CullStack): ShadowVolumeOccluderList  {.importcpp: "getOccluderList".}

proc getOccluderList*(this: CullStack): ShadowVolumeOccluderList  {.importcpp: "getOccluderList".}

proc pushViewport*(this: var CullStack, viewport: ptr Viewport )  {.importcpp: "pushViewport".}

proc popViewport*(this: var CullStack)  {.importcpp: "popViewport".}

proc pushProjectionMatrix*(this: var CullStack, matrix: ptr RefMatrix )  {.importcpp: "pushProjectionMatrix".}

proc popProjectionMatrix*(this: var CullStack)  {.importcpp: "popProjectionMatrix".}

proc pushModelViewMatrix*(this: var CullStack, matrix: ptr RefMatrix , referenceFrame: ReferenceFrame)  {.importcpp: "pushModelViewMatrix".}

proc popModelViewMatrix*(this: var CullStack)  {.importcpp: "popModelViewMatrix".}

proc getFrustumVolume*(this: var CullStack): cfloat  {.importcpp: "getFrustumVolume".}

proc pixelSize*(this: CullStack, v: Vec3, radius: cfloat): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel size of an object at position v, with specified
    ## radius.

proc pixelSize*(this: CullStack, bs: BoundingSphere): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel size of the bounding sphere.

proc clampedPixelSize*(this: CullStack, v: Vec3, radius: cfloat): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel size of an object at position v, with specified
    ## radius. fabs()ed to always be positive.

proc clampedPixelSize*(this: CullStack, bs: BoundingSphere): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel size of the bounding sphere. fabs()ed to always be
    ## positive.

proc disableAndPushOccludersCurrentMask*(this: var CullStack, nodePath: NodePath)  {.importcpp: "disableAndPushOccludersCurrentMask".}

proc popOccludersCurrentMask*(this: var CullStack, nodePath: NodePath)  {.importcpp: "popOccludersCurrentMask".}

proc isCulled*(this: var CullStack, vertices: cint): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, bb: BoundingBox): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, bs: BoundingSphere): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullStack, node: Node): bool  {.importcpp: "isCulled".}

proc pushCurrentMask*(this: var CullStack)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var CullStack)  {.importcpp: "popCurrentMask".}

proc getClipSpaceCullingStack*(this: var CullStack): CullingStack  {.importcpp: "getClipSpaceCullingStack".}

proc getProjectionCullingStack*(this: var CullStack): CullingStack  {.importcpp: "getProjectionCullingStack".}

proc getModelViewCullingStack*(this: var CullStack): CullingStack  {.importcpp: "getModelViewCullingStack".}

proc getCurrentCullingSet*(this: var CullStack): CullingSet  {.importcpp: "getCurrentCullingSet".}

proc getCurrentCullingSet*(this: CullStack): CullingSet  {.importcpp: "getCurrentCullingSet".}

proc getViewport*(this: var CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getViewport*(this: CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getModelViewMatrix*(this: var CullStack): ptr RefMatrix   {.importcpp: "getModelViewMatrix".}

proc getModelViewMatrix*(this: CullStack): ptr RefMatrix   {.importcpp: "getModelViewMatrix".}

proc getProjectionMatrix*(this: var CullStack): ptr RefMatrix   {.importcpp: "getProjectionMatrix".}

proc getProjectionMatrix*(this: CullStack): ptr RefMatrix   {.importcpp: "getProjectionMatrix".}

proc getWindowMatrix*(this: CullStack): Matrix  {.importcpp: "getWindowMatrix".}

proc getMVPW*(this: var CullStack): ptr RefMatrix   {.importcpp: "getMVPW".}

proc getReferenceViewPoint*(this: CullStack): Vec3  {.importcpp: "getReferenceViewPoint".}

proc pushReferenceViewPoint*(this: var CullStack, viewPoint: Vec3)  {.importcpp: "pushReferenceViewPoint".}

proc popReferenceViewPoint*(this: var CullStack)  {.importcpp: "popReferenceViewPoint".}

proc getEyeLocal*(this: CullStack): Vec3  {.importcpp: "getEyeLocal".}

proc getViewPointLocal*(this: CullStack): Vec3  {.importcpp: "getViewPointLocal".}

proc getUpLocal*(this: CullStack): Vec3  {.importcpp: "getUpLocal".}

proc getLookVectorLocal*(this: CullStack): Vec3  {.importcpp: "getLookVectorLocal".}

proc getProjectionStack*(this: var CullStack): MatrixStack  {.importcpp: "getProjectionStack".}

proc getProjectionStack*(this: CullStack): MatrixStack  {.importcpp: "getProjectionStack".}

proc getModelViewStack*(this: var CullStack): MatrixStack  {.importcpp: "getModelViewStack".}

proc getModelViewStack*(this: CullStack): MatrixStack  {.importcpp: "getModelViewStack".}

proc getMVPWStack*(this: var CullStack): MatrixStack  {.importcpp: "getMVPWStack".}

proc getMVPWStack*(this: CullStack): MatrixStack  {.importcpp: "getMVPWStack".}

proc computeFrustumVolume*(this: var CullStack)  {.importcpp: "computeFrustumVolume".}

proc createOrReuseMatrix*(this: var CullStack, value: Matrix): ptr RefMatrix   {.importcpp: "createOrReuseMatrix".}

proc getViewport*(this: var CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getViewport*(this: CullStack): ptr Viewport   {.importcpp: "getViewport".}

proc getModelViewMatrix*(this: var CullStack): ptr RefMatrix   {.importcpp: "getModelViewMatrix".}

proc getModelViewMatrix*(this: CullStack): ptr RefMatrix   {.importcpp: "getModelViewMatrix".}

proc getProjectionMatrix*(this: var CullStack): ptr RefMatrix   {.importcpp: "getProjectionMatrix".}

proc getProjectionMatrix*(this: CullStack): ptr RefMatrix   {.importcpp: "getProjectionMatrix".}

proc getWindowMatrix*(this: CullStack): Matrix  {.importcpp: "getWindowMatrix".}

proc getMVPW*(this: var CullStack): ptr RefMatrix   {.importcpp: "getMVPW".}

proc createOrReuseMatrix*(this: var CullStack, value: Matrix): ptr RefMatrix   {.importcpp: "createOrReuseMatrix".}

{.pop.}  # header: "CullStack"
