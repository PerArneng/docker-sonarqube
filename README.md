
# SonarQube + SonarScanner
This is an image that extends from the official sonarqube image but it also
ads the sonar-scanner tool. You can mount a local directory and
run the scanner within the container.

## Usage

*Starting the docker image:*
```
$ docker run -ti --name sonarqube -p 9000:9000 -p 9092:9092 -v .:/currentdir perarneng/sonarqube:6.2
```
*Executing the sonar-scanner:*
```
$ docker exec -ti sonarqube /bin/bash
$ cd /currentdir
$ sonar-scanner
```

# Viewing The Reports
```
http://localhost:9000
```