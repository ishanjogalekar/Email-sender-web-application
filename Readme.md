# Java email sender webapp

## -Web based application using Gmail SMTP server

## Requirements

1. JDK 17
    - If choosing another version of JDK specify in pom.xml file.
2. Gmail account - Preferably use another account.
3. Also give low security software  access to account
4. Server to deploy app on localhost
    - Here **Tomcat server** is used with port 2002.

5. Maven dependencies are injected directly to avoid tight coupling in codes.

6. Used some Bootstrap templates.

## Steps

1. Open project in IntelliJ Idea
2. Give Password of your account in password.txt file.
3. Setup Server for web app deployment.
4. Give path of password.txt in EmailUtility class at line no.37

```
 Path fileName = Path.of(" "); 
```

5. Also add email at given filed  in EmailUtility class at line no.39

```
 String sender_Email = "";
```

<hr>

## Used tech stacks

<p>
<img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white"/>
<img src="https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white"/>
<img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/>

<img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"/>
<img src="https://img.shields.io/badge/apache_maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=whit"/>
</p>
<hr>

[**Tomcat Server Download**](http://tomcat.apache.org/)

### Output Images - 

1. Webapp:



2. Mail received:
