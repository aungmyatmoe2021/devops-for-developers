# This is docker series, first setp to deep in.

## According to this exercise, there is a few step to create it

    - Dockerfile (to create image)
    - requirements.txt (collect package)
    - app.py (Project file to run)

### There is a few step to make sure for run it.

    - docker build -t week_1_day_4_python_flask_app:1.0 .
    - docker run -d -p 8080:5000 --name docker_flask week_1_day_4_python_flask_app:1.0
    - docker tag week_1_day_4_python_flask_app:1.0  aungmyatmoe/week_1_day_4_python_flask_app:1.0
    - docker push aungmyatmoe/week_1_day_4_python_flask_app:1.0

    #### If you want to remove your image, you must stop your container, then remove it.

    - docker stop docker_flask
    - docker rm docker_flask
    - docker rmi week_1_day_4_python_flask_app:1.0
