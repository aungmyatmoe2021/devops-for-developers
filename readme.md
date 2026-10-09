# Docker Compose App With Database

## Features

    • Backend connects to MySQL using service name mysql.
    • Backend connects to Redis using service name redis.
    • MySQL data is persisted using named volume mysql_data.
    • Initial database table is created from db/init/01-init.sql.

### According to this exercise, there is a few step to create it

    - Backend
        - app.py (To run flask api)
        - Dockerfile (To create image)
        - requirements.txt (collect package)

    - db
        - init.sql (To megrate db)

    - .env (environment file)
    - Docker-compose.yml (To combine once click run)

### There is a few step to make sure for run it.

    - docker compose up -d --build

### Useful Commands

    - docker compose ps
    - docker compose logs -f backend
    - docker compose exec mysql mysql -uappuser -papppassword compose_demo
    - docker compose exec redis redis-cli
    - docker compose down
    - docker compose down -v

### Testing Tasks

    - http://localhost:5001
    - http://localhost:5001/health
    - http://localhost:5001/visits

### Knowlege and Note

    • Backend connects to MySQL using service name mysql.
    • Backend connects to Redis using service name redis.
    • MySQL data is persisted using named volume mysql_data.
    • Initial database table is created from db/init/01-init.sql.
