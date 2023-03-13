FROM ubuntu:latest
WORKDIR /app
COPY ./webutils /app/webutils
COPY ./bin/libssl.so.1.0.0 /usr/lib/libssl.so.1.0.0
COPY ./bin/libcrypto.so.1.0.0 /usr/lib/libcrypto.so.1.0.0
COPY ./runner.sh /app/runner.sh
# remember this is just a documentation, need to expose with -p 8000:8000
EXPOSE 8000 
ENTRYPOINT [ "/app/webutils" ]
