# dockerfile-imx-yocto-sdk
Dockerfile to create an Ubuntu 18 image containing an i.MX Yocto SDK.

The .sh files (generated via bitbake -c populate_sdk) found in the same directory when building the image will be added to the image. It is recommended to use just one SDK per container image.

Due to the size of the SDKs the resulting image will be large.
