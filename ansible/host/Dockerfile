# HOST image - used to create containers to be managed by master

# use builded ansible_base (defined in ../base/Dockerfile) as a starting point
FROM ansible_base:latest

# set workdir to /var
WORKDIR /var/

# copy script from local disk to file system inside Docker image
COPY run.sh .

# remove carriage returns in case we are building on Windows
RUN sed -i -e 's/\r$//' run.sh

# adjust file permissions to make run.sh executable
RUN chmod 755 run.sh
