FROM jzmatrix/debian12_base_image:latest
################################################################################
RUN apt update && \
    apt -y upgrade && \
    apt -y install wireshark tcpdump
################################################################################
CMD ["tcpdump", "-i", "any", "-w", "/tmp/traffic.cap"]