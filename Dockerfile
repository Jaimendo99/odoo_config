# Start from the official Odoo 18 image
FROM odoo:18

# Copy the list of Python dependencies into the image
COPY requirements.txt /

# Switch to the root user to install system-wide dependencies
USER root

# Install the dependencies using pip, which will now install them globally
RUN pip install --break-system-packages -r /requirements.txt

# Switch back to the non-root odoo user for security
USER odoo
