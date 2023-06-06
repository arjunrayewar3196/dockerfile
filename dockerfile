FROM centos:7

# Install Git
RUN yum install -y git

# Install Python
RUN yum install -y python

# Install Java 11
RUN yum install -y java-11-openjdk

# Set the default Java version
#RUN alternatives --set java /usr/lib/jvm/java-11-openjdk-$(arch)/bin/java

# Add environment variables (optional)
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=$PATH:$JAVA_HOME/bin

# Set the working directory (optional)
WORKDIR /app

# Add your application files (if needed)

# Specify the default command to run when the container starts (optional)
CMD ["/bin/bash"]
