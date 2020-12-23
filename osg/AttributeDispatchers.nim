

type
  # Typedefs
  AttributeDispatchMapList* {.header: "AttributeDispatchers", importcpp: "osg::AttributeDispatchers::AttributeDispatchMapList".} = cint
  AttributeDispatchList* {.header: "AttributeDispatchers", importcpp: "osg::AttributeDispatchers::AttributeDispatchList".} = cint
{.push header: "AttributeDispatchers".}


# Constructors and methods
proc constructAttributeDispatchers*(): AttributeDispatchers {.constructor,importcpp: "AttributeDispatchers".}

proc assign*(this: var AttributeDispatch, ptr GLvoid)  {.importcpp: "assign".}

proc `()`*(this: var AttributeDispatch, cuint)  {.importcpp: "# () #".}

proc setState*(this: var AttributeDispatchers, state: ptr State )  {.importcpp: "setState".}

proc reset*(this: var AttributeDispatchers)  {.importcpp: "reset".}

proc setUseVertexAttribAlias*(this: var AttributeDispatchers, flag: bool)  {.importcpp: "setUseVertexAttribAlias".}

proc getUseVertexAttribAlias*(this: AttributeDispatchers): bool  {.importcpp: "getUseVertexAttribAlias".}

proc activateColorArray*(this: var AttributeDispatchers, array: ptr Array )  {.importcpp: "activateColorArray".}

proc activateNormalArray*(this: var AttributeDispatchers, array: ptr Array )  {.importcpp: "activateNormalArray".}

proc activateSecondaryColorArray*(this: var AttributeDispatchers, array: ptr Array )  {.importcpp: "activateSecondaryColorArray".}

proc activateFogCoordArray*(this: var AttributeDispatchers, array: ptr Array )  {.importcpp: "activateFogCoordArray".}

proc activateVertexAttribArray*(this: var AttributeDispatchers, unit: cuint, array: ptr Array )  {.importcpp: "activateVertexAttribArray".}

proc normalDispatcher*(this: var AttributeDispatchers, array: ptr Array ): ptr Attributedispatch   {.importcpp: "normalDispatcher".}

proc colorDispatcher*(this: var AttributeDispatchers, array: ptr Array ): ptr Attributedispatch   {.importcpp: "colorDispatcher".}

proc secondaryColorDispatcher*(this: var AttributeDispatchers, array: ptr Array ): ptr Attributedispatch   {.importcpp: "secondaryColorDispatcher".}

proc fogCoordDispatcher*(this: var AttributeDispatchers, array: ptr Array ): ptr Attributedispatch   {.importcpp: "fogCoordDispatcher".}

proc vertexAttribDispatcher*(this: var AttributeDispatchers, unit: cuint, array: ptr Array ): ptr Attributedispatch   {.importcpp: "vertexAttribDispatcher".}

proc dispatch*(this: var AttributeDispatchers, index: cuint)  {.importcpp: "dispatch".}

proc active*(this: AttributeDispatchers): bool  {.importcpp: "active".}

proc init*(this: var AttributeDispatchers)  {.importcpp: "init".}

proc assignTexCoordDispatchers*(this: var AttributeDispatchers, unit: cuint)  {.importcpp: "assignTexCoordDispatchers".}

proc assignVertexAttribDispatchers*(this: var AttributeDispatchers, unit: cuint)  {.importcpp: "assignVertexAttribDispatchers".}

{.pop.} # header: "AttributeDispatchers
