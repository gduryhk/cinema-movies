# golang image where workspace (GOPATH) configured at /go.
FROM golang:1.6

# Install dependencies
RUN go get gopkg.in/mgo.v2
RUN go get github.com/gorilla/mux

# copy the local package files to the container workspace
ADD . /go/src/github.com/gduryhk/cinema-movies

# Setting up working directory
WORKDIR /go/src/github.com/gduryhk/cinema-movies

# Build the movies command inside the container.
RUN go install github.com/gduryhk/cinema-movies

# Run the movies microservice when the container starts.
ENTRYPOINT /go/bin/cinema-movies

# Service listens on port 8080.
EXPOSE 8080
