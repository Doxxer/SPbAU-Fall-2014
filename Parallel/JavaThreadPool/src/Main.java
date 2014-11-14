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
        commands();

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
                    commands();
            }
        }
    }

    private static Stream<Integer> parseIntegerParams(String[] params) {
        return Arrays.stream(params).skip(1).filter(Main::isNumber).map(Integer::parseInt);
    }

    private static void removeTask(Integer ID) {
        threadPool.remove(ID);
        System.out.println(MessageFormat.format("removed task #{0}", ID));
    }

    private static void addTask(Integer length) {
        Tuple<Integer, Future<Integer>> task = threadPool.add(() -> {
            try {
                Thread.sleep(1000 * length);
            } catch (InterruptedException ignored) {
            }
            return 0;
        });
        System.out.println(MessageFormat.format("added task #{0}", task._1));
    }

    private static boolean isNumber(String s) {
        try {
            Integer.parseInt(s);
            return true;
        } catch (NumberFormatException ignored) {
            return false;
        }
    }

    private static void usage() {
        System.out.println("Usage: make run <hot threads count> <idle timeout>");
    }

    private static void commands() {
        System.out.println("use follow commands:");
        System.out.println("add [<time in seconds>, ...] - add to thread poll list of tasks");
        System.out.println("remove [IDs, ...] - remove from thread poll list of tasks (by their IDs)");
        System.out.println("exit - shutdown thread pool");
        System.out.println("help - view this");
    }

    private static Tuple<Integer, Integer> parseParams(String[] args) {
        if (args.length != 2) {
            return null;
        }
        try {
            return new Tuple<>(Integer.parseInt(args[0]), Integer.parseInt(args[1]));
        } catch (NumberFormatException ex) {
            return null;
        }
    }
}
