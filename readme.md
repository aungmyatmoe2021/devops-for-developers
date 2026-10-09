# This is docker series, first setp to deep in.

## Architecture

Frontend Nginx UI
↓
Backend Flask API :8000
↓
PostgreSQL Database

## Features

    ● Pretty frontend UI
    ● Register user
    ● Show total user count
    ● Show today's user count
    ● Show role count
    ● List registered users
    ● Delete user
    ● API health status
    ● Backend runs on port 8000
    ● No logo image required

### According to this exercise, there is a few step to create it

    - Backend
        - app.py (To run flask api)
        - Dockerfile (To create image)
        - requirements.txt (collect package)
    - frontend
        - index.html (To run web page)
        - Dockerfile (To create image)
        - nginx.conf (To replace web serer configuration because I'm runing serverice on nginx server)

    - db
        - init.sql (To megrate db)

    - .env (environment file)
    - Docker-compose.yml (To combine once click run)

### There is a few step to make sure for run it.

    - docker compose up -d --build

### Services

| Service  | Container Port | Local Port    |
| -------- | -------------- | ------------- |
| frontend | 80             | 3000          |
| backend  | 8000           | 8000          |
| db       | 5432           | internal only |

### API Endpoints

    GET /api/health
    GET /api/stats
    GET /api/users
    POST /api/register
    DELETE /api/users/:id

### If you want to test about your application, run this

    - frontend (Browser)
        - http://localhost:3000
    - backend (Browser or Postman)
        - http://localhost:8000/api/health
