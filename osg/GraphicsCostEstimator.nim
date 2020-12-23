

type
  CostPair* {.header: "GraphicsCostEstimator", importcpp: "osg::CostPair".} = Pair[cdouble,cdouble]
{.push header: "GraphicsCostEstimator".}


# Constructors and methods
proc constructClampedLinearCostFunction1D*(cost0: cdouble, dcost_di: cdouble, min_input: cuint = 0): ClampedLinearCostFunction1D {.constructor,importcpp: "ClampedLinearCostFunction1D(@)".}

proc constructGeometryCostEstimator*(): GeometryCostEstimator {.constructor,importcpp: "GeometryCostEstimator".}

proc constructTextureCostEstimator*(): TextureCostEstimator {.constructor,importcpp: "TextureCostEstimator".}

proc constructProgramCostEstimator*(): ProgramCostEstimator {.constructor,importcpp: "ProgramCostEstimator".}

proc constructGraphicsCostEstimator*(): GraphicsCostEstimator {.constructor,importcpp: "GraphicsCostEstimator".}

proc set*(this: var ClampedLinearCostFunction1D, cost0: cdouble, dcost_di: cdouble, min_input: cuint)  {.importcpp: "set".}

proc `()`*(this: ClampedLinearCostFunction1D, input: cuint): cdouble  {.importcpp: "# () #".}

proc setDefaults*(this: var GeometryCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var GeometryCostEstimator, renderInfo: Renderinfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: GeometryCostEstimator, geometry: ptr Geometry ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GeometryCostEstimator, geometry: ptr Geometry ): Costpair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var TextureCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var TextureCostEstimator, renderInfo: Renderinfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: TextureCostEstimator, texture: ptr Texture ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: TextureCostEstimator, texture: ptr Texture ): Costpair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var ProgramCostEstimator)  {.importcpp: "setDefaults".}

proc calibrate*(this: var ProgramCostEstimator, renderInfo: Renderinfo)  {.importcpp: "calibrate".}

proc estimateCompileCost*(this: ProgramCostEstimator, program: ptr Program ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: ProgramCostEstimator, program: ptr Program ): Costpair  {.importcpp: "estimateDrawCost".}

proc setDefaults*(this: var GraphicsCostEstimator)  {.importcpp: "setDefaults".}
    ## set defaults for computing the costs.

proc calibrate*(this: var GraphicsCostEstimator, renderInfo: Renderinfo)  {.importcpp: "calibrate".}
    ## calibrate the costs of various compile and draw operations

proc estimateCompileCost*(this: GraphicsCostEstimator, geometry: ptr Geometry ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, geometry: ptr Geometry ): Costpair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, texture: ptr Texture ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, texture: ptr Texture ): Costpair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, program: ptr Program ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, program: ptr Program ): Costpair  {.importcpp: "estimateDrawCost".}

proc estimateCompileCost*(this: GraphicsCostEstimator, node: ptr Node ): Costpair  {.importcpp: "estimateCompileCost".}

proc estimateDrawCost*(this: GraphicsCostEstimator, node: ptr Node ): Costpair  {.importcpp: "estimateDrawCost".}

{.pop.} # header: "GraphicsCostEstimator
