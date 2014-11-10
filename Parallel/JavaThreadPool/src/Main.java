public class Main {

    public static void main(String[] args) {
        ThreadPool threadPool = new ThreadPool(4, 5);

        threadPool.add(() -> {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ignored) {
            }
            return 0;
        });

    }
}
