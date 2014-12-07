#ifndef IRENDEROBJECT_HPP
#define IRENDEROBJECT_HPP

#include <GL/glew.h>

struct IRenderObject {
    virtual void render() = 0;

    virtual void setMatrices(GLfloat *model, GLfloat *view, GLfloat *proj, GLfloat *mvp) = 0;

    virtual ~IRenderObject() {
    }
};

#endif /* end of include guard: IRENDEROBJECT_HPP */

