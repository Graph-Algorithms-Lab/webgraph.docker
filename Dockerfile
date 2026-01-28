

FROM alpine:latest

WORKDIR /home

RUN apk add build-base rust cargo git

RUN git clone --depth 1 https://github.com/vigna/webgraph-rs.git \
    && cd webgraph-rs && cargo build --release \
    && cp -r ./target/release/* /usr/local/bin/ \
    && cd ../ && rm -rf webgraph-rs

ENTRYPOINT ["webgraph"]
