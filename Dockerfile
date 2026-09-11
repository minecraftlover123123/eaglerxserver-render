FROM itzg/minecraft-server:java17

COPY --chmod=755 scripts/render-start.sh /render-start.sh

ENV COPY_CONFIG_DEST=/data
ENV DEBUG=TRUE

ENTRYPOINT ["/render-start.sh"]
COPY EaglerXServer.jar /plugins/EaglerXServer.jar
