FROM centos:7

# Get pre-reqs
RUN yum -y -q update && \
    yum -y -q install wget epel-release && \
    yum -y -q clean all
    yum -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*

COPY program /app/
COPY run_example/* /app/run_example/

WORKDIR /app

RUN ./program