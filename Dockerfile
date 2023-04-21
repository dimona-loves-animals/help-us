FROM python:2.7.17-buster
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm i -g less
RUN npm i -g less-plugin-clean-css minifyjs
RUN pip install dry
COPY requirements.txt . 
RUN pip install -r requirements.txt
COPY . .
WORKDIR /app/views
RUN dry build
WORKDIR /
EXPOSE 80
CMD ["python", "./run.py"]
