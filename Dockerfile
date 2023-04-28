FROM golang as buider
WORKDIR /src
COPY src .
RUN CGO_ENABLE=0 go build -o app

FROM scratch 
ADD ./html /html