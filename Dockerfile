FROM python:3.9.1-alpine3.12

RUN pip install flask

WORKDIR /app
COPY rest-api.py .
RUN chmod u+x rest-api.py
RUN chown xfs rest-api.py

USER xfs 
CMD [ "python", "./rest-api.py"]
