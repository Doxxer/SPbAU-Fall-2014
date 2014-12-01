package TraceAspect.lang.runtime;

/*Generated by MPS */

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.MessageFormat;
import java.util.Date;

public class Tracer {
  private static boolean showTime = true;
  private static DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");


  private static void log(String message) {
    if (Tracer.showTime) {
      System.out.print(MessageFormat.format("[{0}]: ", dateFormat.format(new Date())));
    }
    System.out.println(MessageFormat.format("{0}", message));
  }



  public static <T> T traceAssignment(String name, T value) {
    log(MessageFormat.format("assignment to ''{0}'' value = ''{1}''", name, value));
    return value;
  }



  public static <T> T traceCall(T operand, String operandName, String methodName) {
    log(MessageFormat.format("calling method ''{0}'' from object ''{1}''", methodName, operandName));
    return operand;
  }



  public static <T> T traceConstructor(T creator, String objectName, String typeName) {
    log(MessageFormat.format("creating object ''{0}'' of type ''{1}''", objectName, typeName));
    return creator;
  }



  public static void traceVoidReturn(String methodName) {
    log(MessageFormat.format("returning (implicit) from method ''{0}''", methodName));
  }



  public static <T> T traceNonVoidReturn(String methodName, T returnValue) {
    log(MessageFormat.format("returning (explicit) from method ''{0}'' with value = ''{1}''", methodName, returnValue.toString()));
    return returnValue;
  }



  public static void setFormatShowTime(boolean showTime) {
    Tracer.showTime = showTime;
  }
}
