# Choosing the SO
FROM centos:7

# Install GCC(C Compiler).
RUN yum -y -q update
RUN yum install -y gcc

# Copy specific files from machine to docker image.
COPY run_example /app/run_example
COPY terminal.c /app/terminal.c

# Setting Wokspace Directory
WORKDIR /app

# Generating Compiled Terminal.
RUN gcc terminal.c -o ./terminal

# Running Terminal
ENTRYPOINT ./terminal