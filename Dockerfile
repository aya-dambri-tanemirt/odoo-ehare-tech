FROM odoo:18.0

# Install Python dependencies if you have any custom ones
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt || true

# Copy your custom addons (all folders inside the repo)
COPY . /mnt/extra-addons

# Fix permissions
RUN chown -R odoo:odoo /mnt/extra-addons

EXPOSE 8069
