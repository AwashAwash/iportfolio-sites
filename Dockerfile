FROM jenkins/jenkins:lts-jdk17

USER root

# Install Docker CLI (so pipelines can run docker build/push)
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

USER jenkins

# Copy the plugin list & install all plugins during build
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
