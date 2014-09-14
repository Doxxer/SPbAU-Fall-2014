import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class Main {
    private InputReader reader;

    public static void main(String[] args) {
        new Main().solve(args);
    }

    private void solve(String[] args) {
        try {
            initialize(args);
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

        Polygon polygon = readPolygon();
        int testCount = reader.nextInt();

        for (int i = 0; i < testCount; i++) {
            switch (polygon.getPointLocation(readPoint())) {
                case Inside:
                case Bound:
                    System.out.println("YES");
                    break;
                case Outside:
                    System.out.println("NO");
                    break;
            }
        }
    }

    private void initialize(String[] args) throws FileNotFoundException {
        InputStream inputStream = args.length > 0 ? new FileInputStream(args[0]) : System.in;
        reader = new InputReader(inputStream);
    }

    private Point readPoint() {
        String[] split = reader.nextString().replaceAll("[,()]", "").split(" ");
        return new Point(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
    }

    private Polygon readPolygon() {
        Polygon polygon = new Polygon();
        int n = reader.nextInt();
        for (int i = 0; i < n; i++) {
            polygon.addPoint(readPoint());
        }
        return polygon;
    }
}
