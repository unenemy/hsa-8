FROM ruby:3.1.4
RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /imager
COPY Gemfile /imager/Gemfile
COPY Gemfile.lock /imager/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY ./bin/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["./bin/entrypoint.sh"]
EXPOSE 3002

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3002", "-e", "production"]