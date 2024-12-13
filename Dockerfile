FROM bbyars/mountebank:latest
COPY ./imposters /imposters
ENV PORT=10000
EXPOSE 10000
ENTRYPOINT ["mb"]
CMD ["start", "--configfile", "/imposters/index.ejs", "--allowInjection", "--port", "10000"]