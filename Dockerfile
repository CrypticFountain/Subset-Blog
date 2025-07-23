FROM ruby:3.1-alpine

# Install dependencies for Jekyll and native extensions
RUN apk add --no-cache \
    build-base \
    git \
    nodejs \
    npm \
    tzdata

# Set working directory
WORKDIR /app

# Copy Gemfile first for better Docker layer caching
COPY Gemfile Gemfile.lock* ./

# Install bundler and gems
RUN gem install bundler && \
    bundle config set --local deployment 'false' && \
    bundle config set --local path 'vendor/bundle' && \
    bundle install

# Expose ports for Jekyll and LiveReload
EXPOSE 4000 35729

# Default command (will be overridden by docker-compose)
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
