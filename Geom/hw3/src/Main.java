import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

class Main {
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
        polygon.addPoint(polygon.getPoint(0));
        int n = reader.nextInt();
        for (int i = 0; i < n; i++) {
            Point p = readPoint(0);
            System.out.printf("%d %d\n", polygon.leftmostTangentPoint(p), polygon.rightmostTangentPoint(p));
        }
    }

    private void initialize(String[] args) throws FileNotFoundException {
        InputStream inputStream = args.length > 0 ? new FileInputStream(args[0]) : System.in;
        reader = new InputReader(inputStream);
    }

    private Polygon readPolygon() {
        Polygon polygon = new Polygon();
        int n = reader.nextInt();
        for (int i = 0; i < n; i++) {
            polygon.addPoint(readPoint(i));
        }
        return polygon;
    }

    private Point readPoint(int index) {
        String[] split = reader.nextString().replaceAll("[ ()]", "").split(",");
        return new Point(Long.parseLong(split[0]), Long.parseLong(split[1]), index);
    }
}
