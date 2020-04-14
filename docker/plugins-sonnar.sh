#!/bin/bash

SQ_GIT_VERSION=1.12.0.2002
SQ_SVN_VERSION=1.10.0.1905
SQ_JAVA_VERSION=6.4.0.21609
SQ_JS_VERSION=6.3.0.12149
SQ_TS_VERSION=2.1.0.4362
SQ_PHP_VERSION=3.3.0.5297
SQ_PY_VERSION=2.9.0.6368
SQ_CSHARP_VERSION=8.7.0.16728
SQ_XML_VERSION=2.1.0.2440
SQ_FINDSEC_VERSION=4.0.0
SQ_DPCHECK_VERSION=2.0.4
SQ_OIDC_VERSION=2.0.0
SQ_CITY_VERSION=1.1.0

mkdir plugins
cd plugins

wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/git/sonar-scm-git-plugin/$SQ_GIT_VERSION/sonar-scm-git-plugin-$SQ_GIT_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/svn/sonar-scm-svn-plugin/$SQ_SVN_VERSION/sonar-scm-svn-plugin-$SQ_SVN_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/java/sonar-java-plugin/$SQ_JAVA_VERSION/sonar-java-plugin-$SQ_JAVA_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/javascript/sonar-javascript-plugin/$SQ_JS_VERSION/sonar-javascript-plugin-$SQ_JS_VERSION.jar 
wget --no-verbose https://github.com/SonarSource/SonarTS/releases/download/2.1.0.4359/sonar-typescript-plugin-$SQ_TS_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/php/sonar-php-plugin/$SQ_PHP_VERSION/sonar-php-plugin-$SQ_PHP_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/python/sonar-python-plugin/$SQ_PY_VERSION/sonar-python-plugin-$SQ_PY_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/dotnet/sonar-csharp-plugin/$SQ_CSHARP_VERSION/sonar-csharp-plugin-$SQ_CSHARP_VERSION.jar 
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/xml/sonar-xml-plugin/$SQ_XML_VERSION/sonar-xml-plugin-$SQ_XML_VERSION.jar 
wget --no-verbose https://github.com/spotbugs/sonar-findbugs/releases/download/$SQ_FINDSEC_VERSION/sonar-findbugs-plugin-$SQ_FINDSEC_VERSION.jar 
wget --no-verbose https://github.com/SonarSecurityCommunity/dependency-check-sonar-plugin/releases/download/$SQ_DPCHECK_VERSION/sonar-dependency-check-plugin-$SQ_DPCHECK_VERSION.jar 
wget --no-verbose https://github.com/vaulttec/sonar-auth-oidc/releases/download/v$SQ_OIDC_VERSION/sonar-auth-oidc-plugin-$SQ_OIDC_VERSION.jar 
wget --no-verbose https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-$SQ_CITY_VERSION/sonar-softvis3d-plugin-$SQ_CITY_VERSION.jar 
