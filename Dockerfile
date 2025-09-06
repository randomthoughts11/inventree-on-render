# Use official InvenTree image
FROM inventree/inventree:latest

# Set working directory
WORKDIR /home/inventree

# Expose web port
EXPOSE 8000

# Start InvenTree
CMD ["gunicorn", "-b", "0.0.0.0:8000", "InvenTree.wsgi"]
