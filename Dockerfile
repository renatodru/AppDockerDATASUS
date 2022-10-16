FROM python:3

COPY ./AppDockerDATASUS/app ./AppDockerDATASUS/app

RUN apt update && apt upgrade -y

RUN pip install flask
RUN pip install flask_restful
RUN pip install openpyxl
RUN pip install pandas
RUN pip install matplotlib
RUN pip install simpledbf

EXPOSE 3333

CMD ["python", "./AppDockerDATASUS/app/aplicativo.py"]