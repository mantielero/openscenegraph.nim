{.passL: "-losg -losgViewer".}#, 
  #passC:"-I/usr/include/osg -I/usr/include/osgViewer" }
import opengl

proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

#[
#include <osg/Referenced>
#include <osg/Geometry>
#include <osg/Geode>
#include <osg/Array>
#include <osgViewer/Viewer>
]#

#type
  

type
  Vec3Obj {.importcpp: "osg::Vec3",
            header: "<osg/Array>", bycopy.} = object

#[
proc constructref_ptr*[T](): ref_ptr {.constructor,importcpp: "osg::ref_ptr::ref_ptr<T>".}
]#
proc newVec3*(x,y,z:cdouble): Vec3Obj {.
    importcpp: "osg::Vec3(@)", header: "<osg/Array>", constructor.}




proc x*(this:Vec3Obj):cdouble {.
    importcpp: "#.x()", header: "<osg/Array>", constructor.}

#var p = Vec3((1.0).cdouble, (2.0).cdouble, (3.0).cdouble)
#echo repr p.x()

type
  RefPtr*[T] {.header: "<osg/Referenced>", importcpp: "osg::ref_ptr<\'0>".} = object


proc newRef[T](obj:ptr T):RefPtr[T] {.constructor,importcpp: "ref_ptr(obj)".}

#[
  Handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object
              #header: "Standard_Handle.hxx", bycopy.} = object of RootObj
]#

#[
proc newHandle*[T](): Handle[T] {.cdecl, constructor,
                                     importcpp: "opencascade::handle<\'*0>(@)",
                                     header: "Standard_Handle.hxx".}
]#

type
  GeometryObj {.importcpp: "osg::Geometry",
            header: "<osg/Geometry>", bycopy.} = object
  GeometryRef = RefPtr[GeometryObj]


proc newGeometry*(): GeometryObj {.cdecl, constructor,
    importcpp: "Geometry()", header: "<osg/Geometry>".}

proc newGeometryRef*(): GeometryRef {.  
    importcpp: "(new osg::Geometry)", header: "<osg/Geometry>".}


#[
proc newGeomCartesianPoint*(p: PntObj): GeomCartesianPoint {.cdecl, constructor,
    importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}

var bHdl = newHandle( cnew newGeomCartesianPoint( 1.1, 2.2, 3.3 ) )


]#

# 
type
  Vec3ArrayObj {.importcpp: "osg::Vec3Array",
            header: "<osg/Array>", bycopy.} = object
  Vec3ArrayRef = RefPtr[Vec3ArrayObj]



proc newVec3ArrayRef*(): Vec3ArrayRef {.cdecl, 
    importcpp: "(new osg::Vec3Array)", header: "<osg/Array>".}

proc pushBack*(arr:Vec3ArrayRef; v:Vec3Obj)  {.cdecl, 
    importcpp: "#->push_back(#)", header: "<osg/Array>".}

proc size(arr:Vec3ArrayRef):int  {.cdecl, 
    importcpp: "#->size()", header: "<osg/Array>".}



# 
type
  Vec4ArrayObj {.importcpp: "osg::Vec4Array",
            header: "<osg/Array>", bycopy.} = object
  Vec4ArrayRef = RefPtr[Vec4ArrayObj]

  Vec4Obj {.importcpp: "osg::Vec4",
            header: "<osg/Array>", bycopy.} = object

proc newVec4ArrayRef*(): Vec4ArrayRef {.cdecl,
    importcpp: "(new osg::Vec4Array)", header: "<osg/Array>".}

proc pushBack*(arr:Vec4ArrayRef; v:Vec4Obj)  {.cdecl, 
    importcpp: "#->push_back(#)", header: "<osg/Array>".}


proc newVec4*(a,b,c,d:cdouble): Vec4Obj {.
    importcpp: "osg::Vec4(@)", header: "<osg/Array>", constructor.}

# Geode
type
  GeodeObj {.importcpp: "osg::Geode",
            header: "<osg/Geode>", bycopy.} = object  
  GeodeRef = RefPtr[GeodeObj]

proc newGeode*(): GeodeRef {.
    importcpp: "(new osg::Geode)", header: "<osg/Geode>".}

proc addDrawable*(geode:GeodeRef; drawable:GeometryRef)  {.cdecl, 
    importcpp: "#->addDrawable(#)", header: "<osg/Geode>".}


