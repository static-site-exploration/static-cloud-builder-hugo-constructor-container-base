#FROM gcr.io/static-cloud-builders/hugo
FROM alpine

# Directories are setup in the base image
ARG container_package_dir="/localspace/package"
ARG container_dist_dir="/localspace/dist"
ARG builder_package_dir=""

RUN mkdir -p ${container_package_dir}
RUN mkdir -p ${container_dist_dir}

RUN ls /localspace

COPY .${builder_package_dir} ${container_package_dir}

WORKDIR /

RUN ls ${container_package_dir}
