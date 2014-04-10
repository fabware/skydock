FROM crosbymichael/golang

# go get to download all the deps
RUN go get -u github.com/fabware/skydock

ADD . /go/src/github.com/fabware/skydock
ADD plugins/ /plugins

RUN cd /go/src/github.com/fabware/skydock && go install . ./...

ENTRYPOINT ["/go/bin/skydock"]