# 
type
  StateSetObj {.importcpp: "osg::StateSet",
            header: "<osg/StateSet>", bycopy.} = object 

  GLMode      = GLenum
  GLModeValue = uint


proc setMode*(ss:StateSetObj; mode: GLMode; value: GLModeValue) {.cdecl, 
    importcpp: "#->setMode(@)", header: "<osg/StateSet>".} 

# StateAttribute::GLMode mode, StateAttribute::GLModeValue value
#
#[
/** GLMode is the value used in glEnable/glDisable(mode) */
typedef GLenum          GLMode;
/** GLModeValue is used to specify whether a mode is enabled (ON) or disabled (OFF).
  * GLMoveValue is also used to specify the override behavior of modes from parent to children.
  * See enum Value description for more details.*/
typedef unsigned int    GLModeValue;
/** Override is used to specify the override behavior of StateAttributes
  * from parent to children.
  * See enum Value description for more details.*/
typedef unsigned int    OverrideValue;

/** list values which can be used to set either GLModeValues or OverrideValues.
  * When using in conjunction with GLModeValues, all Values have meaning.
  * When using in conjunction with StateAttribute OverrideValue only
  * OFF,OVERRIDE and INHERIT are meaningful.
  * However, they are useful when using GLModeValue
  * and OverrideValue in conjunction with each other as when using
  * StateSet::setAttributeAndModes(..).*/
]#



proc setVertexArray*(geom:GeometryRef; vertices:Vec3ArrayRef)  {.cdecl, 
    importcpp: "#->setVertexArray(#)", header: "<osg/Array>".}

proc setColorArray*(geom:GeometryRef; colors:Vec4ArrayRef)  {.cdecl, 
    importcpp: "#->setColorArray(#)", header: "<osg/Array>".}


proc getOrCreateStateSet*(geom:GeometryRef): StateSetObj {.cdecl, 
    importcpp: "#->getOrCreateStateSet()".}# header: "<osg/Array>".}


type
  AttributeBinding = enum
    BIND_OFF=0,
    BIND_OVERALL=1,
    BIND_PER_PRIMITIVE_SET=2,
    BIND_PER_VERTEX=4

proc setColorBinding(geom:GeometryRef; ab: AttributeBinding) {.cdecl, 
    importcpp: "#->setColorBinding(#)".}

#

type
  PrimitiveSetObj {.importcpp: "osg::PrimitiveSet",
            header: "<osg/PrimitiveSet>", bycopy.} = object 

proc addPrimitiveSet*(geom:GeometryRef; primitiveset: PrimitiveSetObj ): bool {.cdecl, 
    importcpp: "#->addPrimitiveSet(#)".}

type
  DrawArraysObj {.importcpp: "osg::DrawArrays",
            header: "<osg/PrimitiveSet>", bycopy.} = object 



type
  Mode = enum
    POINTS = GL_POINTS,
    LINES = GL_LINES,
    LINE_STRIP = GL_LINE_STRIP,
    #LINE_LOOP = GL_LINE_LOOP,
    TRIANGLES = GL_TRIANGLES,
    TRIANGLE_STRIP = GL_TRIANGLE_STRIP,
    TRIANGLE_FAN = GL_TRIANGLE_FAN,
    QUADS = GL_QUADS,
    QUAD_STRIP = GL_QUAD_STRIP,
    POLYGON = GL_POLYGON,
    LINES_ADJACENCY = GL_LINES_ADJACENCY,
    LINE_STRIP_ADJACENCY = GL_LINE_STRIP_ADJACENCY,
    TRIANGLES_ADJACENCY = GL_TRIANGLES_ADJACENCY,
    TRIANGLE_STRIP_ADJACENCY = GL_TRIANGLE_STRIP_ADJACENCY,
    PATCHES = GL_PATCHES  


converter toGLenum(val:Mode): GLenum =
  val.GLenum

converter toGLsizei(val:int): GLsizei =
  val.GLsizei
#new osg::DrawArrays(osg::PrimitiveSet::TRIANGLES, 0, vertices->size())

# GLint first, GLsizei count, 
proc newDrawArrays*(mode: GLenum; first: GLint; count: GLsizei): PrimitiveSetObj {.
    importcpp: "(new osg::DrawArrays(@))", header: "<osg/PrimitiveSet>".}

type
  Values = enum
    OFF = 0x0
    ON  = 0x1

converter toGLModeValue(val:Values): GLModeValue =
  val.GLModeValue
