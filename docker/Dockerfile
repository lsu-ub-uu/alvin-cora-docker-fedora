FROM cora-docker-fedora-3.8.1:1.0.3

USER root
WORKDIR $USER_HOME

RUN mkdir import
COPY models/* import/
COPY places/* import/

COPY *.sh $USER_HOME/
RUN chmod +x *.sh && chown -R $USER_NAME: *

USER $USER_NAME

CMD ["/home/fedora/checkAndStart.sh"]

# build
# mvn clean package

# start and stop see scripts directory