FROM ubuntu
RUN apt-get install -y curl git
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements && rvm install 2.1 && rvm default 2.1"
RUN git clone git@github.com:Ladtech/page_magic.git /page_magic
RUN cd /page_magic
RUN /usr/local/rvm/bin/rvm 2.1.1 do bundle install && bundle exec rake
