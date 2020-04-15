
 # Owasp Sonarqube
It's a platform for evaluate quality from source code and detect issues based in Owasp Top 10.


<img src="https://github.com/fluidicon.png" width=30 align=left>[Github Repository](https://github.com/mvits/sonarqube)


## Installation
```
docker run --name sonarqube-owasp -p 9000:9000 mvits/owasp-sonarqube
```
## Installation with database 
### PostgreSql
```
docker network create network-sonarqube
docker run --name sonarqube-db -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -d -p 5432:5432 --net network-sonarqube postgres
docker run --name sonarqube -p 9000:9000 -e SONARQUBE_JDBC_URL=jdbc:postgresql://sonarqube-db:5432/sonar -d --net network-sonarqube mvits/owasp-sonarqube
```
The project contains:

#### Sonarqube
- Sonarqube version 7.9.3

#### Plugins
- Git Version 1.12.0.2002
- SVN Version 1.10.0.1905
- Java Version 6.4.0.21609
- Javascritp Version 6.3.0.12149
- Typescript Version 2.1.0.4362
- PHP Version 3.3.0.5297
- Python Version 2.9.0.6368
- C# Version 8.7.0.16728
- XML Version 2.1.0.2440
- Find Bugs Version 4.0.0
- Dependency Check Version 2.0.4
- Auth Oidc Version 2.0.0
- Softvis3d Version 1.1.0

This project is based in [Owasp/SonarQube](https://hub.docker.com/r/owasp/sonarqube) and [community version from Sonarqube](https://www.sonarqube.org/)

###### Fork from Proyect: [OWASP SonarQube Project](https://github.com/OWASP/sonarqube)
