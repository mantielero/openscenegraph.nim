import osg_types
  # File: Node  was providing: osg::Node
  # File: Geometry  was providing: osg::Geometry
  # File: RenderInfo  was providing: osg::RenderInfo
  # File: Program  was providing: osg::Program
  # File: Texture  was providing: osg::Texture
type
  GeometryCostEstimator* {.header: "GraphicsCostEstimator", importcpp: "osg::GeometryCostEstimator", byref.} = object #of osg::Referenced

  TextureCostEstimator* {.header: "GraphicsCostEstimator", importcpp: "osg::TextureCostEstimator", byref.} = object #of osg::Referenced

  ProgramCostEstimator* {.header: "GraphicsCostEstimator", importcpp: "osg::ProgramCostEstimator", byref.} = object #of osg::Referenced

  CostPair* {.header: "GraphicsCostEstimator", importcpp: "osg::CostPair".} = pair[cdouble,cdouble]


{.push header: "GraphicsCostEstimator".}

proc constructClampedLinearCostFunction1D*(cost0: cdouble, dcost_di: cdouble, min_input: cuint = 0): ClampedLinearCostFunction1D {.constructor,importcpp: "osg::ClampedLinearCostFunction1D::ClampedLinearCostFunction1D(@)".}

proc constructGeometryCostEstimator*(): GeometryCostEstimator {.constructor,importcpp: "osg::GeometryCostEstimator::GeometryCostEstimator".}

proc constructTextureCostEstimator*(): TextureCostEstimator {.constructor,importcpp: "osg::TextureCostEstimator::TextureCostEstimator".}

proc constructProgramCostEstimator*(): ProgramCostEstimator {.constructor,importcpp: "osg::ProgramCostEstimator::ProgramCostEstimator".}

proc constructGraphicsCostEstimator*(): GraphicsCostEstimator {.constructor,importcpp: "osg::GraphicsCostEstimator::GraphicsCostEstimator".}

proc set*(this: var ClampedLinearCostFunction1D, cost0: cdouble, dcost_di: cdouble, min_input: cuint)  {.importcpp: "set".}

proc `()`*(this: ClampedLinearCostFunction1D, input: cuint): cdouble  {.importcpp: "# () #".}

proc setDefaults*(this: var GeometryCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var GeometryCostEstimator, renderInfo: RenderInfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: GeometryCostEstimator, geometry: ptr Geometry ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GeometryCostEstimator, geometry: ptr Geometry ): CostPair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var TextureCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var TextureCostEstimator, renderInfo: RenderInfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: TextureCostEstimator, texture: ptr Texture ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: TextureCostEstimator, texture: ptr Texture ): CostPair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var ProgramCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var ProgramCostEstimator, renderInfo: RenderInfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: ProgramCostEstimator, program: ptr Program ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: ProgramCostEstimator, program: ptr Program ): CostPair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var GraphicsCostEstimator)  {.importcpp: "setDefaults".}
    ## set defaults for computing the costs.

proc calibrate*(this: var GraphicsCostEstimator, renderInfo: RenderInfo)  {.importcpp: "calibrate".}
    ## calibrate the costs of various compile and draw operations

proc estimateCompileCost*(this: GraphicsCostEstimator, geometry: ptr Geometry ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, geometry: ptr Geometry ): CostPair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, texture: ptr Texture ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, texture: ptr Texture ): CostPair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, program: ptr Program ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, program: ptr Program ): CostPair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, node: ptr Node ): CostPair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, node: ptr Node ): CostPair  {.importcpp: "estimateDrawCost".}

{.pop.}  # header: "GraphicsCostEstimator"
