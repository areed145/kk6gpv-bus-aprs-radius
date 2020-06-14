FROM python:3.7-slim-buster

LABEL maintainer="areed145@gmail.com"

WORKDIR /bus-aprs-radius

COPY . /bus-aprs-radius

# We copy just the requirements.txt first to leverage Docker cache
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# EXPOSE 80

CMD ["python", "bus-aprs-radius.py"]