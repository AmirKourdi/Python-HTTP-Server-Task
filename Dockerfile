FROM python:3
EXPOSE 80
COPY . /app
RUN make /app
CMD python /app/http-server.py
ENTRYPOINT ["python", "/app/http-server.py"]
