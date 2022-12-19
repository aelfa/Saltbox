#!/bin/bash
printf '' > /srv/git/saltbox/ansible-update.log
/srv/ansible/venv/bin/python3 -m pip install --no-cache-dir --disable-pip-version-check --upgrade pyOpenSSL requests netaddr jmespath jinja2 ansible">=6.0.0,<7.0.0" 2>&1 | tee -a /srv/git/saltbox/ansible-update.log
cp /srv/ansible/venv/bin/ansible* /usr/local/bin/
