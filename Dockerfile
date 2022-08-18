FROM  klakegg/hugo:0.101.0

COPY ["./UserDocs", "src"]

ENTRYPOINT["hugo", "server"]


