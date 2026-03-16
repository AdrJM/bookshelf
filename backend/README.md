# 📚 BookShelf — Backend

> REST API built with Java Spring Boot, handling book, author and publication data.

---

## 🛠️ Tech Stack

| Technology | Version |
|------------|---------|
| Java | 17 |
| Spring Boot | latest stable |
| Maven | 3.6.3 |
| MySQL | 8.0.45 |
| Hibernate / JPA | via Spring Data |

---

## 📁 Structure

```
backend/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── .../
│   │   │       ├── controller/    # REST Controllers
│   │   │       ├── model/         # JPA Entities
│   │   │       ├── repository/    # Spring Data Repositories
│   │   │       └── service/       # Business logic
│   │   └── resources/
│   │       └── application.properties
└── pom.xml
```

---

## ⚙️ Configuration

`src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/bookshelf
spring.datasource.username=bookshelf
spring.datasource.password=Bookshelf1!
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
```

---

## 🗄️ Database Setup

Create the database and user in MySQL:

```sql
CREATE DATABASE bookshelf;
CREATE USER 'bookshelf'@'localhost' IDENTIFIED BY 'Bookshelf1!';
GRANT ALL PRIVILEGES ON bookshelf.* TO 'bookshelf'@'localhost';
FLUSH PRIVILEGES;
```

Import initial data:

```bash
mysql -u bookshelf -p bookshelf < data.sql
```

### Tables

| Table | Description |
|-------|-------------|
| `books` | Core book data |
| `authors` | Author information |
| `details` | Book details |
| `publication` | Publication data |
| `intro_words` | Introduction / description content |
| `images_url` | Book cover image URLs |

---

## 🚀 Running

```bash
cd backend
mvn spring-boot:run
```

> API available at: **http://localhost:8080**

### Other Maven commands

```bash
# Build only
mvn clean install

# Run tests
mvn test

# Build without tests
mvn clean install -DskipTests
```

---

## 🔗 API Endpoints

| Method | Endpoint | Description | Returns |
|--------|----------|-------------|---------|
| GET | `/all` | List all books | `List<Book>` |
| GET | `/id/{id}` | Get book by ID | `Book` |
| GET | `/category/{category}` | Get books by category | `List<Book>` |

---

## 🐛 Known Issues

- Legacy project name (`PsychoAMJ` / `aj4`) may still be present in `pom.xml`

---

## 👤 Author

**AdrJM** — [github.com/AdrJM](https://github.com/AdrJM)
