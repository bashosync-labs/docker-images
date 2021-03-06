
# Install the Python client
RUN \
  apt-get update && \
  apt-get install -y python python-six python-pkg-resources curl unzip
RUN \
  cd /usr/lib/python2.7/dist-packages && \
  curl -sSLO https://pypi.python.org/packages/2.7/r/riak/riak-2.4.2-py2.7.egg && \
  curl -sSLO https://pypi.python.org/packages/2.7/p/protobuf/protobuf-2.6.1-py2.7.egg && \
  unzip -o riak-2.4.2-py2.7.egg && \
  unzip -o protobuf-2.6.1-py2.7.egg

ENTRYPOINT ["python"]
