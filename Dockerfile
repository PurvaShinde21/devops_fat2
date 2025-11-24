FROM alpine:latest

# Install basic Linux tools
RUN apk update && apk add bash curl wget nano tree coreutils

# Create lab directory and set it as working directory
RUN mkdir /lab
WORKDIR /lab

# Create sample files inside /lab
RUN echo "first file content" > fileA.txt && \
    echo "second file content" > fileB.txt

# Demonstrate basic Linux commands
RUN pwd
RUN head -n 1 fileA.txt
RUN tail -n 1 fileB.txt
RUN mv fileA.txt renamed_file.txt
RUN chmod 644 renamed_file.txt
RUN uname -a
RUN hostname

# Keep container interactive
CMD ["bash"]

