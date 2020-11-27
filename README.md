# REST CRUD API with Spring Boot, Mysql, JPA and Hibernate 

## Steps to Setup

**1. Clone the application**

```bash
https://github.com/givanthak/spring-boot-rest-api-tutorial.git
```

**2. Create Mysql database**

```bash
create database user_database
```

**3. Change mysql username and password as  your installation**

+ open   
`src/main/resources/application.properties`

+ change  
`spring.datasource.username` and `spring.datasource.password` as per your mysql installation


**4. Build and run the app using maven to excute cmd or sh mvnw script**

+ set your M2_HOME and JAVA_HOME path in `build.properties` file
+ excute cmd or sh mvnw script

```bash
mvnw clean install -Dmaven.test.skip=true
mvnw package -Dmaven.test.skip=true
java -jar target/spring-boot-rest-api-tutorial-0.0.1-SNAPSHOT.jar

```

Alternatively, you can run the app without packaging using run.bat thath execute mvn spring-boot:run after setup ```JAVA_HOME``` and ```M2_HOME``` environment variable read from ```build.prroperties file```.

```
run.bat
```

The app will start running at

```
http://localhost:8080
```

## Explore Rest APIs

The app defines following CRUD APIs.

    GET /api/v1/users    
    POST /api/v1/users
    GET /api/v1/users/{userId}
    PUT /api/v1/users/{userId}
    DELETE /api/v1/users/{userId}       


## Test With Postman

Create User

```
POST
http://localhost:8080/api/v1/users
HEADERS
Content-Type:application/json
Body:raw:JSON
{
  "firstName": "FirstName",
  "lastName": "LastName",
  "email": "mail@gmail.com",
  "createdBy": "dummy",
  "updatedBy": "dummy"
}
```



Get All User

```
GET
http://localhost:8080/api/v1/users
```