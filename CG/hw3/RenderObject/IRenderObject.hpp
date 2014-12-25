#ifndef IRENDEROBJECT_HPP
#define IRENDEROBJECT_HPP

#include <GL/glew.h>

struct IRenderObject {
    virtual void render() = 0;

    virtual void setMatrices(GLfloat *, GLfloat *, GLfloat *, GLfloat *, GLfloat *, GLfloat *) = 0;

    virtual void setTextureParams(GLfloat uvMultiplier, bool mipmap) = 0;

    virtual void setLightParams(GLfloat *lightDirection,
            GLfloat *lightColor, GLfloat *specularColor,
            GLfloat ambientPower, GLfloat diffusePower, GLfloat specularPower) = 0;

    virtual ~IRenderObject() {
    }
};

#endif /* end of include guard: IRENDEROBJECT_HPP */

