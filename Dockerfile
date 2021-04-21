FROM filebrowser/filebrowser:latest

RUN touch /database.db

RUN chmod 777 /database.db

ADD filebrowser.json /.filebrowser.json

RUN chmod 777 /.filebrowser.json

RUN find ! -name proc -exec chgrp -R 0 {} \; && \
    find ! -name proc -exec chmod -R g=u {} \;

ENTRYPOINT ["/filebrowser"]
