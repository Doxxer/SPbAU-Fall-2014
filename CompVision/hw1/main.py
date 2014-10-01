import cv2


def show_image(window_title, image):
    cv2.imshow(window_title, image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


image_filename = "text.bmp"
source_image = cv2.imread(image_filename, cv2.IMREAD_GRAYSCALE)

gaussian_kernel_size = 3
blurred_image = cv2.GaussianBlur(source_image, (gaussian_kernel_size, gaussian_kernel_size), 0)
cv2.imwrite("{0}x{0}_blurred.bmp".format(str(gaussian_kernel_size)), blurred_image)

laplacian = cv2.Laplacian(blurred_image, cv2.CV_32F)
cv2.imwrite("{0}x{0}_laplacian.png".format(str(gaussian_kernel_size)), laplacian)

_, result_image = cv2.threshold(laplacian, 0, 255, cv2.THRESH_BINARY)
cv2.imwrite("{0}x{0}_result_image.bmp".format(str(gaussian_kernel_size)), result_image)

show_image("result", result_image)