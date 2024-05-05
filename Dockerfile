FROM python:3.12.3-slim-bullseye

WORKDIR /app

COPY main.py requirements.txt /app/

RUN pip3 install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]