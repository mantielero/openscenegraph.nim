import State  # provides: osg::State
import Object  # provides: osg::Object
import StateAttribute  # provides: osg::StateAttribute::Type, osg::StateAttribute
import CopyOp  # provides: osg::CopyOp
type
  VertexAttribDivisor* {.header: "VertexAttribDivisor", importcpp: "osg::VertexAttribDivisor", byref.} = object #of class osg::StateAttribute
    ## VertexAttribDivisor state class which encapsulates OpenGL
    ## glVertexAttribDivisor() functionality.



{.push header: "VertexAttribDivisor".}

proc constructVertexAttribDivisor*(): VertexAttribDivisor {.constructor,importcpp: "osg::VertexAttribDivisor::VertexAttribDivisor".}

proc constructVertexAttribDivisor*(index: cuint, divisor: cuint): VertexAttribDivisor {.constructor,importcpp: "osg::VertexAttribDivisor::VertexAttribDivisor(@)".}

proc constructVertexAttribDivisor*(vad: Vertexattribdivisor, copyop: Copyop = SHALLOW_COPY): VertexAttribDivisor {.constructor,importcpp: "osg::VertexAttribDivisor::VertexAttribDivisor(@)".}
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

{.pop.}  # header: "VertexAttribDivisor"
