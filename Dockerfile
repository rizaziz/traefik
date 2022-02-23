FROM scratch
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /traefik
COPY traefik.sample.yml /etc/traefik/treaefik.yml
EXPOSE 80
VOLUME ["/tmp"]
CMD ["/traefik"]
