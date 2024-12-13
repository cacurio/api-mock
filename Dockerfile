FROM bbyars/mountebank:latest
COPY ./imposters /imposters
ENTRYPOINT ["mb"]
CMD ["start", "--configfile", "/imposters/index.ejs", "--allowInjection"]