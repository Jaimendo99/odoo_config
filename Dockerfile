# Start from the official Odoo 18 image
FROM odoo:18

# Copy the list of Python dependencies into the image
COPY requirements.txt /

# Install the dependencies using pip, overriding the external environment protection
RUN pip install --break-system-packages -r /requirements.txt
