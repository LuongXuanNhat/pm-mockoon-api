FROM mockoon/cli:latest

WORKDIR /data
COPY mockoon-data.json .

EXPOSE 3000

ENTRYPOINT ["sh", "-c"]
CMD ["mockoon-cli start -d mockoon-data.json -p $PORT"]
