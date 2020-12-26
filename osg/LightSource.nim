import BoundingSphere  # provides: osg::BoundingSphere
import Object  # provides: osg::Object
import StateSet  # provides: osg::StateSet
import CopyOp  # provides: osg::CopyOp
import Light  # provides: osg::Light
import NodeVisitor  # provides: osg::NodeVisitor
type
  ReferenceFrame* {.size:sizeof(cuint),header: "LightSource", importcpp: "osg::LightSource::ReferenceFrame".} = enum
    RELATIVE_RF = 0,
    ABSOLUTE_RF = 1



{.push header: "LightSource".}

proc constructLightSource*(): LightSource {.constructor,importcpp: "osg::LightSource::LightSource".}

proc constructLightSource*(ls: Lightsource, copyop: Copyop = SHALLOW_COPY): LightSource {.constructor,importcpp: "osg::LightSource::LightSource(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: LightSource): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: LightSource, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: LightSource, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc className*(this: LightSource): cstring  {.importcpp: "className".}

proc libraryName*(this: LightSource): cstring  {.importcpp: "libraryName".}

proc accept*(this: var LightSource, nv: Nodevisitor)  {.importcpp: "accept".}

proc setReferenceFrame*(this: var LightSource, rf: Referenceframe)  {.importcpp: "setReferenceFrame".}
    ## Set the light sources's ReferenceFrame, either to be relative to its
    ## parent reference frame, or relative to an absolute coordinate frame.
    ## RELATIVE_RF is the default. Note: setting the ReferenceFrame to be
    ## ABSOLUTE_RF will also set the CullingActive flag on the light source,
    ## and hence all of its parents, to false, thereby disabling culling of
    ## it and all its parents. This is necessary to prevent inappropriate
    ## culling, but may impact cull times if the absolute light source is
    ## deep in the scene graph. It is therefore recommended to only use
    ## absolute light source at the top of the scene.

proc getReferenceFrame*(this: LightSource): Referenceframe  {.importcpp: "getReferenceFrame".}

proc setLight*(this: var LightSource, light: ptr Light )  {.importcpp: "setLight".}
    ## Set the attached light.

proc getLight*(this: var LightSource): ptr Light   {.importcpp: "getLight".}
    ## Get the attached light.

proc getLight*(this: LightSource): ptr Light   {.importcpp: "getLight".}
    ## Get the const attached light.

proc setStateSetModes*(this: LightSource, Stateset, Glmodevalue)  {.importcpp: "setStateSetModes".}
    ## Set the GLModes on StateSet associated with the LightSource.

proc setLocalStateSetModes*(this: var LightSource, value: Glmodevalue)  {.importcpp: "setLocalStateSetModes".}
    ## Set up the local StateSet.

proc setThreadSafeRefUnref*(this: var LightSource, threadSafe: bool)  {.importcpp: "setThreadSafeRefUnref".}
    ## Set whether to use a mutex to ensure ref() and unref() are thread
    ## safe.

proc computeBound*(this: LightSource): Boundingsphere  {.importcpp: "computeBound".}

{.pop.}  # header: "LightSource"
