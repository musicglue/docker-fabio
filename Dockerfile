FROM alpine:3.4

RUN adduser -S fabio

ADD https://github.com/eBay/fabio/releases/download/v1.3.2/fabio-1.3.2-go1.7.1_linux-amd64 /bin/fabio
RUN chmod a+x /bin/fabio

USER fabio

EXPOSE 9999 9998
CMD ["/bin/fabio"]
