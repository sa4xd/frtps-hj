#!/bin/sh

cat <<EOF > /opt/frps.toml
bindPort = ${FRPS_BIND_PORT}

[auth]
method = "${FRPS_AUTH_METHOD}"
token = "${FRPS_AUTH_TOKEN}"

[webServer]
addr = "${FRPS_WEB_SERVER_ADDR}"
port = ${FRPS_WEB_SERVER_PORT}
user = "${FRPS_WEB_SERVER_USER}"
password = "${FRPS_WEB_SERVER_PASSWORD}"
EOF

exec frps -c /opt/frps.toml
