#!/usr/bin/env bash
set -e

mkdir -p /opt/render/.nightscout_easyview

cat <<EOF > /opt/render/.nightscout_easyview/secrets.yaml
easyview:
  username: "${EASYVIEW_USER}"
  password: "${EASYVIEW_PASSWORD}"
  server: "${EASYVIEW_SERVER}"
nightscout:
  url: "${NIGHTSCOUT_URL}"
  api_secret: "${NIGHTSCOUT_API_SECRET}"
EOF

python src/uploader.py
