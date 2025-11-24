# Use a lightweight base image
FROM alpine:latest

# Install some basic Linux tools (apk works even when apt fails)
RUN apk update && apk add bash curl wget nano

# Default command to keep container running
CMD ["bash"]

