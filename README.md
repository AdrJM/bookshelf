# 📚 BookShelf

> Full-stack book management application — Java Spring Boot backend & Angular frontend

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Java 17, Spring Boot, Maven 3.6.3 |
| Frontend | Angular, TypeScript, Node.js v23.5.0 |
| Database | MySQL 8.0.45 |
| ORM | Spring Data JPA / Hibernate |

---

## 📁 Project Structure

```
BookShelf/
├── backend/        # Spring Boot REST API
└── frontend/       # Angular SPA
```

---

## ⚙️ Prerequisites

- Java 17+
- Maven 3.6+
- Node.js v23+ & npm 10+
- MySQL 8.0+

---

## 🗄️ Database Setup

1. Create the database and user in MySQL:

```sql
CREATE DATABASE bookshelf;
CREATE USER 'bookshelf'@'localhost' IDENTIFIED BY 'Bookshelf1!';
GRANT ALL PRIVILEGES ON bookshelf.* TO 'bookshelf'@'localhost';
FLUSH PRIVILEGES;
```

2. Import initial data:

```bash
mysql -u bookshelf -p bookshelf < data.sql
```

### Database Schema

| Table | Description |
|-------|-------------|
| `books` | Core book data |
| `authors` | Author information |
| `details` | Book details |
| `publication` | Publication data |
| `intro_words` | Introduction/description content |
| `images_url` | Book cover image URLs |

---

## 🚀 Running the Application

### Backend

```bash
cd backend
mvn spring-boot:run
```

> Starts on **http://localhost:8080**

### Frontend

```bash
cd frontend
npm install
ng serve
```

> Starts on **http://localhost:4200**

---

## ⚙️ Backend Configuration

`backend/src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/bookshelf
spring.datasource.username=bookshelf
spring.datasource.password=Bookshelf1!
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
```

---

## 🐛 Known Issues

- **Empty database** — remember to import `data.sql` before first run
- **Low FPS animations** — frontend animations require optimization
- **Legacy naming** — project was originally named `PsychoAMJ` / `aj4` in `pom.xml`; some references may remain

---

## 👤 Author

**AdrJM** — [github.com/AdrJM](https://github.com/AdrJM)

---

## 📄 License

This project is currently unlicensed.
