# Create a Jekyll container based on a Ruby Alpine image

# Use Ruby 2.5 or higher
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc make git

# Update the Ruby bundler and install Jekyll
RUN gen update bundler && gem install bundler jekyll