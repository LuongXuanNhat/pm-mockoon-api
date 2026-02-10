FROM mockoon/cli:latest

WORKDIR /data
COPY mockoon-data.json .

EXPOSE 3000

ENTRYPOINT ["mockoon-cli"]
CMD ["start", "-d", "mockoon-data.json", "-p", "3000"]
