FROM debian:latest

# Install all required packages
RUN apt update
RUN apt install -y openssh-server fish htop curl gpg git cron

# Add the glow package
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://repo.charm.sh/apt/gpg.key | gpg --dearmor -o /etc/apt/keyrings/charm.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | tee /etc/apt/sources.list.d/charm.list
RUN apt update && apt install glow -y

# Set the hostname to callowaysutton.com
RUN echo 'callowaysutton.com' > /etc/hostname

# Setup the SSH server
RUN service ssh start
EXPOSE 22

# Add a guest user with the password guest
RUN useradd -m -s /bin/fish guest
RUN echo 'guest:guest' | chpasswd

# Copy over a pre-built profile
COPY guest_profile /home/guest
# Make the home folder read-only for the guest user
RUN chown -R guest:guest /home/guest
RUN chmod -R 555 /home/guest
# Track the history
RUN chmod -R 700 /home/guest/.local/share/fish

RUN git clone https://github.com/callowaysutton/website_files /home/guest/files

# Add a script to perform the Git pull as the root user
COPY entry.sh /usr/local/bin/entry.sh
RUN chmod 644 /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh

CMD entry.sh