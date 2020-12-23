import Vec3 # Provides Vec3
import Vec4 # Provides Vec4
import Matrix # Provides Matrix
import BoundingSphere # Provides BoundingSphere
import BoundingBox # Provides BoundingBox
import Polytope # Provides Polytope
import StateSet # Provides StateSet
import Node # Provides NodePath
import ShadowVolumeOccluder # Provides ShadowVolumeOccluder
import Viewport # Provides Viewport


type
  MaskValues* {.size:sizeof(cuint),header: "CullingSet", importcpp: "osg::CullingSet::MaskValues".} = enum
    NO_CULLING = 0,
    VIEW_FRUSTUM_SIDES_CULLING = 1,
    NEAR_PLANE_CULLING = 2,
    FAR_PLANE_CULLING = 4,
    VIEW_FRUSTUM_CULLING = 7,
    SMALL_FEATURE_CULLING = 8,
    SHADOW_OCCLUSION_CULLING = 16,
    DEFAULT_CULLING = 25,
    ENABLE_ALL_CULLING = 31

  # Typedefs
  StateFrustumPair* {.header: "CullingSet", importcpp: "osg::CullingSet::StateFrustumPair".} = Pair[Ref_ptr[Stateset]]
  StateFrustumList* {.header: "CullingSet", importcpp: "osg::CullingSet::StateFrustumList".} = cint
  OccluderList* {.header: "CullingSet", importcpp: "osg::CullingSet::OccluderList".} = cint
  Mask* {.header: "CullingSet", importcpp: "osg::CullingSet::Mask".} = cint
{.push header: "CullingSet".}


# Constructors and methods
proc constructCullingSet*(): CullingSet {.constructor,importcpp: "CullingSet".}

proc constructCullingSet*(cs: Cullingset): CullingSet {.constructor,importcpp: "CullingSet(@)".}

proc constructCullingSet*(cs: Cullingset, matrix: Matrix, pixelSizeVector: Vec4): CullingSet {.constructor,importcpp: "CullingSet(@)".}

proc `=`*(this: var CullingSet, cs: Cullingset): Cullingset  {.importcpp: "# = #".}

proc set*(this: var CullingSet, cs: Cullingset)  {.importcpp: "set".}

proc set*(this: var CullingSet, cs: Cullingset, matrix: Matrix, pixelSizeVector: Vec4)  {.importcpp: "set".}

proc setCullingMask*(this: var CullingSet, mask: Mask)  {.importcpp: "setCullingMask".}

proc getCullingMask*(this: CullingSet): Mask  {.importcpp: "getCullingMask".}

proc setFrustum*(this: var CullingSet, cv: Polytope)  {.importcpp: "setFrustum".}

proc getFrustum*(this: var CullingSet): Polytope  {.importcpp: "getFrustum".}

proc getFrustum*(this: CullingSet): Polytope  {.importcpp: "getFrustum".}

proc addStateFrustum*(this: var CullingSet, stateset: ptr Stateset , polytope: Polytope)  {.importcpp: "addStateFrustum".}

proc getStateFrustumList*(this: var CullingSet, sfl: Statefrustumlist)  {.importcpp: "getStateFrustumList".}

proc getStateFrustumList*(this: var CullingSet): Statefrustumlist  {.importcpp: "getStateFrustumList".}

proc addOccluder*(this: var CullingSet, cv: Shadowvolumeoccluder)  {.importcpp: "addOccluder".}

proc setPixelSizeVector*(this: var CullingSet, v: Vec4)  {.importcpp: "setPixelSizeVector".}

proc getPixelSizeVector*(this: var CullingSet): Vec4  {.importcpp: "getPixelSizeVector".}

proc getPixelSizeVector*(this: CullingSet): Vec4  {.importcpp: "getPixelSizeVector".}

proc setSmallFeatureCullingPixelSize*(this: var CullingSet, value: cfloat)  {.importcpp: "setSmallFeatureCullingPixelSize".}
    ## Threshold at which small features are culled.

proc getSmallFeatureCullingPixelSize*(this: var CullingSet): cfloat  {.importcpp: "getSmallFeatureCullingPixelSize".}

proc getSmallFeatureCullingPixelSize*(this: CullingSet): cfloat  {.importcpp: "getSmallFeatureCullingPixelSize".}

proc pixelSize*(this: CullingSet, v: Vec3, radius: cfloat): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel of an object at position v, with specified radius.

proc pixelSize*(this: CullingSet, bs: Boundingsphere): cfloat  {.importcpp: "pixelSize".}
    ## Compute the pixel of a bounding sphere.

proc clampedPixelSize*(this: CullingSet, v: Vec3, radius: cfloat): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel of an object at position v, with specified radius.
    ## fabs()ed to always be positive.

proc clampedPixelSize*(this: CullingSet, bs: Boundingsphere): cfloat  {.importcpp: "clampedPixelSize".}
    ## Compute the pixel of a bounding sphere. fabs()ed to always be
    ## positive.

proc isCulled*(this: var CullingSet, vertices: cint): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullingSet, bb: Boundingbox): bool  {.importcpp: "isCulled".}

proc isCulled*(this: var CullingSet, bs: Boundingsphere): bool  {.importcpp: "isCulled".}

proc pushCurrentMask*(this: var CullingSet)  {.importcpp: "pushCurrentMask".}

proc popCurrentMask*(this: var CullingSet)  {.importcpp: "popCurrentMask".}

proc resetCullingMask*(this: var CullingSet)  {.importcpp: "resetCullingMask".}

proc disableAndPushOccludersCurrentMask*(this: var CullingSet, nodePath: Nodepath)  {.importcpp: "disableAndPushOccludersCurrentMask".}

proc popOccludersCurrentMask*(this: var CullingSet, nodePath: Nodepath)  {.importcpp: "popOccludersCurrentMask".}

proc computePixelSizeVector*(this: var CullingSet, W: Viewport, P: Matrix, M: Matrix): Vec4  {.importcpp: "computePixelSizeVector".}

{.pop.} # header: "CullingSet
