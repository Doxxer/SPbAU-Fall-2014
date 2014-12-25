import cv2
import numpy as np

from read_mnist import load_mnist


SZ = 28
bin_n = 16


def hog(img):
    gx = cv2.Sobel(img, cv2.CV_32F, 1, 0)
    gy = cv2.Sobel(img, cv2.CV_32F, 0, 1)
    mag, ang = cv2.cartToPolar(gx, gy)

    bins = np.int32(bin_n * ang / (2 * np.pi))

    # Divide to 4 sub-squares
    bin_cells = bins[:10, :10], bins[10:, :10], bins[:10, 10:], bins[10:, 10:]
    mag_cells = mag[:10, :10], mag[10:, :10], mag[:10, 10:], mag[10:, 10:]
    hists = [np.bincount(b.ravel(), m.ravel(), bin_n) for b, m in zip(bin_cells, mag_cells)]
    hist = np.hstack(hists)
    return hist


def show_image(window_title, img):
    cv2.imshow(window_title, img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


if __name__ == "__main__":
    images, labels = load_mnist(dataset="testing", path="/Users/doxer/Documents/mnist")
    image = images[0]

    print hog(image)