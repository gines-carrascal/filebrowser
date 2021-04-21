FROM filebrowser/filebrowser:latest

COPY database.db /database.db

ENTRYPOINT [ "/filebrowser" ]
