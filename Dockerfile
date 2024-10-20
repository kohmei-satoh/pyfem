FROM python:3.9
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y build-essential cmake
RUN pip install -r requirements.txt
RUN cd cpp_code && make
CMD ["pytest", "tests/"]
