FROM robacarp/static-dokku:latest
COPY . /root
RUN cd /root && bundle install && jekyll build
RUN cp -r /root/_site/* /app
