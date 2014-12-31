#ifndef IRENDEROBJECT_HPP
#define IRENDEROBJECT_HPP

struct IRenderObject {
    virtual void render() = 0;

    virtual ~IRenderObject() {
    }
};

#endif /* end of include guard: IRENDEROBJECT_HPP */

