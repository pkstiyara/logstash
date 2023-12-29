#!/bin/bash

# Define variables
LOGSTASH_VERSION="8.11.3"
tarball_url="https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VERSION}-linux-x86_64.tar.gz"
install_dir="/apps/logstash"

# Create directory if not exists
sudo mkdir -p "$install_dir"

# Download Logstash tarball
wget "$tarball_url" -P /tmp

# Extract Logstash to the installation directory
sudo tar -xzf "/tmp/logstash-${LOGSTASH_VERSION}-linux-x86_64.tar.gz" -C "$install_dir" --strip-components=1

# Optional: Set environment variables or add to PATH
# export LOGSTASH_HOME="$install_dir"
# export PATH="$LOGSTASH_HOME/bin:$PATH"

# Optional: Create a symbolic link to simplify future updates
# sudo ln -s "$install_dir" /opt/logstash

# Clean up
rm -rf "/tmp/logstash-${LOGSTASH_VERSION}-linux-x86_64.tar.gz"

# Display completion message
echo "Logstash ${LOGSTASH_VERSION} has been installed to ${install_dir}."
