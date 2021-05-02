# dockerfile-ub18-imx6-yocto-sdks
Dockerfile to create an Ubuntu 18 image containing i.MX6 Yocto SDKs.

The .sh files (generated via bitbake -c populate_sdk) found in the same directory when building the image will be added to the image.

Due to the size of the SDKs the resulting image will be very large.
