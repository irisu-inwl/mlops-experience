from python:3.8

RUN pip install -U setuptools pip wheel
RUN pip install pymysql mlflow

CMD mlflow server --backend-store-uri $DB_URI --host 0.0.0.0 --port 8080 --default-artifact-root $DEFAULT_ARTIFACT_ROOT
