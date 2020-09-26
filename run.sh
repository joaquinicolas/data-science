"/bin/sh"

docker run -p 8888:8888 -v "$(pwd)"/MLCourse:/app -d anaconda
