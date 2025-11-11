FROM ubuntu:22.04

# Install ttyd and bash
RUN apt update && apt install -y ttyd bash

# Expose ttyd's default port
EXPOSE 7681

# Run bash inside a web terminal
CMD ["sh", "-c", "ttyd -b 0.0.0.0 -p ${PORT: -7681}", "bash"]
