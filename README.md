# opencl2.0-intel-cpu

A Docker container with the
[Intel OpenCL 2.0 CPU Runtime 16.1.1](https://software.intel.com/en-us/articles/opencl-drivers#latest_CPU_runtime)
and OpenCL 2.0 header files. Containers with header files from Intel and the Khronos Group are available.

# Using from Docker Hub

For the Intel headers:

    docker run -it cwpearson/opencl2.0-intel-cpu:latest bash -c clinfo

For the Khronos Group headers:

    docker run -it cwpearson/opencl2.0-intel-cpu:khronos-headers bash -c clinfo

You should see a dump of information about the OpenCL capabilities of your system.

# Building for Yourself
Depending on which Docker file you'd like to build.

    docker build -t your_tag_here -f Dockerfile.intel_headers
    docker build -t your_tag_here -f Dockerfile.khronos_headers