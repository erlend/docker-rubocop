ARG DOCKER_TAG=latest
FROM ruby:${DOCKER_TAG}

# Install rubocop, standard and extras
RUN gem install \
      rubocop-i18n \
      rubocop-minitest \
      rubocop-performance \
      rubocop-rails \
      rubocop-rake \
      rubocop-rspec \
      rubocop-sorbet \
      rubocop-thread_safety \
      standard \
      unparser

# Prepare image for release
USER nobody
ENTRYPOINT ["rubocop"]
