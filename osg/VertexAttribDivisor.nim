import CopyOp # Provides CopyOp
import Object # Provides Object
import StateAttribute # Provides StateAttribute, Type
import State # Provides State


{.push header: "VertexAttribDivisor".}


# Constructors and methods
proc constructVertexAttribDivisor*(): VertexAttribDivisor {.constructor,importcpp: "VertexAttribDivisor".}

proc constructVertexAttribDivisor*(index: cuint, divisor: cuint): VertexAttribDivisor {.constructor,importcpp: "VertexAttribDivisor(@)".}

proc constructVertexAttribDivisor*(vad: Vertexattribdivisor, copyop: Copyop = SHALLOW_COPY): VertexAttribDivisor {.constructor,importcpp: "VertexAttribDivisor(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: VertexAttribDivisor): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: VertexAttribDivisor, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: VertexAttribDivisor, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: VertexAttribDivisor): cstring  {.importcpp: "libraryName".}

proc className*(this: VertexAttribDivisor): cstring  {.importcpp: "className".}

proc getType*(this: VertexAttribDivisor): Type  {.importcpp: "getType".}

proc compare*(this: VertexAttribDivisor, sa: Stateattribute): cint  {.importcpp: "compare".}
    ## Return -1 if *this < *rhs, 0 if *this==*rhs, 1 if *this>*rhs.

proc getMember*(this: VertexAttribDivisor): cuint  {.importcpp: "getMember".}

proc setIndex*(this: var VertexAttribDivisor, index: cuint)  {.importcpp: "setIndex".}
    ## Set the vertex attrib index - the vertex attribute slot that the
    ## divisor should apply to.

proc getIndex*(this: VertexAttribDivisor): cuint  {.importcpp: "getIndex".}
    ## Get the vertex attrib index.

proc setDivisor*(this: var VertexAttribDivisor, divisor: cuint)  {.importcpp: "setDivisor".}
    ## Set the vertex attrib divisor.

proc getDivisor*(this: VertexAttribDivisor): cuint  {.importcpp: "getDivisor".}
    ## Get the vertex attrib divisor.

proc apply*(this: VertexAttribDivisor, state: State)  {.importcpp: "apply".}
    ## Apply to the OpenGL state machine.

{.pop.} # header: "VertexAttribDivisor
