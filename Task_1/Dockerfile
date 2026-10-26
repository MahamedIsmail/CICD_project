FROM python:3.12.15-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask","--app","./App/hello.py","run","--host=0.0.0.0"]