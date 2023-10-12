FROM wordpress:latest

# Set environment variables
ARG APACHE_DOCUMENT_ROOT=/var/www/html

# Set work directory
WORKDIR ${APACHE_DOCUMENT_ROOT}

# Copy your PHP files and WordPress source code
COPY . ${APACHE_DOCUMENT_ROOT}

# Run any necessary commands
RUN chmod -R 755 wp-content

# Expose necessary ports
EXPOSE 80

# Define the entry point and default command
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
