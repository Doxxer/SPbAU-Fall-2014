#include <vector>
using std::vector;
#include <string>
using std::string;
#include <fstream>
using std::ifstream;
#include <iostream>
using std::cerr;
using std::endl;
#include <chrono>
namespace chrono = std::chrono;
#include <memory>
using std::unique_ptr;

#include <gl/glew.h>
#include <gl/freeglut.h>

#include <AntTweakBar.h>

#include <glm/glm.hpp>
#include <glm/ext.hpp>
using namespace glm;

#include "shader.h"

void TW_CALL toggle_fullscreen_callback( void * )
{
   glutFullScreenToggle();
}

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

class sample_t
{
public:
   sample_t();
   ~sample_t();

   void init_buffer();
   void init_vertex_array();
   void draw_frame( float time_from_start );

private:
   bool wireframe_;
   GLuint vs_, fs_, program_;
   GLuint vx_buf_;
   GLuint vao_;
   quat   rotation_by_control_;
};

sample_t::sample_t()
   : wireframe_(false)
{
   //TwInit(TW_OPENGL_CORE, NULL);
   TwInit(TW_OPENGL, NULL);

   TwBar *bar = TwNewBar("Parameters");
   TwDefine(" Parameters size='500 100' color='70 100 120' valueswidth=220 iconpos=topleft");

   TwAddVarRW(bar, "Wireframe mode", TW_TYPE_BOOLCPP, &wireframe_, " true='ON' false='OFF' key=w");

   TwAddButton(bar, "Fullscreen toggle", toggle_fullscreen_callback, NULL,
               " label='Toggle fullscreen mode' key=f");

   TwAddVarRW(bar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control_,
              " label='Object orientation' opened=true help='Change the object orientation.' ");

   vs_ = create_shader(GL_VERTEX_SHADER  , "0.glslvs");
   fs_ = create_shader(GL_FRAGMENT_SHADER, "0.glslfs");
   program_ = create_program(vs_, fs_);
   init_buffer();
   init_vertex_array();
}

sample_t::~sample_t()
{
   glDeleteProgram(program_);
   glDeleteShader(vs_);
   glDeleteShader(fs_);
   glDeleteVertexArrays(1, &vao_);
   glDeleteBuffers(1, &vx_buf_);

   TwDeleteAllBars();
   TwTerminate();
}

void sample_t::init_buffer()
{
   glGenBuffers(1, &vx_buf_);
   glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);
   vec2 const data[3] = 
   {
        vec2(0, 0)
      , vec2(1, 0)
      , vec2(1, 1)
   };

   glBufferData(GL_ARRAY_BUFFER, sizeof(vec2) * 3, data, GL_STATIC_DRAW);
}

void sample_t::init_vertex_array()
{
   glGenVertexArrays(1, &vao_);
   glBindVertexArray(vao_);
      glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);

      GLuint const pos_location = glGetAttribLocation(program_, "in_pos");
      glVertexAttribPointer(pos_location, 2, GL_FLOAT, GL_FALSE, sizeof(vec2), 0);
      glEnableVertexAttribArray(0);
   glBindVertexArray(0);
}

void sample_t::draw_frame( float time_from_start )
{
   float const rotation_angle = time_from_start * 360;

   float const w                = (float)glutGet(GLUT_WINDOW_WIDTH);
   float const h                = (float)glutGet(GLUT_WINDOW_HEIGHT);
   mat4  const proj             = perspective(45.0f, w / h, 0.1f, 100.0f);
   mat4  const view             = lookAt(vec3(0, 0, 8), vec3(0, 0, 0), vec3(0, 1, 0));
   quat  const rotation_by_time = quat(vec3(radians(rotation_angle), 0, 0));
   mat4  const modelview        = view * mat4_cast(rotation_by_control_ * rotation_by_time);
   mat4  const mvp              = proj * modelview;

   if (wireframe_)
      glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
   else
      glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

   glDisable(GL_CULL_FACE);
   glDisable(GL_DEPTH_TEST);
   glClearColor(0.2f, 0.2f, 0.2f, 1);
   glClearDepth(1);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

   glUseProgram(program_);

   GLuint const mvp_location = glGetUniformLocation(program_, "mvp");
   glUniformMatrix4fv(mvp_location, 1, GL_FALSE, &mvp[0][0]);

   glBindVertexArray(vao_);

   glDrawArrays(GL_TRIANGLES, 0, 3);
}

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

