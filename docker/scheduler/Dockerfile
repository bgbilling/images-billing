FROM bgbilling/base-bgbilling:8.0

COPY entrypoint.sh /usr/local/bin/

HEALTHCHECK --start-period=10m --interval=30s --timeout=10s --retries=20 \
  CMD echo status | nc -q3 127.0.0.1 9066 | grep Uptime || exit 1

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
CMD ["/opt/bgbilling/BGBillingServer/scheduler.sh", "-estart"]