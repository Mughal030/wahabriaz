# Use the official Ubuntu base image
FROM ubuntu:latest

# Install necessary dependencies for Parrot Security OS and expose port 8080 for preview
RUN apt-get update && apt-get install -y virtualbox
EXPOSE 8080

# Set up a script to download and install Parrot Security OS within the container
COPY install_parrot.sh /tmp/install_parrot.sh
RUN chmod +x /tmp/install_parrot.sh
RUN /tmp/install_parrot.sh

# Set up entrypoint
CMD ["sh", "-c", "python3 -m http.server 8080"]
install_parrot.sh:
#!/bin/bash

# Download the Parrot Security OS ISO file
wget -q "https://download.parrot.sh/iso/latest/parrot-security-4.11_amd64.iso" -O /tmp/parrot-security-4.11_amd64.iso

# Execute installation commands for setting up Parrot Security OS within the container
# Include installation commands specific to setting up Parrot Security OS
