# Use the official Apache Airflow image as the base image
FROM apache/airflow:2.2.0

# Install additional dependencies
USER root

RUN apt-get update && \
    apt-get install -y vim

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install jupyter ipykernel

RUN pip install python-dotenv 
RUN pip install psycopg2
RUN pip install psycopg2-binary 
RUN pip install pymysql     
RUN pip install cx_Oracle  
RUN pip install apache-airflow-providers-google    
RUN pip install apache-airflow-providers-amazon   
RUN pip install apache-airflow-providers-papermill 
RUN pip install apache-airflow-providers-http==2.0.1 
RUN pip install apache-airflow-providers-postgres==2.2.0
RUN pip install apache-airflow-providers-oracle  
USER airflow
