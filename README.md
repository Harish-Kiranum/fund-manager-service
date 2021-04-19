# fund-manager-service

## Prerequisites
1. Maven 3.6.3
2. Java 11
3. IntelliJ
   - Lombok and Sonarlint plugins

## Project setup   
1. Install MySQL. Set up root user with password `root1234`.
2. Login to MySQL and create a database `fundmanager`.
3. Clone the project
```
$ cd $PROJECT_HOME
$ git clone https://github.com/Kiranum/fund-manager-service.git
```
4. Build 
```
$ cd fund-manager-service
$ mvn clean verify
```
At this point you may want to import the project into your IntelliJ. 

5. Start the service
    - #### via Maven
    ```
    $ mvn clean spring-boot:run
    ```
    
    - #### via CMD-line
    ```bash
    $ java -jar target/fund-manager-service-*.jar
    ```

    - #### in your IDE
        Simply launch Main.java from within the IDE.

6. Point your browser to http://localhost:8080/actuator/health. You should see a response acknowledging that the service 
is up.

