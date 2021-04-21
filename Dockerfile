FROM filebrowser/filebrowser:latest

RUN touch /database.db

RUN chmod 777 /database.db

ADD filebrowser.json /.filebrowser.json

RUN chmod 777 /.filebrowser.json

RUN chgrp -R 0 / && \
    chmod -R g=u /

ENTRYPOINT ["/filebrowser"]
