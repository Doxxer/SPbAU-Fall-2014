/**
 * User task class. Emulates hard work
 * <p>
 * Created by Turaev Timur on 09.11.14.
 */
class UserTask implements Runnable {
    private final int duration;

    /***
     * Creates long-time user task
     * @param duration task duration in seconds
     */
    public UserTask(int duration) {
        this.duration = duration;
    }

    @Override
    public void run() {
        try {
            Thread.sleep(duration * 1000);
        } catch (InterruptedException ignored) {
        }
    }
}
