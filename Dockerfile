FROM vernemq/vernemq

# Copy the entrypoint script into the container
# COPY ./entrypoint.sh /docker-entrypoint.sh
# RUN chmod +x /docker-entrypoint.sh

# RUN  /entrypoint.sh
# USER vernemq
# Set the entrypoint to run the script
# ENTRYPOINT ["docker-entrypoint.sh"]

# RUN /docker-entrypoint.sh
# RUN /
# CMD ["/docker-entrypoint.sh"]
# lines_to_append="Line 1\nLine 2\nLine 3"

# ARG API_KEY
# sed -i "s/.*'wait $pid'*/$lines_to_append" ./usr/sbin/start_vernemq
# RUN sed
# RUN /usr/sbin/start_vernemq
USER root
RUN sed -i 's/wait $pid/sleep 10 \&\& echo "Adding API_KEY..." \&\& \/vernemq\/bin\/vmq-admin api-key add key=${API_KEY:-DEFAULT} \nvmq-admin api-key show\nwait $pid/' /usr/sbin/start_vernemq
COPY ./vernemq/mysql.lua /vernemq/share/lua/auth/mysql.lua
# RUN sed -i 's/wait $pid/ if [ -n "$API_KEY" ]; then \n  sleep 10 \&\& echo "Adding API_KEY..." \&\& \/vernemq\/bin\/vmq-admin api-key add key=${API_KEY:-DEFAULT} \n  vmq-admin api-key show\nfi\nwait $pid/' /usr/sbin/start_vernemq

# USER vernemq
# COPY /vernemq.sh /usr/sbin/start_vernemq
# CMD sed -i 's/wait $pid/sleep 20 \&\& echo "Adding API_KEY..." \&\& \/vernemq\/bin\/vmq-admin api-key add key=heyU\nvmq-admin api-key show\nwait $pid/' /usr/sbin/start_vernemq && /usr/sbin/start_vernemq
# CMD ["start_vernemq"]

