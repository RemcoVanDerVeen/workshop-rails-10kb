FROM ruby:3.4.3-slim

# Install essential Linux packages
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs git libyaml-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install bundler
RUN gem install bundler

# Copy Gemfile and Gemfile.lock
COPY Gemfile* ./

# Install dependencies
# RUN bundle install

# Copy the rest of the application
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