#[
          enum Values
        {
            /** means that associated GLMode and Override is disabled.*/
            OFF          = 0x0,
            /** means that associated GLMode is enabled and Override is disabled.*/
            ON           = 0x1,
            /** Overriding of GLMode's or StateAttributes is enabled, so that state below it is overridden.*/
            OVERRIDE     = 0x2,
            /** Protecting of GLMode's or StateAttributes is enabled, so that state from above cannot override this and below state.*/
            PROTECTED    = 0x4,
            /** means that GLMode or StateAttribute should be inherited from above.*/
            INHERIT      = 0x8
]#

# Viewer
type
  ViewerObj {.importcpp: "osgViewer::Viewer",
            header: "<osgViewer/Viewer>", bycopy.} = object 

proc setSceneData*(viewer:ViewerObj; geode:GeodeRef)  {.cdecl, 
    importcpp: "#.setSceneData(#)", header: "<osgViewer/Viewer>".}


proc run*(viewer:ViewerObj) {.cdecl, 
    importcpp: "#.run()", header: "<osgViewer/Viewer>".}

# ==============================
proc main =
  # Create the geometry which will define the triangle
  #osg::ref_ptr<osg::Geometry> myTriangleGeometry = new osg::Geometry
  var myTriangleGeometry:GeometryRef = newGeometryRef()#cnew GeometryObj.init() #newGeometryRef()#newRef( cnew newGeometry() ) #newGeometryRef() #newGeometry

  # Define the triangle's 3 vertices
  # osg::ref_ptr<osg::Vec3Array> vertices = new osg::Vec3Array;
  var vertices:Vec3ArrayRef = newVec3ArrayRef()
  # vertices->push_back(osg::Vec3(0, 0, 0));
  # vertices->push_back(osg::Vec3(100, 0, 0));
  # vertices->push_back(osg::Vec3(0, 0, 100));
  vertices.pushBack( newVec3(0.0,0.0,0.0) )
  vertices.pushBack( newVec3(100.0,0.0,0.0) )
  vertices.pushBack( newVec3(0.0,0.0,100.0) )  
  # myTriangleGeometry->setVertexArray(vertices);
  myTriangleGeometry.setVertexArray( vertices )


  # You can give each vertex its own color, but let's just make it green for now
  # osg::ref_ptr<osg::Vec4Array> colors = new osg::Vec4Array;
  var colors = newVec4ArrayRef()
  # colors->push_back(osg::Vec4(0, 1.0, 0, 1.0)); // RGBA for green
  colors.pushBack( newVec4(0.0,1.0,0.0,1.0) ) # RGBA for green
  # myTriangleGeometry->setColorArray(colors);
  myTriangleGeometry.setColorArray(colors)
  # myTriangleGeometry->setColorBinding(osg::Geometry::BIND_OVERALL);
  myTriangleGeometry.setColorBinding(BIND_OVERALL)


  # // Turn off lighting
  # myTriangleGeometry->getOrCreateStateSet()->setMode(GL_LIGHTING, osg::StateAttribute::OFF);
  myTriangleGeometry.getOrCreateStateSet.setMode(GL_LIGHTING, OFF)

  # // Turn on blending
  # myTriangleGeometry->getOrCreateStateSet()->setMode(GL_BLEND, osg::StateAttribute::ON);
  myTriangleGeometry.getOrCreateStateSet.setMode(GL_BLEND, ON)

  # // Define the geometry type as 'triangles'
  # myTriangleGeometry->addPrimitiveSet(new osg::DrawArrays(osg::PrimitiveSet::TRIANGLES, 0, vertices->size()));
  discard myTriangleGeometry.addPrimitiveSet( newDrawArrays(TRIANGLES, 0, vertices.size() ) )
  # Finally, let's add our triangle to a geode
  # osg::ref_ptr<osg::Geode> myGeode = new osg::Geode;
  var myGeode = newGeode()
  # myGeode->addDrawable(myTriangleGeometry);
  myGeode.addDrawable(myTriangleGeometry)

  # // And now we can create a viewer to look at our geode
  # osgViewer::Viewer viewer;
  var viewer:ViewerObj
  # viewer.setSceneData(myGeode);
  viewer.setSceneData(myGeode)
  # return viewer.run();
  viewer.run()

main()



#[
// g++ -losg -losgViewer -I/usr/include/osg ex01.cpp
#include <osg/Referenced>
#include <osg/Geometry>
#include <osg/Geode>
#include <osg/Array>
#include <osgViewer/Viewer>

int main(int argc, char** argv)
{







}
]#