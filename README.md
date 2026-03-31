# CareerSathi

CareerSathi is a career consultancy web application built with **Spring Boot** and **JSP**. It connects job seekers (consultees) with career consultants, allowing users to sign up, book consultations, and communicate through a meeting room.

## Features

- User registration as a **Consultee** or **Consultor**
- User login and profile management
- Book a consultation session
- Meeting room for consultant–consultee communication
- Contact us page

## Tech Stack

| Layer      | Technology                        |
|------------|-----------------------------------|
| Backend    | Java 21, Spring Boot 3.2.2        |
| View       | JSP + JSTL                        |
| Database   | PostgreSQL                        |
| Build Tool | Maven                             |
| Server     | Embedded Tomcat (port `1111`)     |

## Prerequisites

Before running the project locally, make sure you have the following installed:

- [Java 21](https://adoptium.net/) (JDK)
- [Maven 3.8+](https://maven.apache.org/download.cgi)
- [Git](https://git-scm.com/)
- A running **PostgreSQL** instance (or use the hosted one in `application.properties`)

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Sainiankushgithub/CareerSathi.git
cd CareerSathi
```

### 2. Configure the database

Open `careersathi/src/main/resources/application.properties` and update the database connection settings if you are using your own PostgreSQL instance:

```properties
spring.datasource.url=jdbc:postgresql://<host>:<port>/<database>?sslmode=require
spring.datasource.username=<your_username>
spring.datasource.password=<your_password>
```

### 3. Build the project

```bash
cd careersathi
mvn clean install
```

### 4. Run the application

```bash
mvn spring-boot:run
```

The application will start on **http://localhost:1111**.

### 5. Open in browser

Navigate to [http://localhost:1111](http://localhost:1111) to access the CareerSathi home page.

## Project Structure

```
CareerSathi/
└── careersathi/
    ├── src/
    │   ├── main/
    │   │   ├── java/com/carrersathi/
    │   │   │   ├── controller/      # Spring MVC controllers
    │   │   │   ├── dao/             # Data Access Objects
    │   │   │   ├── entities/        # Entity/model classes
    │   │   │   └── CarrerSathiApplication.java
    │   │   ├── resources/
    │   │   │   ├── static/          # CSS, JS, images
    │   │   │   └── application.properties
    │   │   └── webapp/WEB-INF/jsp/  # JSP view templates
    │   └── test/                    # Unit tests
    └── pom.xml
```

## Running Tests

```bash
cd careersathi
mvn test
```

## License

This project is open source. Feel free to fork and contribute.
