# Use the official Caddy image from the Docker Hub
FROM caddy:latest

# Copy Caddyfile to the /etc/caddy directory
COPY Caddyfile /etc/caddy/Caddyfile

# Copy your static website files to the /usr/share/caddy directory
COPY index.html /usr/share/caddy/
COPY animation.gif /usr/share/caddy/
COPY caddy.jpeg /usr/share/caddy/

# Expose port 80 to the outside world
EXPOSE 80

# Start Caddy when the container launches
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]

# Welcome! by MaV & Caddy - Swan AAR ©2024
