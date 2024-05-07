FROM public.ecr.aws/docker/library/python:3.9.19-slim-bullseye

WORKDIR /app

COPY main.py requirements.txt /app/

RUN pip3 install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]