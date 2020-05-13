FROM jfloff/alpine-python:2.7


# build: docker build -t pydio-sync .

# run: docker run -v `pwd`:/root/.local/share -p 5556:5556 -it pydio-sync

EXPOSE 5556/tcp

RUN apk add gcc
RUN apk add libffi-dev
RUN pip install git+https://github.com/pydio/pydio-sync.git

CMD python -m pydio.main --api_address 0.0.0.0 --api_user test --api_password test
