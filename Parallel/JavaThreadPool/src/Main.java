import java.text.MessageFormat;
import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.Stream;

public class Main {
    private static ThreadPool threadPool;

    public static void main(String[] args) {
        Tuple<Integer, Integer> params = parseParams(args);
        if (params == null) {
            usage();
            System.exit(1);
        }
        threadPool = new ThreadPool(params._1, params._2);
        Runtime.getRuntime().addShutdownHook(new Thread(threadPool::shutdown));
        runInterpreter();
    }

    private static void runInterpreter() {
        showHelp();

        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.print("> ");
            String[] commands = scanner.nextLine().toLowerCase().split(" ");
            if (commands.length < 1) continue;

            String command = commands[0];
            switch (command) {
                case "add":
                    parseIntegerParams(commands).forEach(Main::addTask);
                    break;
                case "remove":
                    parseIntegerParams(commands).forEach(Main::removeTask);
                    break;
                case "exit":
                    threadPool.shutdown();
                    return;
                case "help":
                    showHelp();
            }
        }
    }

    private static Stream<Integer> parseIntegerParams(String[] params) {
        return Arrays.stream(params).skip(1).filter(Main::isValidNumber).map(Integer::parseInt).limit(1);
    }

    private static void removeTask(Integer ID) {
        threadPool.removeTask(ID);
        System.out.println(MessageFormat.format("removed task with ID = #{0}", ID));
    }

    private static void addTask(Integer duration) {
        Integer ID = threadPool.addTask(new UserTask(duration));
        System.out.println(MessageFormat.format("added task with ID = #{0}", ID));
    }

    private static boolean isValidNumber(String s) {
        try {
            return Integer.parseInt(s) >= 0;
        } catch (NumberFormatException ignored) {
            return false;
        }
    }

    private static void usage() {
        System.out.println("Usage: make run <hot threads count> <idle timeout>");
    }

    private static void showHelp() {
        System.out.println("usage:");
        System.out.println("add <time in seconds> - add task to thread poll ");
        System.out.println("remove <ID> - remove task from thread poll (by its ID)");
        System.out.println("exit - shutdown thread pool");
        System.out.println("help - view this");
    }

    private static Tuple<Integer, Integer> parseParams(String[] args) {
        if (args.length != 2) {
            return null;
        }
        try {
            return new Tuple<>(Integer.parseInt(args[0]), Integer.parseInt(args[1]));
        } catch (RuntimeException ex) {
            return null;
        }
    }

    private static class Tuple<T, U> {
        final T _1;
        final U _2;

        public Tuple(T arg1, U arg2) {
            this._1 = arg1;
            this._2 = arg2;
        }

        @Override
        public String toString() {
            return String.format("(%s, %s)", _1, _2);
        }
    }
}
