FROM kalilinux/kali-rolling

# Install necessary tools
RUN apt-get update && apt-get install -y \
    kali-linux-top10 \
    net-tools \
    iputils-ping \
    && apt-get clean

# Expose the desired port (e.g., 8080)
EXPOSE 8080

CMD ["bash"]
