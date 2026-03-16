# 📚 BookShelf — Frontend

> Single Page Application built with Angular, presenting a book collection with animations and a dynamic interface.

---

## 🛠️ Tech Stack

| Technology | Version |
|------------|---------|
| Angular | latest stable |
| TypeScript | latest stable |
| Node.js | v23.5.0 |
| npm | 10.9.2 |
| CSS | Animations, responsive layout |

---

## 📁 Structure

```
frontend/
├── src/
│   ├── app/
│   │   ├── components/       # Angular components
│   │   ├── services/         # HTTP services
│   │   ├── models/           # TypeScript interfaces
│   │   ├── app.component.ts
│   │   ├── app.component.html
│   │   ├── app.component.scss
│   │   └── app.module.ts
│   ├── assets/               # Images, icons, fonts
│   ├── environments/         # Environment config
│   └── styles.scss           # Global styles
├── angular.json
└── package.json
```

---

## ⚙️ Configuration

The frontend connects to the backend at `http://localhost:8080` by default.

To change the API URL, edit:

```
src/environments/environment.ts
src/environments/environment.prod.ts
```

---

## 🚀 Running

```bash
cd frontend
npm install
ng serve
```

> App available at: **http://localhost:4200**

### Other commands

```bash
# Production build
ng build --configuration production

# Unit tests
ng test

# E2E tests
ng e2e

# Generate component
ng generate component component-name
```

---

## 🔗 Backend connection

Make sure the backend is running on port **8080** before starting the frontend.

```
Frontend (4200) → HTTP requests → Backend (8080) → MySQL (3306)
```

---

## 🐛 Known Issues

- **Low FPS animations** — animations need optimization (e.g. use `will-change`, `transform` instead of `top/left`, reduce reflow)

---

## 🎨 Planned Improvements

- [ ] Animation performance (FPS)
- [ ] New fonts
- [ ] Updated graphics and icons
- [ ] Color / background fixes
- [ ] Empty template

---

## 👤 Author

**AdrJM** — [github.com/AdrJM](https://github.com/AdrJM)
