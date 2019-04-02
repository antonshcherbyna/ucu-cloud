FROM python:3
MAINTAINER Anton Shcherbyna "a.shcherbyna@ucu.edu.ua"
COPY app /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
EXPOSE 5000
CMD ["load_service.py"]
