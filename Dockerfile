FROM iron/go:dev
WORKDIR /app
ADD . /app 
# Build it:
RUN go get -u github.com/gorilla/mux
RUN go build -o myapp
ENTRYPOINT ["./myapp"]
