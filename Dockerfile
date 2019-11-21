FROM iron/go:dev
WORKDIR /app
ADD . /app 
# Add dependency:
RUN go get -u github.com/gorilla/mux
# build it 
RUN go build -o myapp
ENTRYPOINT ["./myapp"]
