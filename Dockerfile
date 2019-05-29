FROM psychonaut/rust-nightly:2019-05-15

ADD . /my-source

RUN    cd /my-source \
    && cargo rustc --verbose --release -- -C target-cpu=native \
    && mv /my-source/target/release/eye_of_providence /eye_of_providence \
    && rm -rfv /my-source

CMD ["/eye_of_providence"]
