import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

class InputReader {
    private final BufferedReader in;
    private StringTokenizer stringTokenizer;

    public InputReader(InputStream inputStream) {
        in = new BufferedReader(new InputStreamReader(inputStream));
    }

    private String next() {
        while (stringTokenizer == null || !stringTokenizer.hasMoreElements()) {
            try {
                stringTokenizer = new StringTokenizer(in.readLine());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return stringTokenizer.nextToken();
    }

    public String nextString() {
        try {
            return in.readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int nextInt() {
        return Integer.parseInt(next());
    }
}
