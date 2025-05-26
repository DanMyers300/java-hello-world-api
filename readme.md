# Hello World API

Welcome to the **Hello World API** project! This is a simple RESTful web service built with Spring Boot that responds with a "Hello, World!" message. This project serves as a great starting point for learning about Spring Boot and building RESTful APIs.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Running the Application](#running-the-application)
  - [Using Docker](#using-docker)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)
- [License](#license)

## Features

- Simple RESTful API
- Responds with "Hello, World!" message
- Built with Spring Boot
- Docker support for easy deployment

## Technologies Used

- Java 25
- Spring Boot 3.2.1
- Maven
- Docker

## Getting Started

### Prerequisites

To run this project locally, you need to have the following installed:

- [Java 25](https://www.oracle.com/java/technologies/javase/jdk25-downloads.html)
- [Maven](https://maven.apache.org/download.cgi)
- [Docker](https://www.docker.com/get-started)

### Running the Application

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/hello-world-api.git
   cd hello-world-api
   ```

2. **Build the project:**

   ```bash
   mvn clean package
   ```

3. **Run the application:**

   ```bash
   mvn spring-boot:run
   ```

4. **Access the API:**

   Open your browser or use `curl` to access the API:

   ```bash
   curl http://localhost:8080/hello
   ```

   You should see the response:

   ```
   Hello, World!
   ```

### Using Docker

1. **Build the Docker image:**

   Make sure you are in the root directory of the project (where the `Dockerfile` is located):

   ```bash
   docker build -t hello-world-api .
   ```

2. **Run the Docker container:**

   ```bash
   docker run -p 8080:8080 hello-world-api
   ```

3. **Access the API:**

   Use `curl` to access the API:

   ```bash
   curl http://localhost:8080/hello
   ```

   You should see the response:

   ```
   Hello, World!
   ```

## API Endpoints

- `GET /hello`: Returns a simple "Hello, World!" message.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Thank you for checking out the Hello World API project! Happy coding!
