# Use an official base image with Bash installed
FROM bash:latest

#Update and install curl & jq
#RUN apt-get update && apt-get install -y curl jq #Note: As this is a alpin base image the debian command does not work
RUN apk add --no-cache curl jq

# Copy the Bash script into the container
COPY readCommit.sh /usr/local/bin/readCommit.sh

# Make the script executable
RUN chmod +x /usr/local/bin/readCommit.sh

# Set the script as the entry point
CMD ["/usr/local/bin/readCommit.sh"]