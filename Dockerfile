FROM python
ENV MYSQL_HOST mysql
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD admin
ENV MYSQL_DB testdb
WORKDIR \app
RUN apt-get -y update \
    && apt-get upgrade -y 

COPY requirements.txt .
COPY app.py .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]
