# CareerSathi

CareerSathi is a comprehensive consultancy web application built with Java and Spring Boot. It bridges the gap between individuals seeking professional guidance (Consultees) and experienced professionals (Consultors) through an interactive online meeting and booking platform.

## Key Features
- **User Roles & Authentication**: Dedicated sign-up and secure login workflows tailored for two separate roles: **Consultees** and **Consultors**.
- **Automated Consultation Booking**: Consultees can easily schedule meetings by choosing a domain of specialization, a date, and a time. The system intelligently pairs the user with a randomly available Consultor that matches the selected specialization.
- **Virtual Meeting Rooms**: Upon booking, a unique meeting room (e.g., `room_<timestamp>`) is generated. Users can join these private rooms directly from their dashboard during the designated 1-hour scheduled window.
- **Integrated Messaging**: Features a built-in messaging system enabling smooth communication between users.
- **Intelligent Profile & Dashboard**: Personalized dashboards that track active and past consultations. The system automatically enforces booking rules (e.g., max 2 active meetings) and automatically updates expired meeting statuses from `SCHEDULED` to `COMPLETED`.

## Technology Stack
- **Languages**: Java 17
- **Framework**: Spring Boot 3.2.2
- **Web Technologies**: Spring MVC, JSP, JSTL (Jakarta Servlet)
- **Database**: PostgreSQL
- **Data Access**: Spring JDBC
- **Build Tool**: Maven

## Prerequisites
To run this project on your local machine, ensure you have the following installed:
- [Java Development Kit (JDK) 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
- [Maven](https://maven.apache.org/install.html)
- [PostgreSQL](https://www.postgresql.org/download/)

## Database Configuration & Environment Variables
Currently, the database credentials in `src/main/resources/application.properties` might point to a specific remote cloud database or hold specific environment credentials. When running this project on a different device or environment, you should connect it to your own local or remote PostgreSQL database.

You can override the database connection settings without modifying the code by setting the following environment variables:

- `SPRING_DATASOURCE_URL`: Your PostgreSQL JDBC connection string (e.g., `jdbc:postgresql://localhost:5432/carrersathi`)
- `SPRING_DATASOURCE_USERNAME`: Your PostgreSQL username (e.g., `postgres`)
- `SPRING_DATASOURCE_PASSWORD`: Your PostgreSQL password

### Setting variables and running on Windows (PowerShell):
```powershell
$env:SPRING_DATASOURCE_URL="jdbc:postgresql://localhost:5432/carrersathi"
$env:SPRING_DATASOURCE_USERNAME="postgres"
$env:SPRING_DATASOURCE_PASSWORD="your_local_db_password"

mvn spring-boot:run
```

### Setting variables and running on Windows (Command Prompt):
```cmd
set SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/carrersathi
set SPRING_DATASOURCE_USERNAME=postgres
set SPRING_DATASOURCE_PASSWORD=your_local_db_password

mvn spring-boot:run
```

### Setting variables and running on macOS / Linux:
```bash
export SPRING_DATASOURCE_URL="jdbc:postgresql://localhost:5432/carrersathi"
export SPRING_DATASOURCE_USERNAME="postgres"
export SPRING_DATASOURCE_PASSWORD="your_local_db_password"

mvn spring-boot:run
```

*Note: Alternatively, you can modify the database properties directly inside `src/main/resources/application.properties` if you don't wish to use environment variables.*

## How to Run

1. **Navigate to the project root directory**:
   ```bash
   cd careersathi
   ```

2. **Set up the PostgreSQL Database**:
   Make sure your PostgreSQL server is running and create a database corresponding to the name in your URL (e.g., `carrersathi`).

3. **Build the project** using Maven:
   ```bash
   mvn clean install
   ```

4. **Run the Spring Boot application**:
   Use `mvn spring-boot:run` as demonstrated in the environment variables section.

5. **Access the application**:
   The application runs on port `1111` by default. Open a web browser and navigate to:
   ```
   http://localhost:1111
   ```
