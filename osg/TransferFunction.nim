import CopyOp # Provides CopyOp
import Object # Provides Object
import Vec4 # Provides Vec4
import Image # Provides Image


type
  ColorMap* {.header: "TransferFunction", importcpp: "osg::TransferFunction1D::ColorMap".} = cint
{.push header: "TransferFunction".}


# Constructors and methods
proc constructTransferFunction*(): TransferFunction {.constructor,importcpp: "TransferFunction".}

proc constructTransferFunction*(tf: Transferfunction, copyop: Copyop = SHALLOW_COPY): TransferFunction {.constructor,importcpp: "TransferFunction(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc constructTransferFunction1D*(): TransferFunction1D {.constructor,importcpp: "TransferFunction1D".}

proc constructTransferFunction1D*(tf: Transferfunction1d, copyop: Copyop = SHALLOW_COPY): TransferFunction1D {.constructor,importcpp: "TransferFunction1D(@)".}
    ## Copy constructor using CopyOp to manage deep vs shallow copy.

proc cloneType*(this: TransferFunction): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TransferFunction, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TransferFunction, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TransferFunction): cstring  {.importcpp: "libraryName".}

proc className*(this: TransferFunction): cstring  {.importcpp: "className".}

proc getImage*(this: var TransferFunction): ptr Image   {.importcpp: "getImage".}
    ## Get the image that is used for passing the transfer function data to
    ## the GPU.

proc getImage*(this: TransferFunction): ptr Image   {.importcpp: "getImage".}
    ## Get the const image that is used for passing the transfer function
    ## data to the GPU.

proc cloneType*(this: TransferFunction1D): ptr Object   {.importcpp: "cloneType".}

proc clone*(this: TransferFunction1D, copyop: Copyop): ptr Object   {.importcpp: "clone".}

proc isSameKindAs*(this: TransferFunction1D, obj: ptr Object ): bool  {.importcpp: "isSameKindAs".}

proc libraryName*(this: TransferFunction1D): cstring  {.importcpp: "libraryName".}

proc className*(this: TransferFunction1D): cstring  {.importcpp: "className".}

proc getMinimum*(this: TransferFunction1D): cfloat  {.importcpp: "getMinimum".}
    ## Get the minimum transfer function value.

proc getMaximum*(this: TransferFunction1D): cfloat  {.importcpp: "getMaximum".}
    ## Get the maximum transfer function value.

proc allocate*(this: var TransferFunction1D, numImageCells: cuint)  {.importcpp: "allocate".}
    ## allocate the osg::Image with specified dimension. The Image tracks the
    ## color map, and is used to represent the transfer function when
    ## download to GPU.

proc clear*(this: var TransferFunction1D, color: Vec4 = ))  {.importcpp: "clear".}
    ## Clear the whole range to just represent a single color.

proc getPixelValue*(this: TransferFunction1D, i: cuint): Vec4  {.importcpp: "getPixelValue".}
    ## Get pixel value from the image.

proc getNumberImageCells*(this: TransferFunction1D): cuint  {.importcpp: "getNumberImageCells".}
    ## Get the number of image cells that are assigned to the represent the
    ## transfer function when download to the GPU.

proc setColor*(this: var TransferFunction1D, v: cfloat, color: Vec4, updateImage: bool)  {.importcpp: "setColor".}
    ## Set the color for a specified transfer function value. updateImage
    ## defaults to true, and tells the setColor function to update the
    ## associate osg::Image that tracks the color map. Pass in false as the
    ## updateImage parameter if you are setting up many values at once to
    ## avoid recomputation of the image data, then once all setColor calls
    ## are made explicitly call updateImage() to bring the osg::Image back
    ## into sync with the color map.

proc getColor*(this: TransferFunction1D, v: cfloat): Vec4  {.importcpp: "getColor".}
    ## Get the color for a specified transfer function value, interpolating
    ## the value if no exact match is found.

proc setColorMap*(this: var TransferFunction1D, vcm: Colormap)  {.importcpp: "setColorMap".}
    ## set the color map and automatically update the image to make sure they
    ## are in sync.

proc getColorMap*(this: var TransferFunction1D): Colormap  {.importcpp: "getColorMap".}
    ## Get the color map that stores the mapping between the transfer
    ## function value and the colour it maps to.

proc getColorMap*(this: TransferFunction1D): Colormap  {.importcpp: "getColorMap".}
    ## Get the const color map that stores the mapping between the transfer
    ## function value and the colour it maps to.

proc assign*(this: var TransferFunction1D, vcm: Colormap)  {.importcpp: "assign".}
    ## Assign a color map and automatically update the image to make sure
    ## they are in sync.

proc updateImage*(this: var TransferFunction1D)  {.importcpp: "updateImage".}
    ## Manually update the associate osg::Image to represent the colors
    ## assigned in the color map.

proc assignToImage*(this: var TransferFunction1D, lower_v: cfloat, lower_c: Vec4, upper_v: cfloat, upper_c: Vec4)  {.importcpp: "assignToImage".}

{.pop.} # header: "TransferFunction
