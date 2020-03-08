FROM python:2
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN npm i -g less
RUN npm i -g less-plugin-clean-css minifyjs
RUN pip install dry
COPY requirements.txt . 
RUN pip install -r requirements.txt
COPY . .
WORKDIR /app/views
RUN dry build
WORKDIR /
CMD ["python", "./run.py"]