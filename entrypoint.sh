#!/bin/sh

cat <<EOF > /opt/frps.toml
bindPort = ${FRPS_BIND_PORT:-7000}

[auth]
method = "${FRPS_AUTH_METHOD:-token}"
token = "${FRPS_AUTH_TOKEN:-frp-default-token}"

[webServer]
addr = "${FRPS_WEB_SERVER_ADDR:-0.0.0.0}"
port = ${FRPS_WEB_SERVER_PORT:-7500}
user = "${FRPS_WEB_SERVER_USER:-admin}"
password = "${FRPS_WEB_SERVER_PASSWORD:-123456}"
EOF

exec frps -c /opt/frps.toml
