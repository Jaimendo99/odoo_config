# Use the official Odoo 18 image as the base
FROM odoo:18

# Copy the list of Python dependencies into the image
COPY requirements.txt /

# Install the dependencies using pip
RUN pip install -r /requirements.txt
