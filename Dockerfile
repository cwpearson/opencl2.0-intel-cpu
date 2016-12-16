FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y alien wget unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Download the Intel OpenCL 2.0 stack
RUN export DEVEL_URL="https://software.intel.com/file/531197/download" \
    && wget ${DEVEL_URL} -O download.zip --no-check-certificate \
    && unzip download.zip \
    && rm -f download.zip *.tar.xz* \
    && alien --to-deb *.rpm \
    && dpkg -i *.deb \
    && rm *.rpm *.deb

# Let the system know where to find the OpenCL library at runtime
ENV LD_LIBRARY_PATH /opt/intel/opencl
