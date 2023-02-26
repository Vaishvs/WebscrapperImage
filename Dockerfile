FROM python:latest

COPY scrape.py ./

RUN pip install numpy
RUN pip install opencv-python
RUN pip install urllib3
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

ENTRYPOINT ["python"]
CMD ["scrape.py"]