import Matrixd # Provides Matrixd, RefMatrixd


type
  # Typedefs
  Matrix* {.header: "Matrix", importcpp: "osg::Matrix".} = Matrixd
  RefMatrix* {.header: "Matrix", importcpp: "osg::RefMatrix".} = Refmatrixd