unique_ptr<sample_t> g_sample;

void display_func()
{
   static chrono::system_clock::time_point const start = chrono::system_clock::now();

   g_sample->draw_frame(chrono::duration<float>(chrono::system_clock::now() - start).count());

   TwDraw();

   glutSwapBuffers();
}

void idle_func()
{
   glutPostRedisplay();
}

void keyboard_func( unsigned char button, int x, int y )
{
   if (TwEventKeyboardGLUT(button, x, y))
      return;

   switch(button)
   {
   case 27:
     // g_sample.reset();
      exit(0);
   }
}

void reshape_func(int width, int height)
{
   if (width <= 0 || height <= 0)
      return;
   glViewport(0, 0, width, height);
   TwWindowSize(width, height);
}

// Clear all OpenGL resources while rendering context is still active
void close_func()
{
   g_sample.reset();
}

// void APIENTRY gl_debug_proc(  GLenum         //source
//                               , GLenum         type
//                               , GLuint         //id
//                               , GLenum         //severity
//                               , GLsizei        //length
//                               , GLchar const * message
//                               , GLvoid const * //user_param
//                                 )
// {
//    if (type == GL_DEBUG_TYPE_ERROR_ARB)
//    {
//       cerr << message << endl;
//       exit(1);
//    }
// }

int main( int argc, char ** argv )
{
   size_t const width  = 800;
   size_t const height = 800;

   glutInit               (&argc, argv);
   glutInitWindowSize     (width, height);
   glutInitDisplayMode    (GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH);
   glutInitContextVersion (3, 3);
   glutInitContextFlags   (GLUT_FORWARD_COMPATIBLE | GLUT_DEBUG);
   //glutInitContextProfile (GLUT_CORE_PROFILE);
   glutInitContextProfile (GLUT_COMPATIBILITY_PROFILE );
   int wnd = glutCreateWindow       ("OpenGL basic sample");

   glewExperimental = GL_TRUE;
   if (glewInit() != GLEW_OK)
   {
      cerr << "GLEW init failed" << endl;
      return 1;
   }

   if (!GLEW_VERSION_3_3)
   {
      cerr << "OpenGL 3.3 not supported" << endl;
      return 1;
   }

   //glutDestroyWindow(wnd);
   //glutInitContextProfile(GLUT_CORE_PROFILE);
   //glutCreateWindow       ("OpenGL basic sample");


   glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB);
   // glDebugMessageCallbackARB(gl_debug_proc, NULL);
   glDebugMessageControlARB(GL_DONT_CARE, GL_DONT_CARE           , GL_DONT_CARE, 0, NULL, false);
   glDebugMessageControlARB(GL_DONT_CARE, GL_DEBUG_TYPE_ERROR_ARB, GL_DONT_CARE, 0, NULL, true );

   glutReshapeFunc(reshape_func);
   glutDisplayFunc(display_func);
   glutIdleFunc   (idle_func   );
   glutCloseFunc  (close_func  );
   glutKeyboardFunc(keyboard_func);

   glutMouseFunc        ((GLUTmousebuttonfun)TwEventMouseButtonGLUT);
   glutMotionFunc       ((GLUTmousemotionfun)TwEventMouseMotionGLUT);
   glutPassiveMotionFunc((GLUTmousemotionfun)TwEventMouseMotionGLUT);
   glutSpecialFunc      ((GLUTspecialfun    )TwEventSpecialGLUT    );
   TwGLUTModifiersFunc  (glutGetModifiers);

   try
   {
      g_sample.reset(new sample_t());
      glutMainLoop();
   }
   catch( std::exception const & except )
   {
      std::cout << except.what() << endl;
      return 1;
   }

   return 0;
}
