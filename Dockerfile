FROM filebrowser/filebrowser:latest

RUN touch /database.db

RUN chmod 777 /database.db

COPY filebrowser.json /.filebrowser.json

RUN chmod 777 /.filebrowser.json

ENTRYPOINT ["tail", "-f", "/dev/null"]
