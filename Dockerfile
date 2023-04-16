FROM ruby:3.2.2

RUN bundle config --global frozen 1

WORKDIR /app

COPY Gemfile* .
RUN bundle install

COPY . .

EXPOSE 3000

RUN rails db:schema:load
RUN rails db:seed

CMD ["rails", "server", "-b", "0.0.0.0"]