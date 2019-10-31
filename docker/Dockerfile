FROM cora-docker-fedora-3.8.1:1.0.5

USER root
WORKDIR $USER_HOME

RUN mkdir import
COPY models/* import/
COPY places/* import/

COPY *.sh $USER_HOME/
RUN ls -la
RUN chmod +x *.sh && chown -R $USER_NAME: .
RUN ls -la

USER $USER_NAME

CMD ["/home/fedora/checkAndStart.sh"]

# build
# mvn clean package

# start and stop see scripts directory