FROM gocd/gocd-server:v17.12.0

# After bootup their init system will propogate other config files etc..
# we just need to ensure we mount it as readable at first run

COPY cruise-config.xml /godata/config/cruise-config.xml
RUN chown -R go:go /godata

# More docs: https://hub.docker.com/r/gocd/gocd-server/
