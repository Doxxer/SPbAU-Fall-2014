package TraceAspect.lang.sandbox;

/*Generated by MPS */

import TraceAspect.lang.runtime.Tracer;

public class MainClass {
  /*package*/ int n = 6;


  public MainClass() {
    Tracer.traceVoidReturn("MainClass", "false");
  }



  public MainClass(int v) {
    n = Tracer.traceAssignment("n", v, "true");
    Tracer.traceVoidReturn("MainClass", "false");
  }



  /*package*/ void justmethod() {
    n = Tracer.traceAssignment("n", n + 1, "true");
    n++;
    n += 3;
    Tracer.traceVoidReturn("justmethod", "false");
  }



  /*package*/ int assignments(String s) {
    int k;
    s = Tracer.traceAssignment("s", "test2", "true");
    n = Tracer.traceAssignment("n", k = Tracer.traceAssignment("k", 8, "true"), "true");
    this.n = Tracer.traceAssignment("MainClass.n", 19, "true");
    k = Tracer.traceAssignment("k", n + Tracer.traceCall(s, "s", "length", "false").length(), "true");

    voidMethod();

    return Tracer.traceNonVoidReturn("assignments", 3232, "false");
  }



  /*package*/ void voidMethod() {
    Tracer.traceCall(System.out, "out", "println", "false").println("We're inside void method");
    Tracer.traceVoidReturn("voidMethod", "false");
  }



  public static void main(String[] args) {
    MainClass a = Tracer.traceConstructor(new MainClass(), "a", "MainClass", "false");
    Tracer.traceCall(a, "a", "assignments", "false").assignments("qwerty");

    MainClass b = Tracer.traceConstructor(new MainClass(142), "b", "MainClass", "false");
    Tracer.traceCall(b, "b", "voidMethod", "false").voidMethod();
    Tracer.traceVoidReturn("main", "false");
  }


}
