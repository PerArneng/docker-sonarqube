FROM sonarqube:6.2
MAINTAINER Per Arneng

RUN cd /opt/sonarqube && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.8.zip && \
    unzip sonar-scanner-2.8.zip && \
    ln -s sonar-scanner-2.8 sonar-scanner && \
    rm sonar-scanner-2.8.zip && \
    echo "export PATH=\$PATH:/opt/sonarqube/sonar-scanner/bin" > ~/.bashrc
