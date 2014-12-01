package TraceAspect.lang.runtime;

/*Generated by MPS */


public class Tracer {
  public static <T> T traceAssignment(String name, T value) {
    System.out.println("assignment to " + name + " value = " + value);
    return value;
  }



  public static <T> T traceCall(T operand, String operandName, String methodName) {
    System.out.println("calling method '" + methodName + "' from object '" + operandName + "'");
    return operand;
  }



  public static <T> T traceConstructor(T creator, String objectName, String typeName) {
    System.out.println("creating object '" + objectName + "' of type '" + typeName + "'");
    return creator;
  }
}