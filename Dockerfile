FROM golang:alpine3.20 AS build

WORKDIR /app

COPY /src/hello-world.go ./

RUN go build -a -gcflags=all="-l -B -wb=false" -ldflags="-w -s" hello-world.go

FROM scratch
COPY --from=build /app/hello-world ./
CMD ["./hello-world"]

